reset
a1=0.1
a2=0.2
a3=0.15
a4=0.15
a5=0.3
a6=0.1

b=0.4
s=0.2
B=0.5

set view 30, 20
set parametric
unset border
unset tics
unset key
set ticslevel 0
unset colorbox
set urange [0:1]
set vrange [0:1]
set xrange [-2:2]
set yrange [-2:2]
set zrange [0:3]
set multiplot

# First, we draw the 'box' around the plotting volume
set palette model RGB functions 0.9, 0.9,0.95
splot -2+4*u, -2+4*v, 0 w pm3d

set palette model RGB functions 0.8, 0.8, 0.85

set urange [a1:1]
splot cos(u*2*pi)*v, sin(u*2*pi)*v, 0 w pm3d

set urange [0:a1]
splot cos(a1*pi)*b+cos(u*2*pi)*v, sin(a1*pi)*b+sin(u*2*pi)*v, 0 w pm3d

set palette model RGB functions 1, 0, 0
set urange [0:a1]
splot cos(a1*pi)*b+cos(u*2*pi)*v, sin(a1*pi)*b+sin(u*2*pi)*v, s w pm3d

set palette model RGB functions 0, 0.5, 0
set urange [a1:a1+a2]
splot cos(u*2*pi)*v, sin(u*2*pi)*v, s w pm3d

set palette model RGB functions 0, 0, 0.8
set urange [a1+a2:a1+a2+a3]
splot cos(u*2*pi)*v, sin(u*2*pi)*v, s w pm3d

set palette model RGB functions 0.8, 0, 0.8
set urange [a1+a2+a3:a1+a2+a3+a4]
splot cos(u*2*pi)*v, sin(u*2*pi)*v, s w pm3d

set palette model RGB functions 0.8, 0.8, 0
set urange [a1+a2+a3+a4:a1+a2+a3+a4+a5]
splot cos(u*2*pi)*v, sin(u*2*pi)*v, s w pm3d

set palette model RGB functions 0, 0.8, 0.8
set urange [a1+a2+a3+a4+a5:a1+a2+a3+a4+a5+a6]
set label 1 '1988' at  cos(a1*pi)*B+cos(a1*pi), sin(a1*pi)*B+sin(a1*pi)
D = 2*a1+a2
set label 2 '1989' at  cos(D*pi)*B+cos(D*pi), sin(D*pi)*B+sin(D*pi)
D=D+a2+a3
set label 3 '1990' at  cos(D*pi)*B+cos(D*pi), sin(D*pi)*B+sin(D*pi)
D=D+a3+a4
set label 4 '1991' at  cos(D*pi)*B+cos(D*pi), sin(D*pi)*B+sin(D*pi)
D=D+a4+a5
set label 5 '1992' at  cos(D*pi)*B+cos(D*pi), sin(D*pi)*B+sin(D*pi)
D=D+a5+a6
set label 6 '1993' at  cos(D*pi)*B+cos(D*pi), sin(D*pi)*B+sin(D*pi)
splot cos(u*2*pi)*v, sin(u*2*pi)*v, s w pm3d
unset multiplot