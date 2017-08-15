#ifndef DATA_H_INCLUDED
#define DATA_H_INCLUDED
#include <jansson.h>
#include "config.h"

typedef struct object                           //Each body in the system is to be stored as a structure
{
    char body_name[20];
    double mass, position[3], velocity[3], acceleration[2][3];
} Object;

int plotData(Object *body, int body_num, Config *config);

int printBody(Object body);

int readJsonFile(Object **objectPtr, int *body_num);

int enterIntertialFrame(Object *bodies, int body_num);




#endif // DATA_H_INCLUDED
