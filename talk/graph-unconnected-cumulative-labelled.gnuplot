# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 3.6in,2.8in standalone font '\scriptsize'
load "chromagreenblue.pal"

set output "gen-graph-unconnected-cumulative-labelled.tex"

set border 3
set lmargin 3
set rmargin 3

set title '33\% Labelled'

set xlabel "Runtime (ms)"
set ylabel "Number of Instances"
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

set key Left at graph 1, graph 0.33

plot \
    "../paper/unconnected-33.data" u (sprintf("%.1e",$4)+0):($4 >= 3600e3 ? 1e-10 : 1) smooth cumulative ti "Clique" lc rgb '#90ee90', \
    "../paper/unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : 1) smooth cumulative ti "MAC" lc rgb '#008080' dt 2, \
    "../paper/unconnected-33.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:1) smooth cumulative ti "FC" lc rgb '#000080' dt 5

