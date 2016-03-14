# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.5in,6.6in font '\scriptsize'

set output "gen-graph-connected-undir33.tex"

set multiplot layout 2,1

set border 3

set nokey

set xlabel "Runtime (ms)"
set ylabel "Cumulative Number of Instances Solved"
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('1h' 3600e3)
set ytics nomirror add ('' 80000) ('81000' 81000)
set grid
set xrange [1:3600e3]
set yrange [1:81000]
set format x '$10^{%T}$'
unset format y

set rmargin 10

plot \
    "connected-undir33.data" u ($2 * 1000):($2 * 1000 >= 3600e3 ? 1e-10 : 1) smooth cumulative ti "CP Branching" at end, \
    "connected-undir33.data" u ($3):($3 >= 3600e3 ? 1e-10 : 1) smooth cumulative ti "Clique" at end

set border 3

set nokey

unset rmargin
set size square
set xlabel "CP Branching Runtime (ms)"
set ylabel "Clique Runtime (ms)"
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
load "gnbu.pal"

plot \
    "connected-undir33-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

