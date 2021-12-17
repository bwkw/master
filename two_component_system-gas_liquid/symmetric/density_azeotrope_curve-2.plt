set term pdf
set out 'density_azeotrope_curve-2.pdf'
set xlabel '{/Arial-Italic A-composition-ratio}'
set ylabel '{/Arial-Italic X}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.0:1.0]
set tics font 'Arial,10'
set key font 'Arial,10'
plot 'density_azeotrope_curve-2.dat' with errorbars pt 6 ps 2