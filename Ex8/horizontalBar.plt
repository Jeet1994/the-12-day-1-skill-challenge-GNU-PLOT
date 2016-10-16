reset
set key at graph 0.24, 0.85 horizontal samplen 0.1
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.8
set xtic rotate by 90 scale 0
unset ytics
set y2tics rotate by 90
set yrange [0:0.35]; set xrange [-0.5:6.5]
set y2label 'Output' offset -2.5
set xlabel ' '
set size 0.6, 1
set label 1 'Year' at graph 0.5, -0.1 centre rotate by 180
set label 2 'Nowhere' at graph 0.09, 0.85 left rotate by 90
set label 3 'Everywhere' at graph 0.2, 0.85 left rotate by 90
p 'data.dat' u 2 title ' ', '' u ($2/2.0+rand(0)/10.0) title ' ', '' u 0:(0):xticlabel(1) w l title ''