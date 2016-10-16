# Bipolar Transistor (NPN) Mutual Characteristic
Ie(Vbe)=Ies*exp(Vbe/kT_q)
Ic(Vbe)=alpha*Ie(Vbe)+Ico
alpha = 0.99
Ies = 4e-14
Ico = 1e-09
kT_q = 0.025
set dummy Vbe
set grid
set offsets
set nolog
set nopolar
set samples 160
set title "Mutual Characteristic of a Transistor"
set xlabel "Vbe (base emmitter voltage)"
set xrange [0 : 0.75]
set ylabel "Ic (collector current)"
set yrange [0 : 0.005]
set key .2,.0045
set format y "%.4f"
plot Ic(Vbe)
set format "%g"
