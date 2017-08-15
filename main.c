#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <dirent.h>
#include <errno.h>
#include <jansson.h>

#include "config.h"
#include "data.h"
#include "verlet.h"
#include "debug.h"
#include "jsonUtils.h"

#define DELTA 1E6




int main(int argc, char*argv[])
{
    int rc = 0, body_num = 0;
    double energy[2];

    Config *config;
    Object *bodies = NULL;

    rc = newConfig(&config);
    if(rc == 0){rc = getConfig(argc, argv, config);}
    if(rc == 0){rc = configToString(config);}

    if(rc == 0){rc = readJsonFile(&bodies, &body_num);}

    if(config->inertial_frame == 0){rc = enterIntertialFrame(bodies, body_num);}

    printf("Press ENTER key to begin simulation\n");
    getchar();

    rc = verletGrav(bodies, config, body_num, energy);

    if(config->gnuplotting == 0)
    {
        printf("\nGnuplot set as TRUE in config, press ENTER key to continue\n");
        getchar();
        rc = plotData(bodies, body_num, config);
    }

    if(bodies != NULL) free(bodies);
    rc = freeConfig(&config);
    return rc;
}
