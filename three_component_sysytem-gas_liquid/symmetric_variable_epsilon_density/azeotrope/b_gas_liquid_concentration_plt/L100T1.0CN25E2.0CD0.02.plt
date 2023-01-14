set term pdf
set out 'azeotrope/b_gas_liquid_concentration_img/L100T1.0CN25E2.0CD0.02.pdf'
set xlabel '{/Arial-Italic 液相濃度}'
set ylabel '{/Arial-Italic 気相濃度}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set nokey
plot 'azeotrope/b_gas_liquid_concentration/L100T1.0CN25E2.0CD0.02.dat' u 3:1:($3-$4):($3+$4):($1-$2):($1+$2) with xyerrorbars pt 0 ps 0, x
