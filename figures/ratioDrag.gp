set terminal cairolatex eps dashed
set size square

set output 'ratioDrag.tex'

# define axis
# remove border on top and right and set color to gray
set style line 21 lc rgb '#808080' lt 1
set border 3 back ls 21
set tics nomirror
# define grid
set style line 22 lc rgb '#808080' lt 0 lw 1
set grid back ls 22


# Line styles
set border linewidth 1.5
set style line 1 lc rgb '#01665e' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#35978f' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#80cdc1' lt 3 pt 9 lw 5.0 ps 1.2 
set style line 4 lc rgb '#c7eae5' lt 4 pt 15 lw 5.0 ps 1.2

# Legend
set key at 5,0.9 spacing 1.25
# Axes label 
set xlabel '$1/h^*$'
set ylabel '$T_{int}^x/T_{s}^x$' 


#set log y
set log x
# Axis ranges
set xrange[0.1:30]
set yrange[0.0:1.0]
#set format y "%2.1t{*10^{%L}}"
#set ytics add ('0' 0)

# Axis labels
#set tics scale 0.5

# Plot
plot 'ratioDrag.txt' u 1:2 w lp ls 1 t '$Ca=1 \times 10^{0}$', \
'ratioDrag.txt' u 1:4 w lp ls 2 t '$Ca=5 \times 10^{-2}$', \
'ratioDrag.txt' u 1:5 w lp ls 3 t '$Ca=1 \times 10^{-2}$', \
'ratioDrag.txt' u 1:6 w lp ls 4 t '$Ca=7.5 \times 10^{-3}$'