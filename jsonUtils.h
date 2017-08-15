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

int getJsonObjectFromJsonObject(json_t * parent, char * fieldname, json_t ** value);

int getJsonObjectFromJsonArray(char * name, json_t * array, size_t index, json_t ** value);

int getJsonArrayFromJsonObject(json_t * parent, char * fieldname, json_t ** value);

int getStringFromJsonObject(json_t * parent, char * fieldname, char * value, size_t size);

int getDoubleFromJsonObject(json_t * json, char * name, double * field);

int getDoubleFromJsonArray(json_t * parent, int i, double * value);
