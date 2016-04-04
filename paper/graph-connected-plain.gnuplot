# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.6in,6.6in font '\scriptsize'
load "gnbu.pal"

set output "gen-graph-connected-plain.tex"

set multiplot layout 2,1

set border 3

set nokey

set xlabel "Runtime (ms)"
set ylabel "Cumulative Number of Instances Solved"
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('1h' 3600e3)
set ytics nomirror add ('27500' 27500)
set grid
set xrange [1:3600e3]
set yrange [0:27500]
set format x '$10^{%T}$'
unset format y

set key Left at graph 0.90, graph 0.35

plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:1) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:1) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:1) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:1) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:1) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:1) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:1) smooth cumulative ti "Association" lc rgb '#4393C3'

set border 3

set nokey

unset rmargin
set size square
set xlabel "MAC Both Runtime (ms)"
set ylabel "Association Graph Runtime (ms)"
set x2range [0:100]
set y2range [0:100]
set xrange [1:3600e3]
set yrange [1:3600e3]
set logscale x
set logscale y
set logscale cb
set cbrange [1:1000]
set xtics nomirror add ('1' 1) add ('1h' 3600e3)
unset ytics
set ytics nomirror add ('1' 1) add ('1h' 3600e3)
set cbtics 0 add ('0' 1) ('1' 2) ('10' 10) ('$10^2$' 1e2) ('$\ge10^3$' 1e3)
set format x '$10^{%T}$'
set format y '$10^{%T}$'
set format cb '$10^{%T}$'
set tics front

plot \
    "connected-plain-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

