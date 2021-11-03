set term pdf
set out 'density_img/T0.7/lna21296-lnb21296-lda0.33275-ldb0.33275.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/T0.7/lna21296-lnb21296-lda0.33275-ldb0.33275.density' u 1:2 title '粒子A', 'density/T0.7/lna21296-lnb21296-lda0.33275-ldb0.33275.density' u 1:3 title '粒子B',
