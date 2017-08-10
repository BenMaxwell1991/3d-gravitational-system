#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <dirent.h>
#include <errno.h>

#include "config.h"
#include "data.h"
#include "verlet.h"
#include "debug.h"

#define DELTA 1E6




int main(int argc, char*argv[])
{
    FILE *input = fopen("input.txt", "r");
    int rc = 0, body_num;

    rc = countFile(input, &body_num);

    Object body[body_num];

    double energy[2];
    Config *config;

    rc = newConfig(&config);
    if(rc == 0){rc = getConfig(argc, argv, config);}
    if(rc == 0){rc = configToString(config);}
    rc = readFile(body, body_num, input);

    if(config->inertial_frame == 0){rc = enterIntertialFrame(body, body_num);}

    printf("Press ENTER key to begin simulation\n");
    getchar();

    rc = verletGrav(body, config, body_num, energy);

    if(config->gnuplotting == 0)
    {
        printf("\nGnuplot set as TRUE in config, press ENTER key to continue\n");
        getchar();
        rc = plotData(body, body_num, config);
    }

    rc = freeConfig(&config);
    return rc;
}
