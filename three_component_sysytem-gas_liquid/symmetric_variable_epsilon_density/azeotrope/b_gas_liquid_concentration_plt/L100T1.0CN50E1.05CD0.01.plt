set term pdf
set out 'azeotrope/b_gas_liquid_concentration_img/L100T1.0CN50E1.05CD0.01.pdf'
set xlabel '{/Arial-Italic 液相濃度}'
set ylabel '{/Arial-Italic 気相濃度}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set nokey
plot 'azeotrope/b_gas_liquid_concentration/L100T1.0CN50E1.05CD0.01.dat' u 2:1 with yerrorbars pt 0, x
