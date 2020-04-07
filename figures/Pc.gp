set terminal cairolatex eps dashed 
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
set style line 1 lc rgb '#053061' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#2166ac' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#d6604d' lt 3 pt 9 lw 5.0 ps 1.2 
set style line 10 lc rgb '#dd181f' dt 4 pt 6 lw 5.0 ps 1.2
# Legend
set key at 0.4,0.01 spacing 1.5
# Axes label 
set xlabel '$h^*$'
set ylabel '$\vert P_o-P_w\vert\:(\mathrm{Pa}) $' 


set log y
set log x
# Axis ranges
set xrange[0.03:10]
#set yrange[-1:1.5]
#set format y '\(%2.1t \times 10^{%L}\)'
#set ytics add ('0' 0)
#et ytic 0.4
# Axis labels
#set tics scale 0.5
# Plot
plot 'Pc.csv' u 1:2 w lp ls 1 t '$Ca=1 \times 10^{0}$', \
'Pc.csv' u 1:5 w lp ls 2 t '$Ca=7.5 \times 10^{-3}$', \
'Pc.csv' u 1:6 w lp ls 10 t '$2\gamma/h$'
