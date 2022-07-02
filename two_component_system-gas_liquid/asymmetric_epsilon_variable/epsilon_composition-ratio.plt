set term pdf
set out 'epsilon_composition-ratio.pdf'
set xlabel '{/Arial-Italic epsilon}'
set ylabel '{/Arial-Italic A-compostion-ratio}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.9:1.2]
set tics font 'Arial,10'
set nokey
plot 'epsilon_composition-ratio.dat' with errorbars pt 0
