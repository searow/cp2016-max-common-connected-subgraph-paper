# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.6in,1.9in font '\scriptsize'
load "chromajs.pal"

set output "gen-graph-connected-cumulative.tex"

set multiplot layout 1,2

set border 3
set lmargin 3
set rmargin 3

set label 1 at graph 0.5, graph 0.95 center '33\% Labelled' front

set xlabel "Runtime (ms)"
set ylabel "Thousands of Instances"
set ylabel offset character 4.6, character 0
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('10' 10) add ('1h' 3600e3)
set ytics nomirror add ('0' 0) add ('' 10) add ('' 20) add ('' 30) add ('' 40) add ('' 50) add ('' 60) add ('' 70) add ('' 80) ('81.4' 81.4)
set grid
set xrange [1:3600e3]
set yrange [1:81.4]
set format x '$10^{%T}$'
unset format y

set key Left at graph 1, graph 0.33

plot \
    "connected-undir33.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:1e-3) smooth cumulative ti "Association" lc rgb '#4393C3', \
    "connected-undir33.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:1e-3) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-undir33.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:1e-3) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5

#    "connected-undir33.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:1) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
#    "connected-undir33.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:1) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
#    "connected-undir33.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:1) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
#    "connected-undir33.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:1) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \

set xlabel "Runtime (ms)"
set ylabel "Thousands of Instances"
set ylabel offset character 4.6, character 0
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('10' 10) add ('1h' 3600e3)
set ytics nomirror add ('0' 0) add ('' 5) add ('' 10) add ('' 15) add ('' 20) add ('' 25) add ('27.5' 27.5)
set grid
set xrange [1:3600e3]
set yrange [0:27.500]
set format x '$10^{%T}$'
unset format y

set key Left at graph 1, graph 0.33

set label 1 at graph 0.5, graph 0.95 center "Unlabelled" front

plot \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:1e-3) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:1e-3) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:1e-3) smooth cumulative ti "Association" lc rgb '#4393C3'

#    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:1) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
#    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:1) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
#    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:1) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
#    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:1) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \

