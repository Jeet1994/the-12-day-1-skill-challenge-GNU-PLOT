set parametric
set hidden3d
set isosamples 21
set autoscale
set urange [0:2*pi]
set vrange [0:2*pi]
set isosamples 39,60
set view 60,120
set title "Klein bottle"
splot  (2*sin(u)*cos(v/2)-sin(2*u)*sin(v/2)+8)*cos(v), \
       (2*sin(u)*cos(v/2)-sin(2*u)*sin(v/2)+8)*sin(v), \
        2*sin(u)*sin(v/2)+sin(2*u)*cos(v/2)