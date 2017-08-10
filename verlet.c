#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <dirent.h>
#include <errno.h>
#include <string.h>

#include "data.h"
#include "config.h"
#include "verlet.h"
#include "debug.h"


#define DELTA 1E6

int calcAcceleration(Object body[], int body_num, int a)                       //Recalculates the acceleration of every
{                                                                              //body in the system based on their new positions.
    double R, G = 6.67408E-11;
    int rc, i, j, k;

    for(i = 0; i < body_num; i++)
    {
        body[i].acceleration[a][0] = 0;            //important to reset acceleration to 0
        body[i].acceleration[a][1] = 0;            //before summing the effect of gravity due to
        body[i].acceleration[a][2] = 0;            //new positions of each body.

        for(j = 0 ; j < body_num; j++)
        {


            if(i != j)
            {
                if(fabs(body[i].position[0] - body[j].position[0]) < DELTA &&   //check to make sure two objects
                   fabs(body[i].position[1] - body[j].position[1]) < DELTA &&   //don't occupy the same space
                   fabs(body[i].position[2] - body[j].position[2]) < DELTA)
                {
                    printf("Simulation failed, a collision has occurred\n");
                    exit(1);
                }
                for(k = 0; k < 3; k++)
                {
                    R = sqrt(pow((body[i].position[0] - body[j].position[0]), 2) +
                        pow((body[i].position[1] - body[j].position[1]), 2) +
                        pow((body[i].position[2] - body[j].position[2]), 2));


                    body[i].acceleration[a][k] = body[i].acceleration[a][k] +
                                               ((G*body[j].mass*(body[j].position[k] - body[i].position[k]))/
                                                pow(R, 3));
                }
            }
        }
    }
    return rc;
}

int calcPosition(Object body[], int body_num, double time_interval)            //Calculates the new position of each body
{                                                                              //using the verlet technique, which takes into account
    int rc, i, j;                                                               //both velocity and acceleration.

    for(i = 0; i < body_num; i++)
    {
        for(j = 0; j < 3; j++)
        {
            body[i].position[j] = body[i].position[j] + time_interval *
                                 (body[i].velocity[j] + time_interval * body[i].acceleration[0][j] / 2);
        }
    }


    return rc;
}

int calcVelocity(Object body[], int body_num, double time_interval)            //Updates the velocity of each body, using the
{                                                                              //verlet technique.
    int rc, i, j;

    for(i = 0; i < body_num; i++)
    {
        for(j = 0; j < 3; j++)
        {
            body[i].velocity[j] = body[i].velocity[j] + time_interval *
                                ((body[i].acceleration[0][j] + body[i].acceleration[1][j]) / 2);
        }
    }

    return rc;
}

int calcEnergy(Object body[], int body_num, double *energy, int a)
{
    int rc = 0, i, j;
    double R, G = 6.67408E-11;

    energy[a] = 0.0;

    for(i = 0; i < body_num; i++)
    {
        for(j = 0 ; j < body_num; j++)
        {
            if(i != j)
            {
                R = sqrt(pow((body[i].position[0] - body[j].position[0]), 2) +      //Calculates the distance between two bodies
                         pow((body[i].position[1] - body[j].position[1]), 2) +
                         pow((body[i].position[2] - body[j].position[2]), 2));

                    energy[a] -= ((G*body[i].mass*body[j].mass)/ (2*R));               //Calculates P.E. contribution as -G(M1)(M2)/R
            }
        }
    }

    for(i = 0; i < body_num; i++)
    {
        energy[a] += (pow((body[i].velocity[0]), 2) + pow((body[i].velocity[1]), 2) + pow((body[i].velocity[2]), 2)) * (body[i].mass/2);
    }

    return rc;
}


int verletGrav(Object body[], Config *config, int body_num, double energy[])
{
    int rc, i, k = 0;
    double time_stamp;

    FILE* output = fopen("output.dat", "w");

    if(output == NULL)
    {
        printf("Failed to open file %s\n", output);
        rc = 1;
    }
    else
    {
        printf("File Opened %s\n", output);
    }

    rc = calcEnergy(body, body_num, energy, 0);

    printf("Verlet Method: STARTING\n\n");

    for(time_stamp = 0; time_stamp < config->duration; time_stamp += config->time_interval)
    {
        rc = calcAcceleration(body, body_num, 0);                   //Combined, these calculations simulate the effect
                                                                    //of gravity over a small interval of time
        rc = calcPosition(body, body_num, config->time_interval);           //using the verlet technique.

        rc = calcAcceleration(body, body_num, 1);

        rc = calcVelocity(body, body_num, config->time_interval);

        while(time_stamp >= k*(config->duration/config->data_resolution))
        {
            for(i = 0; i < body_num; i++)
            {
                fprintf(output, "%lf\t %lf\t %lf\t", body[i].position[0], body[i].position[1], body[i].position[2]);
            }
            fprintf(output, "\n");

            printf("Computing Simulation: %.1lf%% \r", (time_stamp*100/config->duration));
            fflush(stdout);
            k++;
        }
    }

    printf("\n");

    fclose(output);

    printf("\nVerlet Method: COMPLETED\n");

    rc = calcEnergy(body, body_num, energy, 1);

    printf("Simulation Complete! Data has been saved to 'output.dat'\n\n");
    printf("Initial energy = %e.\nFinal energy = %e.\nEfficiency of simulation = %lf%% \n", energy[0], energy[1], 100*(energy[1]/energy[0]));

    return rc;
}
