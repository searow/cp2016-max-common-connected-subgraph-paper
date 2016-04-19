# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.6in,2.3in font '\scriptsize'
load "chromajs.pal"

set output "gen-graph-connected-cumulative-cp.tex"

set multiplot layout 1,2

set border 3

set nokey

set label 1 at graph 0.5, graph 0.95 center '33\% Labelled' front

set xlabel "Runtime (ms)"
set ylabel "Thousands of Instances Solved"
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('10' 10) add ('1h' 3600e3)
set ytics nomirror add ('' 80000) ('81400' 81400)
set grid
set xrange [1:3600e3]
set yrange [1:81.4]
set format x '$10^{%T}$'
unset format y

set key Left at graph 1, graph 0.55

plot \
    "connected-undir33.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:1e-3) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-undir33.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:1e-3) smooth cumulative ti "MAC Branch" lc rgb '#AE017E' dt 3, \
    "connected-undir33.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:1e-3) smooth cumulative ti "MAC Filter" lc rgb '#DD3497' dt 4

set xlabel "Runtime (ms)"
set ylabel "Thousands of Instances Solved"
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('10' 10) ('1h' 3600e3)
set ytics nomirror add ('27500' 27500)
set grid
set xrange [1:3600e3]
set yrange [0:27.5]
set format x '$10^{%T}$'
unset format y

set key Left at graph 1, graph 0.55

set label 1 at graph 0.5, graph 0.95 center "Unlabelled" front

plot \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:1e-3) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:1e-3) smooth cumulative ti "FC Branch" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:1e-3) smooth cumulative ti "FC Filter" lc rgb '#78C679' dt 7

