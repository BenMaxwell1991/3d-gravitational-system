# Gnuplot script file for plotting data in file "output.dat"
# This file is called   output.p
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set ztic auto                          # set ztics automatically
set xlabel "X Displacement(m)"
set ylabel "Y Displacement(m)"
set key right
set zeroaxis
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
pause -1
