set terminal cairolatex standalone pdf dashed size 13cm,10cm
set output 'RESULTS_tractionTotal.tex'

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
set border linewidth 1.5
set style line 1 lc rgb '#67001f' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 2 lc rgb '#b2182b' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 3 lc rgb '#d6604d' lt 3 pt 9 lw 5.0 ps 1.2 
set style line 11 lc rgb '#053061' lt 2 pt 5 lw 5.0 ps 1.2 
set style line 12 lc rgb '#2166ac' lt 3 pt 7 lw 5.0 ps 1.2 
set style line 13 lc rgb '#4393c3' lt 4 pt 9 lw 5.0 ps 1.2
# Legend
set key t r spacing 1.25
#set key Left
# Axes label 
set xlabel '$h^*$'
set ylabel '$T_{i}^x\:(\mathrm{N/m^3})$' offset 3,0


set log y
set log x
# Axis ranges
set xrange[0.03:10]
#set yrange[1:1e6]
set format y '\(%2.1t \times 10^{%L}\)'
set ytics add ('1' 1)
#set ytic 0.1
# Axis labels
#set tics scale 0.5
# Slope 
X1 = 0.125
Y1 = 5e4
Y2 = 5e5
X2 = 10**(-log10(Y2/Y1)/2+log10(X1))
set object 1 poly from X1,Y1 to X1,Y2 to X2,Y2 to X1,Y1 fs empty border 0
set label '$2^{\mathrm{nd}}\:\mathrm{order}$' at 4e-2,8e5

# Plot
plot 'tractionTotal.txt' u 1:3 w lp ls 1 t '$Ca=1 \times 10^{0},s$', \
'tractionTotal.txt' u 1:2 w lp ls 11 t '$-,f$', \
'tractionTotal.txt' u 1:5 w lp ls 2 t '$Ca=5 \times 10^{-2},s$', \
'tractionTotal.txt' u 1:4 w lp ls 12 t '$-,f$', \
'tractionTotal.txt' u 1:7 w lp ls 3 t '$Ca=7.5 \times 10^{-3},s$', \
'tractionTotal.txt' u 1:6 w lp ls 13 t '$-,f$'

