set parametric
set hidden3d
set isosamples 21
set autoscale


set view 60,30
set urange [-3:3]
set vrange [-3:3]
set title "Real part of complex square root function"
splot u**2-v**2,2*u*v,u