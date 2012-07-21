% setting/getting variables in equations
var(X,Y) :-
  (  number(Y)
  -> nb_setval(X,Y)
  ;  nb_getval(X,Y)  ).

