set term pdf
set out 'time-pressure_img/ln42592-rn2916-ld0.6655-rd0.0455625-T1.0-last50.pdf'
set xlabel '{/Arial-Italic step}'
set ylabel '{/Arial-Italic pressure}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set yrange [-0.1:0.1]
plot 'time-pressure/ln42592-rn2916-ld0.6655-rd0.0455625-T1.0-last50.tp' u 1:2 title '圧力' with l
