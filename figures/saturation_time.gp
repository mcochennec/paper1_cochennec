set terminal cairolatex standalone pdf size 13cm,10cm

set output 'RESULTS_saturation_time.tex'

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
set style line 1 lc rgb '#67001f' lt 1 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#b2182b' lt 1 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#d6604d' lt 1 pt 9 lw 5.0 ps 1.2 
set style line 4 lc rgb '#f4a582' lt 1 pt 15 lw 5.0 ps 1.2
set style line 5 lc rgb '#fddbc7' lt 1 pt 15 lw 5.0 ps 1.2

# Legend
set key spacing 1.25
# Axes label 
set xlabel '$t^*$'
set ylabel '$S_w$' 


#set log y
#set log x
# Axis ranges
#set xrange[0.03:10]
#set yrange[0.0:1.0]
#set format y "%2.1t{*10^{%L}}"
#set ytics add ('0' 0)

# Axis labels
set ytics 0.2
set yrange[0:1]
# Plot
plot 'saturation_time_uc3_ca005.txt' u 1:3 w l ls 1 t '$h^*=5$', \
'' u 4:6 w l ls 2 t '$h^*=1/2$', \
'' u 7:9 w l ls 3 t '$h^*=1/4$', \
'' u 10:12 w l ls 4 t '$h^*=1/8$', \
'' u 13:15 w l ls 5 t '$h^*=1/20$'