f(x) = sin(x)/x
delta = 0.2
integral_f(x) = (x>0)?integral1a(x):-integral1b(x)
integral1a(x) = (x<=0)?0:(integral1a(x-delta)+delta*f(x))
integral1b(x) = (x>=0)?0:(integral1b(x+delta)+delta*f(x))
# integral2_f(x,y) takes two variables; x is the lower limit, and y the upper.
# claculate the integral of function f(t) from x to y
integral2_f(x,y) = (xy)?0:(integral2(x+delta,y)+delta*f(x))

set autoscale
set title "Integration of sinx"
set samples 50

plot [-15:15] f(x) title "f(x)=sin(x)/x", integral_f(x)