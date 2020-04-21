set terminal cairolatex standalone pdf 
set size square
set output 'litt_perm.tex'

# Line styles
set border linewidth 1.5
set style line 1 linecolor rgb '#0072bd' lt 1 lw 4.5 dt 1 pt 5 ps 0.5  # blue
set style line 2 linecolor rgb '#d95319' lt 1 lw 4.5 dt 2 pt 7 ps 0.5 # red
set style line 3 linecolor rgb '#edb120' lt 1 lw 4.5 dt 2 pt 9 ps 0.5 # green
set style line 4 linecolor rgb '#77ac30' lt 1 lw 4.5 dt 2 pt 5 ps 0.5 # green
set style line 5 lc rgb '#000000' lt 1 lw 4 dt 2  # --- green

set style line 21 lc rgb '#808080' lt 1
set border 3 back ls 21
set tics nomirror
# define grid
set style line 22 lc rgb '#808080' lt 0 lw 1
set grid back ls 22

# Legend
set key l t
set key samplen 1.5
# Axes label 
set xlabel '$S_w$'
set ylabel '$\frac{K^*_{wo}}{K_0},\frac{\mu_o}{\mu_w}\frac{K^*_{ow}}{K_0}$' offset -2,0
kow(x) = (1-x)*2*(x+(1-x)*log(1-x))

# Axis ranges
set xrange[0:0.999]
set yrange[0:0.3]
set ytics 0.05
set xtics 0.2
# Plot
plot 'litt_perm.txt' u 1:2 ls 1 t 'Rothman', \
'litt_perm.txt' u 7:8 ls 2 t 'Dullien and Dong', \
'litt_perm.txt' u 5:6 ls 3 t 'Li et al.', \
'litt_perm.txt' u 3:4 ls 4 t 'Zarcone and Len. ', \
kow(x) t 'annular' w l ls 5