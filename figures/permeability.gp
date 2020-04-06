set terminal cairolatex eps dashed

set output 'permeability.tex'

# define axis
# remove border on top and right and set color to gray
set style line 21 lc rgb '#808080' lt 1
set border 3 back ls 21
set tics nomirror
# define grid
set style line 22 lc rgb '#808080' lt 0 lw 1
set grid back ls 22


# Line styles
set border linewidth 1.5
set style line 1 lc rgb '#053061' pt 5 lw 2.5 ps 1.2 
set style line 2 lc rgb '#dd181f' dt 4 pt 7 lw 2.5 ps 1.2
# Legend
set key at 2e-4,50 samplen 1.5 spacing 1.5
# Axes label 
set ylabel '$k/k^{2D}$'
set xlabel '$h$ $(\mathrm{m})$' 


set log y
set log x
# Axis ranges
#set xrange[0.1:30]
#set yrange[0.05:0.3]
#set format y '\(%2.1t \times 10^{%L}\)'
set format x '\(%2.1t \times 10^{%L}\)'
#set ytics add ('1' 1)
set ytic 0.1

# Axis labels
#set tics scale 0.5

# Plot
plot 'permeability.txt' u 1:2 w lp ls 2 t '$k=h^2/12$', \
'permeability.txt' u 1:3 w lp ls 1 t '$\mathrm{our\:model}$'