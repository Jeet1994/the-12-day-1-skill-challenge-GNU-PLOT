reset
set border 0
unset key
unset colorbox
set cbrange [-0.1:2]
set isosample 10,10
set sample 100
set parametric
set ticslevel 0

a=2
b=0.5
c=-0.5
d=5.5
e=(c+d)/2.0
f=(d-c)
r=0.2

set multiplot
set urange [0:1]
set vrange [0:1]
set yrange [c:d]
set xrange [c:d]
set zrange [0:2.5]
unset xtics
unset ytics
set ztics out
set grid ztics

# First, we draw the 'box' around the plotting volume
set palette model RGB functions 0.8, 0.8,0.8
splot 10*u-0.5, c+f*v,0 w pm3d

set palette model RGB functions 1, 254.0/255.0, 189.0/255.0
splot -0.5, c+f*u, 2.5*v w pm3d , 10*u-0.5, d, 2.5*v w pm3d

set border 1+2+4+8+16+32+64+256+512
# Then we put on all the shadow. This step can be skipped
set palette model RGB functions 0.6,0.6,0.6
# First shadow, and so on
splot 2*r*u-1.5*r, d, v w pm3d,\
2*r*u-v/(d-e)*r-r, (d-e)*v+e, 0 w pm3d,\
2*r*u+1-1.5*r, d, 2*v w pm3d,\
2*r*u-v/(d-e)*r+1-r, (d-e)*v+e, 0 w pm3d,\
2*r*u+2-1.5*r, d, 1.5*v w pm3d,\
2*r*u-v/(d-e)*r+2-r, (d-e)*v+e, 0 w pm3d,\
2*r*u+3-1.5*r, d, 1.8*v w pm3d,\
2*r*u-v/(d-e)*r+3-r, (d-e)*v+e, 0 w pm3d,\
2*r*u+4-1.5*r, d, 1.1*v w pm3d,\
2*r*u-v/(d-e)*r+4-r, (d-e)*v+e, 0 w pm3d

set label 1 '1987' at 0, 0.6, 0 rotate by 30
set label 2 '1988' at 1, 0.6, 0 rotate by 30
set label 3 '1989' at 2, 0.6, 0 rotate by 30
set label 4 '1990' at 3, 0.6, 0 rotate by 30
set label 5 '1991' at 4, 0.6, 0 rotate by 30

set palette model RGB functions 0, 0, 1
f(u, xx) = r*cos(2*u*pi)+xx
g(u, yy) = r*sin(2*u*pi)+yy
splot f(u,0), g(u,e), 0 w l lt -1 lw a, f(u,0),g(u,e),v w pm3d, f(u,0), g(u,e),1 w l lt -1 lw b,\
f(u,1), g(u,e), 0 w l lt -1 lw a, f(u,1),g(u,e),2*v w pm3d, f(u,1), g(u,e), 2 w l lt -1 lw b,\
f(u,2), g(u,e), 0 w l lt -1 lw a, f(u,2),g(u,e),1.5*v w pm3d, f(u,2), g(u,e), 1.5 w l lt -1 lw b,\
f(u,3), g(u,e), 0 w l lt -1 lw a, f(u,3),g(u,e),1.8*v w pm3d, f(u,3), g(u,e), 1.8 w l lt -1 lw b,\
f(u,4), g(u,e), 0 w l lt -1 lw a, f(u,4),g(u,e),1.1*v w pm3d, f(u,4), g(u,e), 1.1 w l lt -1 lw b
unset multiplot