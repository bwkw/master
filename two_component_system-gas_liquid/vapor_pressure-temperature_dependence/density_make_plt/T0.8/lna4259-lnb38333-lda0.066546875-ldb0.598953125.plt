set term pdf
set out 'density_img/T0.8/lna4259-lnb38333-lda0.066546875-ldb0.598953125.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density_dat/T0.8/lna4259-lnb38333-lda0.066546875-ldb0.598953125.dat' u 1:2 title '粒子A', 'density_dat/T0.8/lna4259-lnb38333-lda0.066546875-ldb0.598953125.dat' u 1:3 title '粒子B',
