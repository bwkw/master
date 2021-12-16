set term pdf
set out 'ab_gasliquid_density3.pdf'
set xlabel '{/Arial-Italic A-composition-ratio}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.0:1.0]
set tics font 'Arial,10'
set key font 'Arial,10'
set key right outside
set key spacing 1.4
plot 'ab_gasliquid.density3' u 1:2 title '粒子Aの気相密度', 'ab_gasliquid.density3' u 1:4 title '粒子Bの気相密度',
