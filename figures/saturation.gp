set terminal cairolatex eps dashed
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
set style line 1 lc rgb '#67001f' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#b2182b' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#d6604d' lt 3 pt 9 lw 5.0 ps 1.2 

# Legend
set key r t spacing 1.5
# Axes label 
set xlabel '$h^*$'
set ylabel '$S_w$' offset -2,0 


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
set label at 0.035,0.5 '\includegraphics{SatCa00075HL005.png}'
set label at 0.35,0.7 '\includegraphics{SatCa00075HL05.png}'
set label at 0.035,0.1 '\includegraphics{SatCa1HL005.png}'
set label at 0.35,0.2 '\includegraphics{SatCa1HL05.png}'
set label at 3.5,0.35 '\includegraphics{SatCa1HL5.png}'
plot 'saturation.txt' u 1:2 w lp ls 1 t '$Ca=1 \times 10^{0}$', \
'saturation.txt' u 1:4 w lp ls 2 t '$Ca=5 \times 10^{-2}$', \
'saturation.txt' u 1:6 w lp ls 3 t '$Ca=7.5 \times 10^{-3}$'