reset
unset key
set border 1+2 lt 1
set y2tics 1e-5, 1e2, 1e5 textcolor rgb "blue" format "10^{%T}"
set ytics nomirror format "%.1f"
set xtics nomirror
set xlabel 'x' textcolor rgb "red"
set ylabel 'sin(x)' textcolor rgb "red"
set y2label 'exp(x)|sin(x)|' textcolor rgb "blue"
set log y2
set arrow 1 from 10, -1 to 10, 1 nohead lt 3
set arrow 2 from -10,  1 to 10, 1 nohead lt 3
set sample 1000
plot sin(x) with lines lt 1, exp(x)*abs(sin(x)) with lines lt 3 axis x1y2