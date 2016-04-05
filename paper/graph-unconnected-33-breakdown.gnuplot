# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.5in,6.8in font '\scriptsize'

set output "gen-graph-unconnected-33-breakdown.tex"

set multiplot layout 5,2

set border 3

set nokey

set logscale x
unset logscale y
set xtics nomirror add ('1' 1) add ('10' 10) add ('1h' 3600e3)
set grid
set xrange [1:3600e3]
set format x '$10^{%T}$'
unset format y

set ytics nomirror
# set ytics nomirror add ('' 80000) ('81400' 81400)
# set yrange [1:81400]

# set rmargin 10

set title "bvg"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(5) eq "bvg"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(5) eq "bvg"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs10"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs10"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs10"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "m2D"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(5) eq "m2D"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(5) eq "m2D"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs30"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs30"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs30"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "m3D"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(5) eq "m3D"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(5) eq "m3D"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs50"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs50"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs50"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "m4D"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(5) eq "m4D"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(5) eq "m4D"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs70"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs70"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs70"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "rand"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(5) eq "rand"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(5) eq "rand"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs90"
plot \
    "unconnected-33.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs90"?1:0) smooth cumulative notitle lc rgb '#4EB3D3', \
    "unconnected-33.data" u (sprintf("%.1e",$3)+0):($3 >= 3600e3 ? 1e-10 : strcol(4) eq "mcs90"?1:0) smooth cumulative notitle lc rgb '#7A0177'

