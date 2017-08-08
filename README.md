# 3d-gravitational-system

Using the verlet technique to model the effect of gravity on an N-bodied system.

* View **[Solar_System.gif](https://github.com/BenMaxwell1991/3d-gravitational-system/blob/master/Solar_System.gif)** to see an example.

* Graphic output requires gnuplot to be installed in the standard windows path.


## input.txt

This file includes data from NASA of our solar system for the initial conditions.

* Format:     name     mass(kg)     coordinate(x,y,z)     velocity(x,y,z)


## output.dat

During runtime, the coordinate for each body is periodically saved to the output.dat file

* Format:     body_1_cooridinate(x,y,z)     body_2_cooridinate(x,y,z)...     body_n_cooridinate(x,y,z)


Attempting to plot with gnuplot will use the following path (Windows) to find the application:

    C:\\Program Files (x86)\\gnuplot\\bin\\gnuplot.exe\