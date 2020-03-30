set terminal cairolatex eps dashed
set size square

set output 'uprofileCa1.tex'

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
set style line 1 lc rgb '#8c510a' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#d8b365' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#f6e8c3' lt 4 pt 15 lw 5.0 ps 1.2
set style line 6 lc rgb '#dd181f' lt 1 pt 13 lw 5.0 dt 4 ps 1.2 
# Legend
set key at 1.0,0.97 samplen 1.5 spacing 1.5
# Axes label 
set ylabel '$y*$'
set xlabel '$U_x^*$' 


#set log y
#set log x
# Axis ranges
#set xrange[0.1:30]
#set yrange[0.05:0.3]
#set format y '\(%2.1t \times 10^{%L}\)'
#set ytics add ('1' 1)
set ytic 0.1

# Axis labels
#set tics scale 0.5

# Plot
plot 'uprofileLH2d.txt' u 2:1 w l ls 6 t '$1/h^*=0$', \
'uprofileLH2.txt' u 2:1 w l ls 1 t '$1/h^*=2$', \
'uprofileLH8.txt' u 2:1 w l ls 2 t '$1/h^*=8$', \
'uprofileLH20.txt' u 2:1 w l ls 3 t '$1/h^*=20$'