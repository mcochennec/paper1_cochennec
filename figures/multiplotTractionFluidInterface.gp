set terminal cairolatex standalone pdf dashed size 14cm,14cm
set output 'RESULTS_multiplotTractionFluidInterface.tex'

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
set style line 12 lc rgb '#2166ac' lt 3 pt 9 lw 5.0 ps 1.2 
set style line 13 lc rgb '#4393c3' lt 4 pt 9 lw 5.0 ps 1.2


X1 = 0.07
Y1 = 1e3
X2 = 0.35
Y2 = 10**(2*log10(X2/X1)+log10(Y1))

X22 = 0.5
Y11 = 5
Y22 = 20
X11 = 10**(-log10(Y22/Y11)/2+log10(X22)) 

#Multiplot Layout
set multiplot layout 2,2
set log y
set log x
# Axis ranges

set format y '\(%2.1t \times 10^{%L}\)'

#set ytic 0.1
# Axis labels
#set tics scale 0.5


# Plot
#
set xlabel '$h^*$'
set ylabel '$d_{f}^x\:(\mathrm{N/m^3})$' offset 3,0
set label 1 '$Ca=1$' at 0.5,9e3
set label 2 '$2$' at 0.1,6e2
set object 1 poly from X1,Y1 to X2,Y1 to X1,Y2 to X1,Y1 fs empty border 0
plot 'multiplotFluidInterface.txt' u 1:2 w lp ls 2 t '$viscous$', \
'multiplotFluidInterface.txt' u 1:3 w lp ls 12 t '$pressure$'
#
set ytics add ('1' 1)
unset xlabel
unset ylabel
unset label 
unset object 1
set label '$Ca=0.05$' at 0.5,9e2
plot 'multiplotFluidInterface.txt' u 1:4 w lp ls 2 t '$viscous$', \
'multiplotFluidInterface.txt' u 1:5 w lp ls 12 t '$pressure$'
#
unset xlabel
unset ylabel
unset label
unset object 1
set label '$Ca=0.01$' at 0.5,7e1
plot 'multiplotFluidInterface.txt' u 1:6 w lp ls 2 t '$viscous$', \
'multiplotFluidInterface.txt' u 1:7 w lp ls 12 t '$pressure$'
#
unset xlabel
unset ylabel
unset label
unset object 1
set object 2 poly from X22,Y11 to X22,Y22 to X11,Y22 to X22,Y11 fs empty border 0
set label '$Ca=0.0075$' at 0.3,9e1
set label 2 '$2$' at 0.7,10
plot 'multiplotFluidInterface.txt' u 1:8 w lp ls 2 t '$viscous$', \
'multiplotFluidInterface.txt' u 1:9 w lp ls 12 t '$pressure$'
unset multiplot