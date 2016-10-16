# amplitude frequency response
A(jw) = ({0,1}*jw/({0,1}*jw+p1)) * (1/(1+{0,1}*jw/p2))
p1 = 10
p2 = 10000
set dummy jw
set grid
set key
set logscale xy
set offsets 0, 0, 0, 0
set title "Amplitude Frequency Response"
set xlabel "jw (radians)"
set xrange [1.1 : 90000.0]
set ylabel "magnitude of A(jw)"
set autoscale  y
plot abs(A(jw))