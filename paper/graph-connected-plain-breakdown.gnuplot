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

set ytics nomirror
# set ytics nomirror add ('' 80000) ('81400' 81400)
# set yrange [1:81400]

# set rmargin 10

set title "bvg"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs10"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "m2D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs30"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "m3D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs50"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "m4D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs70"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "rand"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs90"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'
set title "bvg"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"bvg"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs10"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs10"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "m2D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"m2D"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs30"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs30"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "m3D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"m3D"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs50"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs50"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "m4D"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"m4D"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs70"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs70"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "rand"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(10)eq"rand"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'

set title "mcs90"
plot \
    "connected-plain.data" u (sprintf("%.1e",$4*1000)+0):($4>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "MAC Both" lc rgb '#7a0177' dt 2, \
    "connected-plain.data" u (sprintf("%.1e",$3*1000)+0):($3>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "MAC Branching" lc rgb '#AE017E' dt 3, \
    "connected-plain.data" u (sprintf("%.1e",$2*1000)+0):($2>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "MAC Filtering" lc rgb '#DD3497' dt 4, \
    "connected-plain.data" u (sprintf("%.1e",$7*1000)+0):($7>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "FC Both" lc rgb '#238443' dt 5, \
    "connected-plain.data" u (sprintf("%.1e",$6*1000)+0):($6>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "FC Branching" lc rgb '#41AB5D' dt 6, \
    "connected-plain.data" u (sprintf("%.1e",$5*1000)+0):($5>=3600?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "FC Filtering" lc rgb '#78C679' dt 7, \
    "connected-plain.data" u (sprintf("%.1e",$8)+0):($8>=3600e3?1e-10:strcol(9)eq"mcs90"?1:0) smooth cumulative ti "Association" lc rgb '#4393C3'
