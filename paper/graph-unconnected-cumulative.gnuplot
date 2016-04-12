# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4in,4.5in font '\scriptsize'

set output "gen-graph-unconnected-cumulative.tex"

set multiplot layout 2,1

set border 3

set key Left at graph 0.915, graph 0.35

set label 1 at graph 0.5, graph 0.95 center '33\% Labelled' front

set xlabel "Runtime (ms)"
set ylabel "Number of Instances Solved"
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('10' 10) add ('1h' 3600e3)
set ytics nomirror add ('' 80000) ('81400' 81400)
set grid
set xrange [1:3600e3]
set yrange [1:81400]
set format x '$10^{%T}$'
unset format y

plot \
    "unconnected-33.data" u (sprintf("%.1e",$4)+0):($4 >= 3600e3 ? 1e-10 : 1) smooth cumulative ti "Clique" lc rgb '#4393C3', \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : 1) smooth cumulative ti "MAC" lc rgb '#7a0177' dt 2, \
    "unconnected-33.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:1) smooth cumulative ti "FC" lc rgb '#238443' dt 5

set label 1 at graph 0.5, graph 0.95 center "Unlabelled" front

set xlabel "Runtime (ms)"
set ylabel "Number of Instances Solved"
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('10' 10) add ('1h' 3600e3)
set ytics nomirror add ('27500' 27500)
set grid
set xrange [1:3600e3]
set yrange [0:27500]
set format x '$10^{%T}$'
unset format y

plot \
    "unconnected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:1) smooth cumulative ti "FC" lc rgb '#238443' dt 5, \
    "unconnected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:1) smooth cumulative ti "MAC" lc rgb '#7a0177' dt 2, \
    "unconnected-plain.data" u (sprintf("%.1e",$4)+0):($4>=3600e3?1e-10:1) smooth cumulative ti "Clique" lc rgb '#4393C3'

