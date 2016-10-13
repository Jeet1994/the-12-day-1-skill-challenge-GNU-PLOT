reset
set palette rgbformulae 33, 13, 10
set cbrange [-0.3:1]
a=-0.1
b=0.13
set multiplot
unset ztics
unset xtics
unset ytics
set size 1.1, 0.5
set samples 100,100
set isosamples 100, 100
set origin 0,a
set border 0
unset colorbox
unset key
set view 55,30
set xlabel 'x'
set ylabel 'y'
sp besj0(x*x+y*y) w pm3d at b
unset xlabel
unset ylabel
set origin 0,a+b
sp besj0(x*x/1.2+y*y/1.2)/1.2 w pm3d at b
set origin 0,a+2*b
sp besj0(x*x/1.4+y*y/1.4)/1.4 w pm3d at b
set origin 0,a+3*b
sp besj0(x*x/1.65+y*y/1.65)/1.65 w pm3d at b
set origin 0,a+4*b
sp besj0(x*x/1.95+y*y/1.95)/1.95 w pm3d at b
set origin 0,a+5*b
set arrow 1 from screen 0.1, 0.1 to screen 0.1, 0.8
set label 1 "time" at screen 0.08, 0.45 centre rotate by 90
sp besj0(x*x/2.2+y*y/2.2)/2.2 w pm3d at b
unset multiplot