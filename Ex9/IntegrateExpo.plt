f(x) = exp(-x**2)
delta = 0.2
#  delta can be set to 0.025 for non-MSDOS machines
#
# integral_f(x) takes one variable, the upper limit.  0 is the lower limit.
# calculate the integral of function f(t) from 0 to x
integral_f(x) = (x>0)?integral1a(x):-integral1b(x)
integral1a(x) = (x<=0)?0:(integral1a(x-delta)+delta*f(x))
integral1b(x) = (x>=0)?0:(integral1b(x+delta)+delta*f(x))
#
# integral2_f(x,y) takes two variables; x is the lower limit, and y the upper.
# claculate the integral of function f(t) from x to y
integral2_f(x,y) = (xy)?0:(integral2(x+delta,y)+delta*f(x))

set autoscale
set title "approximate the integral of functions"
set samples 50

plot [-5:5] f(x) title "f(x)=exp(-x**2)", 2/sqrt(pi)*integral_f(x) title "erf(x)=2/sqrt(pi)*integral_f(x)"