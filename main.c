#include <stdio.h>
#include <stdlib.h>
#define DELTA 1E6


struct object                           //Each body in the system is to be stored as a structure
{
    char body_name[20];
    double mass, position[3], velocity[3], acceleration[2][3];
};


void printbody(struct object body)      //Prints out each value currently attributed to the body in question
{
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
}


int countfile(input)                     //Counts the number of lines in the
{                                        //input file as new lines + 1
    int lines = 1, ch;

    while (EOF != (ch = getc(input)))
    {
        if ('\n' == ch)
            ++lines;
    }
    return lines;
}


void readfile(struct object body[], int body_num, FILE* input)
{
    int i;

    rewind(input);                          //Goes back to the start of the input
                                            //file before we read in the values

    for(i = 0; i < body_num; i++)           //Reads the input file, setting the
    {                                       //variables for each body in the system

        fscanf(input, "%s %lf %lf %lf %lf %lf %lf %lf",
              &body[i].body_name,
              &body[i].mass,
              &body[i].position[0], &body[i].position[1], &body[i].position[2],
              &body[i].velocity[0], &body[i].velocity[1], &body[i].velocity[2]);
        body[i].acceleration[0][0] = 0;
        body[i].acceleration[0][1] = 0;
        body[i].acceleration[0][2] = 0;
        body[i].acceleration[1][0] = 0;
        body[i].acceleration[1][1] = 0;
        body[i].acceleration[1][2] = 0;

        printbody(body[i]);             //Print values to check if they are sensible
    }
};

double calc_energy(struct object body[], int body_num)
{
    int i, j, k;
    double energy = 0, R, G = 6.67408E-11;

    for(i = 0; i < body_num; i++)
    {
        for(j = 0 ; j < body_num; j++)
        {
            if(i != j)
            {
                R = sqrt(pow((body[i].position[0] - body[j].position[0]), 2) +  //Calculates the distance between two bodies
                         pow((body[i].position[1] - body[j].position[1]), 2) +
                         pow((body[i].position[2] - body[j].position[2]), 2));

                    energy -= ((G*body[i].mass*body[j].mass)/ (2*R));               //Calculates P.E. contribution as -G(M1)(M2)/R
            }
        }
    }

    for(i = 0; i < body_num; i++)
    {
        energy += (pow((body[i].velocity[0]), 2) + pow((body[i].velocity[1]), 2) + pow((body[i].velocity[2]), 2)) * (body[i].mass/2);
    }
    return energy;
}
void calc_acceleration(struct object body[], int body_num, int a)   //Recalculates the acceleration of every
{                                                                   //body in the system based on their new positions.
    double R, G = 6.67408E-11;
    int i, j, k;

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
                    return 1;
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
};


void calc_position(struct object body[], int body_num, double time_interval) //Calculates the new position of each body
{                                                                            //using the verlet technique, which takes into account
    int i, j;                                                                //both velocity and acceleration.

    for(i = 0; i < body_num; i++)
    {
        for(j = 0; j < 3; j++)
        {
            body[i].position[j] = body[i].position[j] + time_interval *
                                 (body[i].velocity[j] + time_interval * body[i].acceleration[0][j] / 2);
        }
    }



}


void calc_velocity(struct object body[], int body_num, double time_interval) //Updates the velocity of each body, using the
{                                                                            //verlet technique.
    int i, j;

    for(i = 0; i < body_num; i++)
    {
        for(j = 0; j < 3; j++)
        {
            body[i].velocity[j] = body[i].velocity[j] + time_interval *
                                ((body[i].acceleration[0][j] + body[i].acceleration[1][j]) / 2);
        }
    }
}


void enter_inertial_frame(struct object body[], int body_num)
{
    int i, j;
    double total_mass, velocity_com[3], center_of_mass[3];

    total_mass = 0;
    velocity_com[0] = 0;
    velocity_com[1] = 0;
    velocity_com[2] = 0;
    center_of_mass[0] = 0;
    center_of_mass[1] = 0;
    center_of_mass[2] = 0;

    for(i = 0; i < body_num; i++)
    {
        total_mass += body[i].mass;
    }

    for(j = 0; j < 3; j++)
    {
        for(i = 0; i < body_num; i++)
        {
            center_of_mass[j] += body[i].mass * body[i].position[j];
            velocity_com[j] += body[i].mass * body[i].velocity[j];
        }

        center_of_mass[j] = center_of_mass[j] / total_mass;
        velocity_com[j] = velocity_com[j] / total_mass;

        for(i = 0; i < body_num; i++)
        {
            body[i].position[j] -= center_of_mass[j];
            body[i].velocity[j] -= velocity_com[j];
        }
    }
    printf("\nIntertial Frame has been entered\n\n");
    /*printf("Total Mass = %e\n"
           "X velocity_com = %e\n"
           "Y velocity_com = %e\n"
           "Z velocity_com = %e\n"
           "X center of mass = %lf\n"
           "Y center of mass = %lf\n"
           "Z center of mass = %lf\n", total_mass,
           velocity_com[0], velocity_com[1], velocity_com[2],
           center_of_mass[0], center_of_mass[1], center_of_mass[2]);*/
}

void plotdata(struct object body[], int body_num)
{
    char command[4096];
    char *p = command;
    FILE *fp;
    int i, rc;


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
        fprintf(fp, "set xr [-2500000000000:2500000000000]\n");
        fprintf(fp, "set yr [-2500000000000:2500000000000]\n");
        fprintf(fp, "splot ");

        for(i = 0; i < body_num; i++)                                              //Cycle through data as x1, y2, z1, x2, y2, z2.....
        {                                                                          //based on the number of bodies in system and plot
                                                                                   //joining up points with lines.
            fprintf(fp, " \"output.dat\" using %d:%d:%d title '%s' with lines , ", 3*i+1, 3*i+2, 3*i+3, body[i].body_name);
        }

        fprintf(fp, "\npause -1\n");
        fclose(fp);
    }

    /* Call gnuplot to use the above script file */
    p += sprintf(p, "cmd /K \"C:\\Program Files (x86)\\gnuplot\\bin\\gnuplot.exe\"  output.gp"); //IMPORTANT!!! THIS CALLS GNUPLOT WHEN
                                                                                                 //INSTALLED ON WINDOWS, IF GNUPLOT CANNOT BE
    printf("command: [%s]\n", command);                                                          //CALLED, CHANGE THIS PATH APPROPRIATELY
    rc = system(command);
    printf("command returned %d\n", rc);
};

int main()
{
    FILE* input = fopen("input.txt", "r");
    int i, j, k = 0, body_num = countfile(input);
    struct object body[body_num];
    double energy[2], duration, time_interval, time_stamp = 0;

    readfile(body, body_num, input);            //Uses input file to define each body.
    fclose(input);

    while(j != 1 && j != 2)
    {
        printf("Would you like to enter the inertial frame of reference?\n\n"       //The user may choose whether to enter the inertial frame
               "Enter 1 for yes or 2 for no.\n\n");                                 //if viewing a stable system, such as the solar system, this
        scanf("%d", &j);                                                            //is strongly advised.
        if(j == 1)
        {
            enter_inertial_frame(body, body_num);
        }
    }

    energy[0] = calc_energy(body, body_num);

    printf("Please enter a computational time interval (suggestion ~ 1,000):\n\n");  //Allows user to select dt, the smaller this value
    scanf("%lf", &time_interval);                             //the more accurate the simulation will be

    printf("\nPlease enter the simulation duration (suggestion ~ 500,000,000):\n\n");   //Allows user to select the time period over which
    scanf("%lf", &duration);                             //the simulation will run.

    FILE* output = fopen("output.dat", "w");             //Data will be saved to "output"

    for(time_stamp = 0; time_stamp < duration; time_stamp += time_interval)
    {
        calc_acceleration(body, body_num, 0);                   //Combined, these calculations simulate the effect
                                                                //of gravity over a small interval of time
        calc_position(body, body_num, time_interval);           //using the verlet technique.

        calc_acceleration(body, body_num, 1);

        calc_velocity(body, body_num, time_interval);

        if(k == 20)
        {
            for(i = 0; i < body_num; i++)
            {
                fprintf(output, "%lf\t %lf\t %lf\t", body[i].position[0], body[i].position[1], body[i].position[2]);
            }
            fprintf(output, "\n");

            k = 0;
        }
        else
        {
            k += 1;
        }
    }

    energy[1] = calc_energy(body, body_num);


    printf("\nSimulation Complete! Data has been saved to 'output.dat'\n");
    printf("\nInitial energy = %e.\nFinal energy = %e.\nEfficiency of simulation = %lf%% \n", energy[0], energy[1], 100*(energy[1]/energy[0]));

    j = 0;
        while(j != 1 && j != 2)                                               //Allows user to choose whether to use gnuplot
    {                                                                         //to view the data graphically
        printf("\nDo you wish to plot your output using gnuplot?\n\n"
               "Enter 1 for yes or 2 for no.\n\n");
        scanf("%d", &j);
        if(j == 1)
        {
            plotdata(body, body_num);
        }
    }


    return 0;
}
