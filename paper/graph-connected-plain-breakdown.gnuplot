# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.5in,6.8in font '\scriptsize'

set output "gen-graph-connected-plain-breakdown.tex"

set multiplot layout 5,2

set border 3

set nokey

set logscale x
unset logscale y
set xtics nomirror add ('1' 1) add ('1h' 3600e3)
set grid
set xrange [1:3600e3]
set format x '$10^{%T}$'
unset format y

# set ytics nomirror add ('' 80000) ('81400' 81400)
# set yrange [1:81400]

# set rmargin 10

set title "bvg"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "bvg"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "bvg"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "bvg"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(7) eq "bvg"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs10"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs10"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs10"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs10"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs10"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "m2D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m2D"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m2D"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m2D"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(7) eq "m2D"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs30"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs30"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs30"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs30"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs30"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "m3D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m3D"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m3D"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m3D"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(7) eq "m3D"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs50"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs50"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs50"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs50"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs50"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "m4D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m4D"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m4D"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "m4D"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(7) eq "m4D"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs70"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs70"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs70"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs70"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs70"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "rand"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "rand"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "rand"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(7) eq "rand"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(7) eq "rand"?1:0) smooth cumulative notitle lc rgb '#7A0177'

set title "mcs90"
plot \
    "connected-plain.data" u (sprintf("%.1e",$2 * 1000)+0):($2 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs90"?1:0) smooth cumulative notitle lc rgb '#CCEBC5' dt "_", \
    "connected-plain.data" u (sprintf("%.1e",$3 * 1000)+0):($3 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs90"?1:0) smooth cumulative notitle lc rgb '#4EB3D3' dt "-", \
    "connected-plain.data" u (sprintf("%.1e",$4 * 1000)+0):($4 * 1000 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs90"?1:0) smooth cumulative notitle lc rgb '#08589E' dt ".", \
    "connected-plain.data" u (sprintf("%.1e",$5)+0):($5 >= 3600e3 ? 1e-10 : strcol(6) eq "mcs90"?1:0) smooth cumulative notitle lc rgb '#7A0177'

