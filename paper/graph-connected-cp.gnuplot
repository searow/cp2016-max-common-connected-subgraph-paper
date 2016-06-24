# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.6in,3.0in font '\scriptsize' standalone
load "chromagreenblue.pal"

set output "gen-graph-connected-cp.tex"

set multiplot layout 2,3

set border 3

set lmargin 2
set rmargin 2

set nokey
unset colorbox
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
set xtics 100 nomirror add ('1ms' 1) add ('' 1e2) add ('' 1e4) add ('' 1000e3) add ('1h~' 3600e3)
set ytics 100 nomirror add ('1ms' 1) add ('' 1e2) add ('' 1e4) add ('' 1000e3) add ('1h~' 3600e3) offset character 1
set cbtics ('0' 1, '1' 2, '10' 10, '$10^2$' 1e2, '$\ge10^3$' 1e3)
set format x '$10^{%T}$'
set format y '$10^{%T}$'
set format cb '$10^{%T}$'
set tics front
set xlabel offset character 0, character 1.5
set ylabel offset character 4.2, character 0

set label 1 at graph 0.5, graph 0.95 center '33\% Labelled' front

set xlabel "MAC Branch"
set ylabel "MAC Filter"
plot \
    "connected-cp-undir33-mac-branch-mac-filter-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "MAC Branch"
set ylabel "MAC Both"
plot \
    "connected-cp-undir33-mac-branch-mac-both-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "MAC Filter"
set ylabel "MAC Both"
plot \
    "connected-cp-undir33-mac-filter-mac-both-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set label 1 at graph 0.5, graph 0.95 center "Unlabelled" front

set xlabel "FC Branch"
set ylabel "FC Filter"
plot \
    "connected-cp-plain-fc-branch-fc-filter-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "FC Branch"
set ylabel "FC Both"
plot \
    "connected-cp-plain-fc-branch-fc-both-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

set xlabel "FC Filter"
set ylabel "FC Both"
plot \
    "connected-cp-plain-fc-filter-fc-both-heatmap.data" u 2:1:($3+1) matrix w image notitle axes x2y2, \
    x w l lc 'black' notitle axes x1y1

