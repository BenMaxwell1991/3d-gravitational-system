# 3d-gravitational-system

Using the verlet technique to model the effect of gravity on an N-bodied system. As an example, the input file "solar_system.json" is used, this includes all the planets 
up to Jupiter, as well as the earths moon and Halleys Comet.

* View **[Solar_System.gif](https://github.com/BenMaxwell1991/3d-gravitational-system/blob/master/Solar_System.gif)** to see an example.

* Graphic output requires gnuplot to be installed in the standard windows path.

## compiling

* Reading json input file requires linking to the jansson library. Download Link: **[jansson](http://www.digip.org/jansson/releases/)**

* For graphical output gnuplot is used, please install in standard windows path. Download Link **[gnuplot](https://sourceforge.net/projects/gnuplot/files/latest/download)**

* Set program arguments before running. see section: "program arguments"


## solar_system.json

This file includes data from NASA of our solar system for the initial conditions of each object in JSon format.

To alter the simulation, either modify this file accordingly, or alter path in:

	'data.c ---> readJsonFile ---> fopen("solar_system.json")'

New path must point to another input file of the same JSon format.


## program arguments

-d --duration "double" sets duration of simulation in seconds.
-ti --timeinterval "double" sets time interval between each simulation iteration in seconds, lower value hinders performance but increases accuracy.
-if --intertialframe "boolean" (1 = yes) (0 = no) if true, centers simulation on it's common center of mass and defines this as stationary.
-gp --gnuplot "boolean" (1 = yes) (0 = no) if true, once output.dat is written, it will then be plotted using gnuplot (make sure this is installed).
-dr --datares "integer" defines the number of data points for each object to be saved to output.dat, decreases performance but creates smoother plot.
-ir --imageres "integer" defines the number of output .png files to be created by gnuplot during plotting.


## output.dat

During runtime, the coordinate for each body is periodically saved to the output.dat file

* Format:     body_1_cooridinate(x,y,z)     body_2_cooridinate(x,y,z)...     body_n_cooridinate(x,y,z)


Attempting to plot with gnuplot will use the following path (Windows) to find the application:

    C:\\Program Files (x86)\\gnuplot\\bin\\gnuplot.exe\