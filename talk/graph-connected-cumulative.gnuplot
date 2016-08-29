# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.6in,2.4in standalone font '\scriptsize'
load "chromagreenblue.pal"

set output "gen-graph-connected-cumulative.tex"

set multiplot layout 1,2

set border 3

set xlabel "Runtime (ms)"
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('' 1000e3) add ('1h' 3600e3)
set ytics nomirror add ('' 27500)
set grid
set xrange [1:3600e3]
set yrange [0:27500]
set format x '$10^{%T}$'
set format y ''

set key Left at graph 1, graph 0.33

set title "Unlabelled"

plot \
    "../paper/connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:1) smooth cumulative ti "FC Both" lc rgb '#000080' dt 5, \
    "../paper/connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:1) smooth cumulative ti "MAC Both" lc rgb '#008080' dt 2, \
    "../paper/connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:1) smooth cumulative ti "Association" lc rgb '#90ee90'

set title '33\% Labelled'

set xlabel "Runtime (ms)"
set logscale x
unset logscale y
unset logscale cb
set xtics nomirror add ('1' 1) add ('' 1000e3) add ('1h' 3600e3)
set ytics nomirror add ('' 81400)
set grid
set xrange [1:3600e3]
set yrange [0:81400]
set format x '$10^{%T}$'
set format y ''

set key Left at graph 1, graph 0.33

plot \
    "../paper/connected-undir33.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:1) smooth cumulative ti "Association" lc rgb '#90ee90', \
    "../paper/connected-undir33.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:1) smooth cumulative ti "MAC Both" lc rgb '#008000' dt 2, \
    "../paper/connected-undir33.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:1) smooth cumulative ti "FC Both" lc rgb '#000080' dt 5

