set term pdf
set out 'azeotrope/yz_img/L80T1.1.fit.pdf'
set xlabel '{/Arial-Italic A-composition-ratio}'
set ylabel '{/Arial-Italic X}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.0:1.0]
set tics font 'Arial,10'

f(x) = a*x**2 + b*x + c
g(x) = d*x**2 + e*x + f
fit f(x) 'azeotrope/yz/L80T1.1.dat' u 1:2 via a, b, c
fit g(x) 'azeotrope/yz/L80T1.1.dat' u 1:3 via d, e, f

plot 'azeotrope/yz/L80T1.1.dat' u 1:2 title 'y' with points pt 1, f(x) title "y-fit" with line lt 1 lc rgb hsv2rgb(0, 1, 1)
replot 'azeotrope/yz/L80T1.1.dat' u 1:3 title 'z' with points pt 1, g(x) title "z-fit" with line lt 1 lc rgb hsv2rgb(1, 1, 0)
