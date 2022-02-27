set term pdf
set out 'azeotrope/yz_img/L80T1.0.pdf'
set xlabel '{/Arial-Italic A-composition-ratio}'
set ylabel '{/Arial-Italic X}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.4:0.6]
set tics font 'Arial,10'

plot 'azeotrope/yz/L80T1.0.dat' u 1:2 title 'y' smooth sbezier with lines lc 1, 'azeotrope/yz/L80T1.0.dat' u 1:3 title 'z' smooth sbezier with lines lc 1
