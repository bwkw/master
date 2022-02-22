set term pdf
set out 'azeotrope/yz_img/L80T1.1.pdf'
set xlabel '{/Arial-Italic A-composition-ratio}'
set ylabel '{/Arial-Italic X}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.0:1.0]
set tics font 'Arial,10'
plot 'azeotrope/yz/L80T1.1.dat' u 1:2 title 'y' smooth sbezier with points pt 1, 'azeotrope/yz/L80T1.1.dat' u 1:3 title 'z' smooth sbezier with points pt 1
