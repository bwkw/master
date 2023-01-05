set term pdf
set out 'difference_three_component_azeotrope_E2.0-two_component_azeotrope.pdf'
set xlabel '{/Arial-Italic 液相濃度}'
set ylabel '{/Arial-Italic 気相濃度}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
set key right bottom

plot 'two-component/L100T1.0.dat' u 2:1 with yerrorbars pt 0 title '二成分', 'three-component/L100T1.0CN50E2.0CD0.01.dat' u 2:1 with yerrorbars pt 0 title '三成分', x notitle
