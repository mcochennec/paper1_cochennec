set terminal cairolatex standalone pdf size 13cm,10cm
set size square
set output 'INTRODUCTION_INTRODUCTION_littPerm.tex'

# Line styles
set border linewidth 1.5
set style line 1 linecolor rgb '#0072bd' lt 1 lw 4.5 dt 1 pt 4 ps 1.0  # blue
set style line 2 linecolor rgb '#d95319' lt 1 lw 4.5 dt 2 pt 7 ps 1.0 # red
set style line 3 linecolor rgb '#edb120' lt 1 lw 4.5 dt 2 pt 8 ps 1.0 # green
set style line 4 linecolor rgb '#77ac30' lt 1 lw 4.5 dt 2 pt 11 ps 1.0 # green
set style line 5 lc rgb '#000000' lt 1 lw 4 dt 2  # --- green

set style line 21 lc rgb '#808080' lt 1
set border 3 back ls 21
set tics nomirror
# define grid
set style line 22 lc rgb '#808080' lt 0 lw 1
set grid back ls 22

# Legend
set key at 0.62,0.29
set key samplen 1.5
# Axes label 
set xlabel 'Wetting-fluid saturation'
set ylabel 'Normalized coupling permeabilities' offset -2,0
kow(x) = (1-x)*2*(x+(1-x)*log(1-x))

# Axis ranges
set xrange[0:0.999]
set yrange[0:0.3]
set ytics 0.05
set xtics 0.2
# Plot
plot 'INTRODUCTION_littPerm.txt' u 1:2 ls 1 t 'Num. (Rothman)', \
'INTRODUCTION_littPerm.txt' u 5:6 ls 3 t 'Num. (Li et al.)', \
'INTRODUCTION_littPerm.txt' u 7:8 ls 2 t 'Exp. (Dullien and Dong)', \
'INTRODUCTION_littPerm.txt' u 3:4 ls 4 t 'Exp. (Zarcone and Len.)', \
kow(x) t 'Ana. (Bacri)' w l ls 5