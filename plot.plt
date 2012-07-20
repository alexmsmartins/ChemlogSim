set title "Time series of concentrations"
#set yrange [75:105]
#set ytics (105, 100, 95, 90, 85, 80)
#set xrange [50:253]
set lmargin 9
set rmargin 2
set grid
#plot  "time_series/exp.csv" using 1 title "[A]"  with lines, \
#      "time_series/exp.csv" using 2 title "[B]" with lines

columns = "`awk '{if(NR == 1) print NF}' < time_series/exp.csv`"
print "The maximum number of columns is ", columns
plot for [i=2:columns] 'time_series/exp.csv' using 1:i notitle with lines



