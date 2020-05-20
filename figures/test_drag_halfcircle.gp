set terminal cairolatex standalone pdf size 13cm,10cm
set size square
set output 'APPENDIX_test_half_circle.tex'

# Line styles
set border linewidth 1.5
set style line 1 linecolor rgb '#0072bd' lt 1 lw 4.5 dt 1 pt 5 ps 1.5  # blue
set style line 2 linecolor rgb '#d95319' lt 1 lw 4.5 dt 1 pt 7 ps 1.5 # red
set style line 3 linecolor rgb '#edb120' lt 1 lw 4.5 dt 2 pt 9 ps 0.5 # green
set style line 4 linecolor rgb '#77ac30' lt 1 lw 4.5 dt 2 pt 11 ps 0.5 # green
set style line 5 lc rgb '#000000' lt 1 lw 4 dt 2  # --- green

set style line 21 lc rgb '#808080' lt 1
set border 3 back ls 21
set tics nomirror
# define grid
set style line 22 lc rgb '#808080' lt 0 lw 1

# Legend
set key at 0.5,1.2 samplen 2.0 spacing 1.5
set xrange[0.05:0.5]
set yrange[0.6:1.3]
set log x
set xtics ("1/2" .5, "1/4" 0.25, "1/8" .125, "1/16" .0625)
set ytics 0.2
# Axes label 
set xlabel '$h/L$'
set ylabel 'Normalized drag force' 

# Plot
plot 'test_drag_microchannel_halfcircle.txt' u 1:2 w lp ls 1 t 'drag', \
'' u 1:3 w lp ls 2 t '- / unit surface area'