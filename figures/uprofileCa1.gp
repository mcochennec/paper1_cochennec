set terminal cairolatex standalone pdf dashed


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
set style line 1 lc rgb '#0060ad' lt 2 pt 5 lw 2.5 ps 1.2 # blue
set style line 2 lc rgb '#dd181f' lt 3 pt 7 lw 2.5 ps 1.2 # red
set style line 3 lc rgb '#5e9c36' lt 4 pt 9 lw 2.5 ps 1.2# green
set style line 4 lc rgb '#d95319' lt 1 pt 11 lw 2 ps 1.2# orange
set style line 5 lc rgb '#7e2f8e' lt 1 pt 13 lw 2 ps 1.2 # purple
set style line 6 lc rgb '#7e2f8e' lt 1 pt 13 lw 2.5 dt 4 ps 1.2 # purple
# Legend
set key at 0.7,0.97 samplen 1.5 spacing 1.5
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