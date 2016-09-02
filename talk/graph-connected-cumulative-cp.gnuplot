# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.6in,2.4in standalone font '\scriptsize'
load "chromagreenblue.pal"

set output "gen-graph-connected-cumulative-cp.tex"

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
    "../paper/connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:1) smooth cumulative ti "FC Both" lc rgb '#ffb948' lw 2, \
    "../paper/connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:1) smooth cumulative ti "FC Branch" lc rgb '#84bd00' lw 2, \
    "../paper/connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:1) smooth cumulative ti "FC Filter" lc rgb '#009dec' lw 2

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
    "../paper/connected-undir33.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:1) smooth cumulative ti "MAC Both" lc rgb '#ffb948' lw 2, \
    "../paper/connected-undir33.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:1) smooth cumulative ti "MAC Branch" lc rgb '#84bd00' lw 2, \
    "../paper/connected-undir33.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:1) smooth cumulative ti "MAC Filter" lc rgb '#009dec' lw 2

