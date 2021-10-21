set term pdf
set out 'density_img/lna21296-lnb21296-lda0.33275-ldb0.33275-T0.85.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/lna21296-lnb21296-lda0.33275-ldb0.33275-T0.85.density' u 1:2 title '粒子A', 'density/lna21296-lnb21296-lda0.33275-ldb0.33275-T0.85.density' u 1:3 title '粒子B',
