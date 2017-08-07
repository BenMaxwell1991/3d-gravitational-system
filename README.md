# 3d-gravitational-system

Using the verlet technique to model the effect of gravity on an N-bodied system.

*Graphic output requires gnuplot to be installed.


## input.txt

This file includes data from NASA of our solar system for the initial conditions.

Format: name   mass(kg)   coordinate(x,y,z)   velocity(x,y,z)


## Output.dat

During runtime, the coordinate for each body is periodically saved to the output.dat file

Format: body_1_cooridinate(x,y,z)   body_2_cooridinate(x,y,z)...   body_n_cooridinate(x,y,z)


Attempting to plot using gnuplot will use the following path directory (Windows):

    C:\\Program Files (x86)\\gnuplot\\bin\\gnuplot.exe\