set terminal cairolatex standalone pdf size 16cm,9cm
set output 'DNS_mesh_conv.tex'


set style line 1 linecolor rgb '#0072bd' lt 1 lw 2.5 dt 1 pt 5 ps .5  # blue
set style line 2 linecolor rgb '#d95319' lt 1 lw 2.5 dt 1 pt 7 ps .5 # red
set style line 3 linecolor rgb '#edb120' lt 1 lw 2.5 dt 1 pt 9 ps .5 # green
set style line 4 linecolor rgb '#77ac30' lt 1 lw 2.5 dt 1 pt 11 ps .5 # green
# remove border on top and right and set color to gray
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror
# define grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12
set key t l spacing 1.5
set xlabel 'Number of mesh elements' 
set ylabel 'Normalized results' 
set format x '\(%2.1t \times 10^{%L}\)'
set log x
set title '(a)'
set yrange[0.85:2.]
set xrange[2e3:4e5]
set multiplot layout 1,2
plot 'mesh_conv.txt' u 1:2 w lp ls 1 t '$d^x_{wo}\quad$', \
'mesh_conv.txt' u 1:4 w lp ls 4 t '$d^x_{wc}\quad$', \
'mesh_conv.txt' u 1:5 w lp ls 3 t '$\langle u^x_w \rangle\quad$', \
'mesh_conv.txt' u 1:3 w lp ls 2 t '$\langle p_o \rangle^o-\langle p_w \rangle^w$'

set key b c spacing 1.25
set xlabel '$x/L$' 
set ylabel '$y/L$' 
set ytics 0.2
set yrange[0:1]
unset xrange
set title '(b)'
unset log x
unset format x
#set yrange[0.9:1.5]

plot 'interfaceMeshConv.txt' u 1:2 w l ls 1 t '$3.9\times10^{5}$', \
'interfaceMeshConv.txt' u 3:4 w l ls 4 t '$1.9\times10^{5}$', \
'interfaceMeshConv.txt' u 5:6 w l ls 3 t '$6.0\times10^{4}$', \
'interfaceMeshConv.txt' u 7:8 w l ls 2 t '$1.6\times10^{4}$'


unset multiplot
