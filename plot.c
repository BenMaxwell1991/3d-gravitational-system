#include <stdio.h>
#include <stdlib.h>
#define DELTA 1E6


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
        //fprintf(fp, "set xr [-2500000000000:2500000000000]\n");
        //fprintf(fp, "set yr [-2500000000000:2500000000000]\n");
        fprintf(fp, "splot ");

        for(i = 0; i < body_num; i++)                                              //Cycle through data as x1, y2, z1, x2, y2, z2.....
        {                                                                          //based on the number of bodies in system and plot
                                                                                   //joining up points with lines.
            fprintf(fp, " \"output.dat\" using %d:%d:%d title '%s' with lines , ", 3*i+1, 3*i+2, 3*i+3, body[i].body_name);
        }

        fprintf(fp, "\npause -1\n");

    }
    fclose(fp);

    /* Call gnuplot to use the above script file */
    p += sprintf(p, "cmd /K \"C:\\Program Files (x86)\\gnuplot\\bin\\gnuplot.exe\"  output.gp"); //IMPORTANT!!! THIS CALLS GNUPLOT WHEN
                                                                                                 //INSTALLED ON WINDOWS, IF GNUPLOT CANNOT BE
    printf("command: [%s]\n", command);                                                          //CALLED, CHANGE THIS PATH APPROPRIATELY
    rc = system(command);
    printf("command returned %d\n", rc);
};

int main()
{

    return 0;
}
