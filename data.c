#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <dirent.h>
#include <errno.h>
#include <string.h>
#include <jansson.h>

#include "data.h"
#include "config.h"
#include "verlet.h"
#include "jsonUtils.h"


int plotData(Object *body, int body_num, Config *config)
{
    char command[409600];
    char *p = command;
    FILE *fp;
    DIR *dir;
    int i, j, rc = 0, pltpoint;

    pltpoint = config->data_resolution/(config->image_resolution-1);

    fp = fopen("output.gp", "w");               //This will be the gnuplot script file

    if (fp == NULL) {
        printf("Could not open the script file for writing\n");  //Check to make sure file has been opened
        exit(2);
    }
    else
    {
        fprintf(fp, "# Gnuplot script file for plotting data in file \"output.dat\"\n");        //Write these commands to script file
        fprintf(fp, "# This file is called   output.p\n");                                      //these tell gnuplot what to do.
        fprintf(fp, "set   autoscale                        # scale axes automatically\n");
        fprintf(fp, "unset log                              # remove any log-scaling\n");
        fprintf(fp, "unset label                            # remove any previous labels\n");
        fprintf(fp, "set xtic auto                          # set xtics automatically\n");
        fprintf(fp, "set ytic auto                          # set ytics automatically\n");
        fprintf(fp, "set ztic auto                          # set ztics automatically\n");
        fprintf(fp, "set xlabel \"X Displacement(m)\"\n");
        fprintf(fp, "set ylabel \"Y Displacement(m)\"\n");
        fprintf(fp, "set key right\n");
        fprintf(fp, "set zeroaxis\n");
        fprintf(fp, "set xrange [-2.5E12:1E12]\n");
        fprintf(fp, "set yrange [-1.75E12:1.75E12]\n");
        fprintf(fp, "set zrange [-1.5E11:1.5E11]\n");

        fprintf(fp, "set terminal pngcairo size 1680,1250 enhanced font \"Verdana,15\n");

        dir = opendir("animation");
        if (dir)
        {
            closedir(dir);
        }
        else if (ENOENT == errno)
        {
            /* Directory does not exist. */
            fprintf(fp, "system('mkdir -p animation')\n");
        }
        else
        {
            exit(1);
        }


        for(j = 0; j < config->image_resolution; j++)
        {
            fprintf(fp, "\nset output 'animation/output%d.png'\n", j);
            fprintf(fp, "set view %lf, %lf \n", 80 - 15*(1+cos(2*M_PI*j/config->image_resolution)), 5 + 15*(1+sin(2*M_PI*j/config->image_resolution)));
            fprintf(fp, "splot ");

            for(i = 0; i < body_num; i++)                                              //Cycle through data as x1, y2, z1, x2, y2, z2.....
            {                                                                          //based on the number of bodies in system and plot
                                                                                       //joining up points with lines.
                fprintf(fp, " \"output.dat\" using %d:%d:%d every ::::%d title '%s' w l ls %d, ", 3*i+1, 3*i+2, 3*i+3, j*pltpoint, body[i].body_name, i+1);
                fprintf(fp, "\"output.dat\" using %d:%d:%d every ::%d::%d notitle with points pt 7 lc %d, ", 3*i+1, 3*i+2, 3*i+3, j*pltpoint, j*pltpoint, i+1);
            }
        }


        fprintf(fp, "\npause -1\n");

    }
    fclose(fp);

    /* Call gnuplot to use the above script file */

    p += sprintf(p, "cmd /K \"C:\\Program Files (x86)\\gnuplot\\bin\\gnuplot.exe\"  output.gp"); //IMPORTANT!!! THIS CALLS GNUPLOT WHEN

    printf("Generating Animation Files...\n");                                                     //INSTALLED ON WINDOWS, IF GNUPLOT CANNOT BE
    printf("command: [%s]\n", command);                                                          //CALLED, CHANGE THIS PATH APPROPRIATELY
    rc = system(command);
    printf("command returned %d\n", rc);

    return rc;
};

int printBody(Object body)      //Prints out each value currently attributed to the body in question
{
    int rc = 0;

    printf(" Name = %s \n"
        " Mass = %ekg \n"
        " x Position = %e\n y Position = %e\n z Position = %e\n"
        " x Velocity = %lf\n y Velocity = %lf\n z Velocity = %lf\n"
        " x Acceleration1 = %lf\n y Acceleration1 = %lf\n z Acceleration1 = %lf\n"
        " x Acceleration2 = %lf\n y Acceleration2 = %lf\n z Acceleration2 = %lf\n\n",
        body.body_name,
        body.mass,
        body.position[0], body.position[1], body.position[2],
        body.velocity[0], body.velocity[1], body.velocity[2],
        body.acceleration[0][0], body.acceleration[0][1], body.acceleration[0][2],
        body.acceleration[1][0], body.acceleration[1][1], body.acceleration[1][2]);

    return rc;
}

int readJsonFile(Object **objectPtr, int *body_num)
{
    int rc = 0, i, j;
    FILE *input = fopen("solar_system.json", "r");
    size_t flags = 0;
    json_error_t error;

    json_t *input_json = json_loadf(input, flags, &error);
    json_t *solar_system;
    json_t *objectJson;
    json_t *position;
    json_t *velocity;

    if(input_json == NULL)
    {
        printf("Json file could not be read\n");
        rc = 1;
        exit(rc);
    }

    rc = getJsonArrayFromJsonObject(input_json, "solar_system", &solar_system);
    if(rc == 0)
    {
        *body_num = json_array_size(solar_system);
        printf("\nNumber of bodies = %d\n\n", *body_num);
        Object *bodies = *objectPtr = calloc(*body_num, sizeof(Object));

        for(i = 0; i < *body_num; i++)
        {
            Object *body = &bodies[i];
            rc = getJsonObjectFromJsonArray("solar_system", solar_system, i, &objectJson);
            if(rc == 0) rc = getStringFromJsonObject(objectJson, "name", body->body_name, sizeof(body->body_name));
            if(rc == 0) rc = getDoubleFromJsonObject(objectJson, "mass", &body->mass);

            if(rc == 0) rc = getJsonArrayFromJsonObject(objectJson, "position", &position);
            if(rc == 0) rc = getJsonArrayFromJsonObject(objectJson, "velocity", &velocity);
            for(j = 0; j < 3; j++)
            {

                if(rc == 0) rc = getDoubleFromJsonArray(position, j, &body->position[j]);
                if(rc == 0) rc = getDoubleFromJsonArray(velocity, j, &body->velocity[j]);
            }


            if(rc == 0)
            {
                //printBody(bodies[i]);
                //printf("%s\n", body->body_name);
                //printf("%f\n", body->mass);
            }
        }
    }


    fclose(input);
    return rc;
}

int enterIntertialFrame(Object *bodies, int body_num)
{
    int rc = 0, i, j;
    double total_mass, momentum_com[3], center_of_mass[3];



    total_mass = 0;
    momentum_com[0] = 0;
    momentum_com[1] = 0;
    momentum_com[2] = 0;
    center_of_mass[0] = 0;
    center_of_mass[1] = 0;
    center_of_mass[2] = 0;

    for(i = 0; i < body_num; i++)
    {
        total_mass += bodies[i].mass;
    }

    for(j = 0; j < 3; j++)
    {
        for(i = 0; i < body_num; i++)
        {
            center_of_mass[j] += bodies[i].mass * bodies[i].position[j];
            momentum_com[j] += bodies[i].mass * bodies[i].velocity[j];
        }

        center_of_mass[j] = center_of_mass[j] / total_mass;
        momentum_com[j] = momentum_com[j] / total_mass;

        for(i = 0; i < body_num; i++)
        {
            bodies[i].position[j] -= center_of_mass[j];
            bodies[i].velocity[j] -= momentum_com[j];
        }
    }
    printf("Intertial Frame has been entered\n\n");
    return rc;
}

