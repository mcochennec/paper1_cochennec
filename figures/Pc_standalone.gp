set terminal cairolatex eps dashed 
set size square

set output 'Pc.tex'

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
set style line 1 lc rgb '#01665e' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#5ab4ac' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#c7eae5' lt 4 pt 15 lw 5.0 ps 1.2
set style line 10 lc rgb '#dd181f' dt 4 pt 6 lw 5.0 ps 1.2
# Legend
set key r b spacing 1.5
# Axes label 
set xlabel '$1/h^*$'
set ylabel '$P_o-P_w\:(\mathrm{Pa})$' 


set log y
set log x
# Axis ranges
set xrange[0.1:30]
#set yrange[-1:1.5]
#set format y '\(%2.1t \times 10^{%L}\)'
#set ytics add ('0' 0)
#et ytic 0.4
# Axis labels
#set tics scale 0.5

# Slope 
X1 = 0.2
Y1 = 0.03
Y2 = 0.2
X2 = 10**(log10(Y2/Y1)/1+log10(X1))
set object 1 poly from X1,Y1 to X1,Y2 to X2,Y2 to X1,Y1 fs empty border 0
set label '$1^{\mathrm{st}}\:\mathrm{order}$' at 0.25,0.25
# Plot
plot 'Pc.csv' u 1:2 w lp ls 1 t '$Ca=1.0 \times 10^{0}$', \
'Pc.csv' u 1:5 w lp ls 3 t '$Ca=7.5 \times 10^{-3}$', \
'Pc.csv' u 1:6 w lp ls 10 t '$2\gamma/h$'
