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

int extractJsonObjectFromJsonObject(json_t * json, char * name, json_t ** field)
{
	int rc = 0;
    if (json == NULL) {
        rc = 1;
        *field = NULL;
        printf("%s was not found\n", name);
    }
    else if (json_is_object(json)) {
        *field = json;
    }
    else {
    	rc = 2;
        printf("%s is not a JSONObject: type = %d\n", name, json_typeof(json));
    }
    return rc;
}

int extractJsonArrayFromJsonObject(json_t * json, char * name, json_t ** field)
{
	int rc = 0;
    if (json == NULL) {
        rc = 1;
        printf("%s was not found\n", name);
    }
    else if (json_is_array(json)) {
        *field = json;
    }
    else {
    	rc = 2;
        printf("%s is not a JSONArray: type = %d\n", name, json_typeof(json));
    }
    return rc;
}

int extractStringFromJsonObject(json_t * json, char * name, char * field, size_t sizeoffield) {
	int rc = 0;
    if (json == NULL) {
        rc = 1;
        memset(field, 0, sizeoffield);
        printf("%s was not found\n", name);
    }
    else if (json_is_string(json)) {
        char *value = (char*) json_string_value(json);
        if (strlen(value) + 1 > sizeoffield) {
        	rc = 2;
            printf("The string '%s' is too large for the buffer: strlen = %d, sizeoffield = %d\n", name, (int) strlen(value), (int) sizeoffield);
        }
        else {
            strncpy(field, value, sizeoffield);
        }
    }
    else {
    	rc = 3;
        printf("%s is not a String: type = %d\n", name, json_typeof(json));
    }
    return rc;
}

int extractDoubleFromJsonObject(json_t * json, char * name, double * field) {
	int rc = 0;
    if (json == NULL) {
        rc = 1;
        *field = 0;
        printf("%s was not found", name);
    }
    else if (json_is_real(json)) {
        double value = (double) json_real_value(json);
        *field = value;
    }
    else {
    	rc = 2;
        printf("%s is not a real number: type = %d", name, json_typeof(json));
    }
    return rc;
}

int extractDoubleFromJsonArray(json_t * json, int i, double * field) {
	int rc = 0;
    if (json == NULL) {
        rc = 1;
        *field = 0;
        printf("Json array element %d could not be found\n", i);
    }
    else if (json_is_real(json)) {
        double value = (double) json_real_value(json);
        *field = value;
    }
    else {
    	rc = 2;
        printf("Json not of type REAL. type = %d\n", json_typeof(json));
    }
    return rc;
}





int getJsonObjectFromJsonObject(json_t * parent, char * fieldname, json_t ** value)
{
	json_t * json = json_object_get(parent, fieldname);
    return extractJsonObjectFromJsonObject(json, fieldname, value);
}

int getJsonObjectFromJsonArray(char * name, json_t * array, size_t index, json_t ** value)
{
    json_t * json;
    char description[128];
    snprintf(description, sizeof(description), "%s[%d]", name, (int) index);

	json = json_array_get(array, index);
    return extractJsonObjectFromJsonObject(json, description, value);
}

int getJsonArrayFromJsonObject(json_t * parent, char * fieldname, json_t ** value)
{
	json_t * json = json_object_get(parent, fieldname);
    return extractJsonArrayFromJsonObject(json, fieldname, value);
}

int getStringFromJsonObject(json_t * parent, char * fieldname, char * value, size_t size)
{
	json_t * json = json_object_get(parent, fieldname);
    return extractStringFromJsonObject(json, fieldname, value, size);
}

int getDoubleFromJsonObject(json_t * parent, char * fieldname, double * value)
{
	json_t * json = json_object_get(parent, fieldname);
    return extractDoubleFromJsonObject(json, fieldname, value);
}

int getDoubleFromJsonArray(json_t * array, int index, double * value)
{
	json_t * json = json_array_get(array, index);
    return extractDoubleFromJsonArray(json, index, value);
}
