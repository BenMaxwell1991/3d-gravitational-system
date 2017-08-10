#ifndef VERLET_H_INCLUDED
#define VERLET_H_INCLUDED
#include "config.h"
#include "data.h"
#include "debug.h"

int calcAcceleration(Object body[], int body_num, int a);

int calcPosition(Object body[], int body_num, double time_interval);

int calcVelocity(Object body[], int body_num, double time_interval);

int calcEnergy(Object body[], int body_num, double *energy, int a);

int verletGrav(Object body[], Config *config, int body_num, double energy[]);


#endif // VERLET_H_INCLUDED
