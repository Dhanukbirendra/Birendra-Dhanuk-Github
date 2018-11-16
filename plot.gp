set term postscript enhanced color 'Helvetica-Bold' 20 
set output 'legendre.ps'
set xr [-1.00:1.00]
set yr [-1.0:1.0]
set style line 2 lt 1 lw 3 lc rgb 'blue'
set style line 3 lt 1 lw 3 lc rgb 'forest-green'
set style line 4 lt 1 lw 3 lc rgb 'red'
set style arrow 1 lt 2 lw 1 lc rgb 'black' nohead
set arrow from -1.00, 0.0 to 1.00,0.0 as 1
set arrow from 0.0, -1.0 to 0.0,1.0 as 1
set xl 'x'
set yl 'P_n(x)'
plot 'legendre.dat' u 1:2 w l ti 'P_2(x)' ls 2,\
 'legendre.dat' u 1:3 w l ti 'P_3(x)' ls 3,\
 'legendre.dat' u 1:4 w l ti 'P_4(x)' ls 4,\
 'legendre.dat' u 1:5 w l ti 'P_5(x)' ls 5
set output
! ps2pdf legendre.ps


