set title "Time series of concentrations"
#set yrange [75:105]
#set ytics (105, 100, 95, 90, 85, 80)
#set xrange [50:253]
set lmargin 9
set rmargin 2
set grid
#plot sin(x)
plot  "time_series/exp.csv" using 1:1 title "[A]"  with lines, \
      "time_series/exp.csv" using 1:2 title "[B]" with lines


