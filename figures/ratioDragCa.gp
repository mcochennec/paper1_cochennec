set terminal cairolatex eps dashed

set output 'ratioDragCa.tex'

# define axis
# remove border on top and right and set color to gray
set style line 21 lc rgb '#808080' lt 1
set border 3 back ls 21
set tics nomirror
# define grid
set style line 22 lc rgb '#808080' lt 0 lw 1
#set grid back ls 22


# Line styles
set border linewidth 1.5
set style line 1 lc rgb '#67001f' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#b2182b' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#d6604d' lt 3 pt 9 lw 5.0 ps 1.2 
set style line 4 lc rgb '#f4a582' lt 4 pt 15 lw 5.0 ps 1.2
set style line 5 lc rgb '#fddbc7' lt 4 pt 11 lw 5.0 ps 1.2
# Legend
set key r t spacing 1.25
# Axes label 
set xlabel '$Ca$'
set ylabel '$T_{f}^x/T_{s}^x$' 


#set log y
set log x
# Axis ranges
set xrange[5e-3:2]
set yrange[0.0:1.0]
#set format y "%2.1t{*10^{%L}}"
#set ytics add ('0' 0)

# Axis labels
#set tics scale 0.5

# Plot
plot 'ratioDragCa.txt' u 1:2 w lp ls 1 t '$h^*=5$', \
'ratioDragCa.txt' u 1:3 w lp ls 2 t '$h^*=0.500$', \
'ratioDragCa.txt' u 1:4 w lp ls 3 t '$h^*=0.250$', \
'ratioDragCa.txt' u 1:5 w lp ls 4 t '$h^*=0.125$', \
'ratioDragCa.txt' u 1:6 w lp ls 5 t '$h^*=0.050$'