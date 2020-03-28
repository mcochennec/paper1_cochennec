set terminal cairolatex standalone pdf dashed


set output 'dragSolid.tex'

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
set style line 1 lc rgb '#0060ad' lt 2 pt 5 lw 2 ps 0.7 # blue
set style line 2 lc rgb '#dd181f' lt 3 pt 7 lw 2 ps 0.7 # red
set style line 3 lc rgb '#5e9c36' lt 4 pt 9 lw 2 ps 0.7# green
set style line 4 lc rgb '#d95319' lt 1 pt 11 lw 2 ps 1.2# orange
set style line 11 lc rgb '#0060ad' lt 2 pt 4 lw 2 dt 4 ps 1.2 # blue
set style line 12 lc rgb '#dd181f' lt 3 pt 6 lw 2 dt 4 ps 1.2 # red
set style line 13 lc rgb '#5e9c36' lt 4 pt 8 lw 2 dt 4 ps 1.2# green
set style line 14 lc rgb '#d95319' lt 1 pt 10 lw 2 dt 6 ps 1.2# orange
# Legend
set key at 2,9e5 spacing 1.5
#set key Left
# Axes label 
set xlabel '$1/h^*$'
set ylabel '$T_{is}^x\:(\mathrm{N/m^3})$' 


set log y
set log x
# Axis ranges
set xrange[0.1:30]
set yrange[1:1e6]
set format y '\(%2.1t \times 10^{%L}\)'
set ytics add ('1' 1)
#set ytic 0.1
# Axis labels
#set tics scale 0.5
# Slope 
X1 = 10
Y1 = 10
X2 = 30
Y2 = 10**(2*log10(X2/X1)+log10(Y1))
set object 1 poly from X1,Y1 to X2,Y1 to X2,Y2 to X1,Y1 fs empty border 0
set label '$2^{\mathrm{nd}}\:\mathrm{order}$' at 11,4

# Plot
plot 'dragSolid.txt' u 1:3 w lp ls 1 t '$Ca=1.0 \times 10^{0},w$', \
'dragSolid.txt' u 1:5 w lp ls 2 t '$Ca=5.0 \times 10^{-2},w$', \
'dragSolid.txt' u 1:7 w lp ls 3 t '$Ca=7.5 \times 10^{-3},w$', \
'dragSolid.txt' u 1:2 w lp ls 11 t '$Ca=1.0 \times 10^{0},o$', \
'dragSolid.txt' u 1:4 w lp ls 12 t '$Ca=5.0 \times 10^{-2},o$', \
'dragSolid.txt' u 1:6 w lp ls 13 t '$Ca=7.5 \times 10^{-3},o$'