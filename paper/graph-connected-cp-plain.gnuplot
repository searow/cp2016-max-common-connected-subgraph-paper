# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.6in,5.6in font '\scriptsize'
load "chromajs.pal"

set output "gen-graph-connected-cp-plain.tex"

set multiplot layout 3,2

set border 3

set nokey
unset colorbox
set grid
set border 3
unset rmargin
set size square
set x2range [0:100]
set y2range [0:100]
set xrange [1:3600e3]
set yrange [1:3600e3]
set logscale x
set logscale y
set logscale cb
set cbrange [1:1000]
set xtics nomirror add ('1' 1) add ('10' 10) add ('' 1000e3) add ('1h' 3600e3)
set ytics nomirror add ('1' 1) add ('10' 10) add ('' 1000e3) add ('1h' 3600e3)
set cbtics 0 add ('0' 1) ('1' 2) ('10' 10) ('$10^2$' 1e2) ('$\ge10^3$' 1e3)
set format x '$10^{%T}$'
set format y '$10^{%T}$'
set format cb '$10^{%T}$'
set tics front

set xlabel "FC Branch Runtime (ms)"
set ylabel "FC Filter Runtime (ms)"
plot \
    "connected-cp-plain-fc-branch-fc-filter-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "MAC Branch Runtime (ms)"
set ylabel "MAC Filter Runtime (ms)"
plot \
    "connected-cp-plain-mac-branch-mac-filter-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "FC Branch Runtime (ms)"
set ylabel "FC Both Runtime (ms)"
plot \
    "connected-cp-plain-fc-branch-fc-both-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "MAC Branch Runtime (ms)"
set ylabel "MAC Both Runtime (ms)"
plot \
    "connected-cp-plain-mac-branch-mac-both-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "FC Filter Runtime (ms)"
set ylabel "FC Both Runtime (ms)"
plot \
    "connected-cp-plain-fc-filter-fc-both-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "MAC Filter Runtime (ms)"
set ylabel "MAC Both Runtime (ms)"
plot \
    "connected-cp-plain-mac-filter-mac-both-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

