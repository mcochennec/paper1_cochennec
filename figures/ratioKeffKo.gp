set terminal cairolatex standalone pdf dashed
set size square

set output 'ratioKeffKo.tex'

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
set style line 1 lc rgb '#01665e' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#5ab4ac' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#c7eae5' lt 4 pt 15 lw 5.0 ps 1.2
set style line 11 lc rgb '#8c510a' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 12 lc rgb '#d8b365' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 13 lc rgb '#f6e8c3' lt 4 pt 15 lw 5.0 ps 1.2
# Legend
set key at 20,0.33 spacing 1.25
#set key Left
# Axes label 
set xlabel '$1/h^*$' font ",20"
set ylabel '$k_{ri}/k_0$' font ",20"


set log y
set log x
# Axis ranges
#set xrange[0.1:30]
#set yrange[1:1e6]
#set format y '\(%2.1t \times 10^{%L}\)'
set ytics add ('1' 1)
#set ytic 0.1
# Axis labels
#set tics scale 0.5

# Plot
plot 'ratioKeffKo.txt' u 1:3 w lp ls 1 t '$Ca=1 \times 10^{0},w$', \
'ratioKeffKo.txt' u 1:2 w lp ls 11 t '$-,o$', \
'ratioKeffKo.txt' u 1:5 w lp ls 2 t '$Ca=5 \times 10^{-2},w$', \
'ratioKeffKo.txt' u 1:4 w lp ls 12 t '$-,o$', \
'ratioKeffKo.txt' u 1:7 w lp ls 3 t '$Ca=7.5 \times 10^{-3},w$', \
'ratioKeffKo.txt' u 1:6 w lp ls 13 t '$-,o$'

