set terminal cairolatex standalone dashed 


set output 'Pc.tex'

# define axis
# remove border on top and right and set color to gray
set style line 21 lc rgb '#808080' lt 1
set border 3 back ls 21
set tics nomirror
# define grid
set style line 22 lc rgb '#808080' lt 0 lw 1
#set grid back ls 22


# Line styles
#set border linewidth 1.5
set style line 1 lc rgb '#0060ad' lt 2 pt 5 lw 2 ps 1.2 # blue
set style line 2 lc rgb '#dd181f' lt 3 pt 7 lw 2 ps 1.2 # red
set style line 3 lc rgb '#5e9c36' lt 4 pt 9 lw 2 ps 1.2# green
set style line 4 lc rgb '#d95319' lt 1 pt 11 lw 2 ps 1.2# orange
set style line 5 lc rgb '#7e2f8e' lt 2 pt 12 lw 2 dt 1 ps 1.2 # purple
set style line 12 lc rgb '#000000' lt 1 pt 14 lw 2 dt 4 ps 1.2 # red
set style line 13 lc rgb '#5e9c36' lt 4 pt 8 lw 2 dt 3 ps 1.2# green
set style line 14 lc rgb '#d95319' lt 1 pt 10 lw 2 dt 3 ps 1.2# orange
# Legend
set key at 1.0,1.0
# Axes label 
set xlabel '$1/h^*$'
set ylabel '$P_o-P_w\:(\mathrm{Pa})$' 


set log y
set log x
# Axis ranges
set xrange[0.1:30]
#set yrange[-1:1.5]
#set format y '\(%2.1t \times 10^{%L}\)'
#set ytics add ('0' 0)
#et ytic 0.4
# Axis labels
#set tics scale 0.5

# Slope 
X1 = 1
Y1 = 0.005
X2 = 3
Y2 = 10**(1*log10(3)+log10(0.005))
set object 1 poly from X1,Y1 to X2,Y1 to X2,Y2 to X1,Y1 fs empty border 0
set label '$1^{\mathrm{st}}\:\mathrm{order}$' at 3.2,0.008
# Plot
plot 'Pc.csv' u 1:2 w lp ls 1 t '$Ca=1.0 \times 10^{0}$', \
'Pc.csv' u 1:5 w lp ls 2 t '$Ca=7.5 \times 10^{-3}$', \
'Pc.csv' u 1:6 w lp ls 12 t '$2\gamma/h$'
