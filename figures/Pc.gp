set terminal cairolatex standalone pdf dashed size 10cm,10cm
set output 'Pc.tex'
set size square
# define axis
# remove border on top and right and set color to gray
set style line 21 lc rgb '#808080' lt 1
set border 3 back ls 21
set tics nomirror
# define grid
set style line 22 lc rgb '#808080' lt 0 lw 1
set grid back ls 22


# Line styles
#set border linewidth 1.5
set style line 1 lc rgb '#b2182b' lt 1 pt 5 lw 5.0 ps .7 
set style line 2 lc rgb '#ef8a62' lt 1 pt 7 lw 5.0 ps .7 
set style line 3 lc rgb '#fddbc7' lt 1 pt 9 lw 5.0 ps .7
set style line 11 lc rgb '#b2182b' lt 1 pt 4 lw 5.0 ps 1.2 dt 2
set style line 12 lc rgb '#ef8a62' lt 1 pt 6 lw 5.0 ps 1.2 dt 2
set style line 13 lc rgb '#fddbc7' lt 1 pt 8 lw 5.0 ps 1.2 dt 2
set style line 10 lc rgb '#dd181f' dt 4 pt 6 lw 5.0 ps 1.
# Legend
set key at 10,10000 spacing 1.2 samplen 2.5
# Axes label 
set xlabel '$h^*$'
set ylabel '$P_o^*-P_w^*$' 


set log y
set log x
# Axis ranges
set xtics add ("5" 5, "1/2" .5, "1/4" 0.25, "1/20" .05)
set xrange[4e-2:10]
set yrange[0.5:10000]


#set format y '\(%2.1t \times 10^{%L}\)'
#set ytics add ('0' 0)
#et ytic 0.4
# Axis labels
#set tics scale 0.5
# Plot
plot 'pc.txt' u 1:2 w lp ls 1 t '$Ca=1 \times 10^{0}$', \
'pc.txt' u 1:5 w lp ls 11 t '$-,(2\gamma/h)^*$',\
'pc.txt' u 1:3 w lp ls 2 t '$Ca=5 \times 10^{-2}$', \
'pc.txt' u 1:6 w lp ls 12 t '$-,(2\gamma/h)^*$',\
'pc.txt' u 1:4 w lp ls 3 t '$Ca=7.5 \times 10^{-3}$', \
'pc.txt' u 1:7 w lp ls 13 t '$-,(2\gamma/h)^*$'
