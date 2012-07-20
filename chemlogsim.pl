:-
  % get the differential equations
  % apply euler's method
  consult('euler_systems_ODE.pl'),

  euler(100,0 , 0, 10, 200,X1_ts, X2_ts),

  % save results to file
  tell('concentrations.csv'),
  write(xxx),
  told,
  
  % execute gnuplot
  shell('gnuplot -p plot.plt').
