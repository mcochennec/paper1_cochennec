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
set style line 1 lc rgb '#0060ad' lt 2 pt 5 lw 2 ps 1.2 # blue
set style line 2 lc rgb '#dd181f' lt 3 pt 7 lw 2 ps 1.2 # red
set style line 3 lc rgb '#5e9c36' lt 4 pt 9 lw 2 ps 1.2# green
set style line 4 lc rgb '#d95319' lt 1 pt 11 lw 2 ps 1.2# orange
set style line 5 lc rgb '#7e2f8e' lt 1 pt 13 lw 2 ps 1.2 # purple
# Legend
set key at 20,0.8
# Axes label 
set xlabel '$1/h^*$'
set ylabel '$S_w$' 


#set log y
set log x
# Axis ranges
set xrange[0:25]
set yrange[0.2:0.8]
#set format y "%2.1t{*10^{%L}}"
#set ytics add ('0' 0)
set ytic 0.1
# Axis labels
#set tics scale 0.5

# Plot
plot 'saturation.txt' u 1:2 w lp ls 1 t '$Ca=1.0$', \
'saturation.txt' u 1:3 w lp ls 2 t '$Ca=2.0 \times 10^{-1}$', \
'saturation.txt' u 1:4 w lp ls 3 t '$Ca=5.0 \times 10^{-2}$', \
'saturation.txt' u 1:5 w lp ls 4 t '$Ca=1.0 \times 10^{-2}$', \
'saturation.txt' u 1:6 w lp ls 5 t '$Ca=7.5 \times 10^{-3}$'