set terminal cairolatex standalone pdf dashed
set output 'saturation.tex'

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
set style line 1 lc rgb '#b2182b' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#ef8a62' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#fddbc7' lt 3 pt 9 lw 5.0 ps 1.2 

# Legend
set key at 0.3,1 spacing 1.25
# Axes label 
set xlabel '$h^*$'
set ylabel '$S_w$'


#set log y
set log x
# Axis ranges
set xrange[0.03:10]
set yrange[0.0:1.0]
#set format y "%2.1t{*10^{%L}}"
#set ytics add ('0' 0)
set ytic 0.2
# Axis labels
#set tics scale 0.5

# Plot
plot 'saturation.txt' u 1:2 w lp ls 1 t '$Ca=1 \times 10^{0}$', \
'saturation.txt' u 1:3 w lp ls 2 t '$Ca=5 \times 10^{-2}$', \
'saturation.txt' u 1:5 w lp ls 3 t '$Ca=7.5 \times 10^{-3}$'