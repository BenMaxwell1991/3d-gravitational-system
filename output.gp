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
set terminal pngcairo size 1600,1000 enhanced font "Verdana,15

set output 'animation/output0.png'
set view 60, 0 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output1.png'
set view 60, 1 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output2.png'
set view 60, 2 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output3.png'
set view 60, 3 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output4.png'
set view 60, 4 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output5.png'
set view 60, 5 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output6.png'
set view 60, 6 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output7.png'
set view 60, 7 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output8.png'
set view 60, 8 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output9.png'
set view 60, 9 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output10.png'
set view 60, 10 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output11.png'
set view 60, 11 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output12.png'
set view 60, 12 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output13.png'
set view 60, 13 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output14.png'
set view 60, 14 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output15.png'
set view 60, 15 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output16.png'
set view 60, 16 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output17.png'
set view 60, 17 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output18.png'
set view 60, 18 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output19.png'
set view 60, 19 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output20.png'
set view 60, 20 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output21.png'
set view 60, 21 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output22.png'
set view 60, 22 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output23.png'
set view 60, 23 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output24.png'
set view 60, 24 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output25.png'
set view 60, 25 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output26.png'
set view 60, 26 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output27.png'
set view 60, 27 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output28.png'
set view 60, 28 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output29.png'
set view 60, 29 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output30.png'
set view 60, 30 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output31.png'
set view 60, 31 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output32.png'
set view 60, 32 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output33.png'
set view 60, 33 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output34.png'
set view 60, 34 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output35.png'
set view 60, 35 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output36.png'
set view 60, 36 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output37.png'
set view 60, 37 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output38.png'
set view 60, 38 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output39.png'
set view 60, 39 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output40.png'
set view 60, 40 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output41.png'
set view 60, 41 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output42.png'
set view 60, 42 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output43.png'
set view 60, 43 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output44.png'
set view 60, 44 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output45.png'
set view 60, 45 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output46.png'
set view 60, 46 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output47.png'
set view 60, 47 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output48.png'
set view 60, 48 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output49.png'
set view 60, 49 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output50.png'
set view 60, 50 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output51.png'
set view 60, 51 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output52.png'
set view 60, 52 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output53.png'
set view 60, 53 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output54.png'
set view 60, 54 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output55.png'
set view 60, 55 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output56.png'
set view 60, 56 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output57.png'
set view 60, 57 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output58.png'
set view 60, 58 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output59.png'
set view 60, 59 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output60.png'
set view 60, 60 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output61.png'
set view 60, 61 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output62.png'
set view 60, 62 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output63.png'
set view 60, 63 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output64.png'
set view 60, 64 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output65.png'
set view 60, 65 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output66.png'
set view 60, 66 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output67.png'
set view 60, 67 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output68.png'
set view 60, 68 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output69.png'
set view 60, 69 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output70.png'
set view 60, 70 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output71.png'
set view 60, 71 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output72.png'
set view 60, 72 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output73.png'
set view 60, 73 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output74.png'
set view 60, 74 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output75.png'
set view 60, 75 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output76.png'
set view 60, 76 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output77.png'
set view 60, 77 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output78.png'
set view 60, 78 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output79.png'
set view 60, 79 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output80.png'
set view 60, 80 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output81.png'
set view 60, 81 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output82.png'
set view 60, 82 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output83.png'
set view 60, 83 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output84.png'
set view 60, 84 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output85.png'
set view 60, 85 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output86.png'
set view 60, 86 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output87.png'
set view 60, 87 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output88.png'
set view 60, 88 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output89.png'
set view 60, 89 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output90.png'
set view 60, 90 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output91.png'
set view 60, 91 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output92.png'
set view 60, 92 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output93.png'
set view 60, 93 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output94.png'
set view 60, 94 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output95.png'
set view 60, 95 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output96.png'
set view 60, 96 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output97.png'
set view 60, 97 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output98.png'
set view 60, 98 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output99.png'
set view 60, 99 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output100.png'
set view 60, 100 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output101.png'
set view 60, 101 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output102.png'
set view 60, 102 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output103.png'
set view 60, 103 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output104.png'
set view 60, 104 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output105.png'
set view 60, 105 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output106.png'
set view 60, 106 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output107.png'
set view 60, 107 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output108.png'
set view 60, 108 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output109.png'
set view 60, 109 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output110.png'
set view 60, 110 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output111.png'
set view 60, 111 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output112.png'
set view 60, 112 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output113.png'
set view 60, 113 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output114.png'
set view 60, 114 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output115.png'
set view 60, 115 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output116.png'
set view 60, 116 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output117.png'
set view 60, 117 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output118.png'
set view 60, 118 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output119.png'
set view 60, 119 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output120.png'
set view 60, 120 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output121.png'
set view 60, 121 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output122.png'
set view 60, 122 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output123.png'
set view 60, 123 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output124.png'
set view 60, 124 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output125.png'
set view 60, 125 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output126.png'
set view 60, 126 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output127.png'
set view 60, 127 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output128.png'
set view 60, 128 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output129.png'
set view 60, 129 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output130.png'
set view 60, 130 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output131.png'
set view 60, 131 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output132.png'
set view 60, 132 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output133.png'
set view 60, 133 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output134.png'
set view 60, 134 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output135.png'
set view 60, 135 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output136.png'
set view 60, 136 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output137.png'
set view 60, 137 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output138.png'
set view 60, 138 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output139.png'
set view 60, 139 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output140.png'
set view 60, 140 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output141.png'
set view 60, 141 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output142.png'
set view 60, 142 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output143.png'
set view 60, 143 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output144.png'
set view 60, 144 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output145.png'
set view 60, 145 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output146.png'
set view 60, 146 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output147.png'
set view 60, 147 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output148.png'
set view 60, 148 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output149.png'
set view 60, 149 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output150.png'
set view 60, 150 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output151.png'
set view 60, 151 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output152.png'
set view 60, 152 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output153.png'
set view 60, 153 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output154.png'
set view 60, 154 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output155.png'
set view 60, 155 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output156.png'
set view 60, 156 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output157.png'
set view 60, 157 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output158.png'
set view 60, 158 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output159.png'
set view 60, 159 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output160.png'
set view 60, 160 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output161.png'
set view 60, 161 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output162.png'
set view 60, 162 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output163.png'
set view 60, 163 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output164.png'
set view 60, 164 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output165.png'
set view 60, 165 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output166.png'
set view 60, 166 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output167.png'
set view 60, 167 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output168.png'
set view 60, 168 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output169.png'
set view 60, 169 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output170.png'
set view 60, 170 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output171.png'
set view 60, 171 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output172.png'
set view 60, 172 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output173.png'
set view 60, 173 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output174.png'
set view 60, 174 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output175.png'
set view 60, 175 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output176.png'
set view 60, 176 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output177.png'
set view 60, 177 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output178.png'
set view 60, 178 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
set output 'animation/output179.png'
set view 60, 179 
splot  "output.dat" using 1:2:3 title 'Sun' with lines ,  "output.dat" using 4:5:6 title 'Mercury' with lines ,  "output.dat" using 7:8:9 title 'Venus' with lines ,  "output.dat" using 10:11:12 title 'Earth' with lines ,  "output.dat" using 13:14:15 title 'Moon' with lines ,  "output.dat" using 16:17:18 title 'Mars' with lines ,  "output.dat" using 19:20:21 title 'Jupiter' with lines ,  "output.dat" using 22:23:24 title 'HalleyComet' with lines , 
pause -1
