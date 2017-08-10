#ifndef CONFIG_H_INCLUDED
#define CONFIG_H_INCLUDED

typedef struct config
{
    double time_interval, duration;
    int inertial_frame, gnuplotting, data_resolution, image_resolution;
} Config;

int getConfig(int argc, char*argv[], Config *config);

int configToString(Config *config);

int newConfig(Config **config);

int freeConfig(Config **config);

#endif // CONFIG_H_INCLUDED
