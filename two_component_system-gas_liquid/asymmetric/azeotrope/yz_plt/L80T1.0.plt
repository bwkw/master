set term pdf
set out 'azeotrope/yz_img/L80T1.0.pdf'
set xlabel '{/Arial-Italic A-composition-ratio}'
set ylabel '{/Arial-Italic X}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.0:1.0]
set tics font 'Arial,10'

plot 'azeotrope/yz/L80T1.0.dat' u 1:2 title 'y' with yerrorbars pt 4, 'azeotrope/yz/L80T1.0.dat' u 1:4 title 'z' with yerrorbars pt 4
