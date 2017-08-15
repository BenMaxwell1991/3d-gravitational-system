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

int longDoubleHandler(int argc, int i, char *argv[], char *paramShort, char *paramLong, double *value)
{
    int rc = 0;
    char *endptr;
    char* arg = argv[i];

    if((strcmp(arg, paramShort) == 0) || (strcmp(arg, paramLong) == 0))
        {
            if(i == argc)
            {
                printf("Please specify a %s\n", paramLong);
                rc = 1;

            }
            else if(strtod(argv[i+1], &endptr) != 0)
            {
                *value = strtod(argv[i+1], &endptr);
            }
            else
            {
                printf("Invalid %s input. Endpointer: %s\n", paramLong, endptr);
                rc = 2;
            }
        }
    return rc;
}


int getConfig(int argc, char*argv[], Config *config)
{
    int rc = 0, i;

    for(i = 0; i < argc; i++)
    {
        char* arg = argv[i];

        printf("Arg[%d] = %s\n", i, arg);

        rc = longDoubleHandler(argc, i, argv, "-d", "--duration", &config->duration);

        rc = longDoubleHandler(argc, i, argv, "-ti", "--timeinterval", &config->time_interval);

        if((strcmp(arg, "-if") == 0) || (strcmp(arg, "--inertialframe") == 0))
        {
            if(i == argc)
            {
                printf("Please specify inertial frame parameter\n");
                rc = 1;

            }
            else if((atoi(argv[i+1]) == 0) || (atoi(argv[i+1]) == 1))
            {
                config->inertial_frame = atoi(argv[i+1]);
            }
            else
            {
                printf("Invalid inertial frame parameter (1 = yes, 0 = no).\n");
                rc = 2;
            }
        }

        if((strcmp(arg, "-gp") == 0) || (strcmp(arg, "--gnuplot") == 0))
        {
            if(i == argc)
            {
                printf("Please specify gnuplot parameter\n");
                rc = 1;

            }
            else if((atoi(argv[i+1]) == 0) || (atoi(argv[i+1]) == 1))
            {
                config->gnuplotting = atoi(argv[i+1]);
            }
            else
            {
                printf("Invalid gnuplot parameter (1 = yes, 0 = no).\n");
                rc = 2;
            }
        }

        if((strcmp(arg, "-dr") == 0) || (strcmp(arg, "--datares") == 0))
        {
            if(i == argc)
            {
                printf("Please specify data resolution parameter\n");
                rc = 1;

            }
            else if(atoi(argv[i+1]) > 0)
            {
                config->data_resolution = atoi(argv[i+1]);
            }
            else
            {
                printf("Invalid data resolution parameter (Correct format: positive integer).\n");
                rc = 2;
            }
        }

        if((strcmp(arg, "-ir") == 0) || (strcmp(arg, "--imageres") == 0))
        {
            if(i == argc)
            {
                printf("Please specify image resolution parameter\n");
                rc = 1;

            }
            else if(atoi(argv[i+1]) > 0)
            {
                config->image_resolution = atoi(argv[i+1]);
            }
            else
            {
                printf("Invalid image resolution parameter (Correct format: positive integer).\n");
                rc = 2;
            }
        }

    }

    printf("\n");

    return rc;
}

int configToString(Config *config)
{
    int rc = 0;

    printf("Config Duration (Seconds): %lf\n", config->duration);
    printf("Config Time Interval(Seconds): %lf\n", config->time_interval);
    if(config->inertial_frame == 0){printf("Config Enter Inertial Frame: True\n");}
    if(config->inertial_frame != 0){printf("Config Enter Inertial Frame: False\n");}
    printf("Config Data Resolution (Number of data points): %d\n", config->data_resolution);
    printf("Config Image Resolution (Number of .png output files): %d\n", config->image_resolution);
    if(config->gnuplotting == 0){printf("Config Gnuplot: True\n");}
    if(config->gnuplotting == 0){printf("Config Gnuplot: True\n");}
    return rc;
}

int newConfig(Config **config)
{
    int rc = 0;

    *config = malloc(sizeof(Config));
    memset(*config, 0, sizeof(Config));


    return rc;
}

int freeConfig(Config **config)
{
    int rc = 0;

    free(*config);
    *config = NULL;

    return rc;
}
