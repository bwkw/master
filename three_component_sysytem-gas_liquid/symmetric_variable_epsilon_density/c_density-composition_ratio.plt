set term pdf
set out 'c_density-composition_ratio.pdf'
set xlabel '{/Arial-Italic c-density}'
set ylabel '{/Arial-Italic B-compostion-ratio}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.000:0.015]
set yrange [0.5:]
set tics font 'Arial,10'
set nokey
plot 'c_density-composition_ratio.dat' with errorbars pt 0
