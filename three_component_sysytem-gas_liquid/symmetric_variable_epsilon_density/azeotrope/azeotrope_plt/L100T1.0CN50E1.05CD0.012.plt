set term pdf
set out 'azeotrope/azeotrope_img/L100T1.0CN50E1.05CD0.012.pdf'
set xlabel '{/Arial-Italic A-composition-ratio}'
set ylabel '{/Arial-Italic X}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.0:0.5]
set tics font 'Arial,10'
set nokey
plot 'azeotrope/azeotrope/L100T1.0CN50E1.05CD0.012.dat' with yerrorbars pt 0, 0.0
