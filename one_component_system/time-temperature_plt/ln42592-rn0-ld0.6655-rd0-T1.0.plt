set term pdf
set out 'time-temperature_img/ln42592-rn0-ld0.6655-rd0-T1.0.pdf'
set xlabel '{/Arial-Italic step}'
set ylabel '{/Arial-Italic pressure}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set yrange [-0.05:0.05]
plot 'time-temperature/ln42592-rn0-ld0.6655-rd0-T1.0.tt' u 1:2 title '圧力' with l
