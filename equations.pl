listOfVars(X) :- X = [x1,x2].

dXdt(x1, Time, X1, X2, DX1) :-
  var(x1,X1),
  DX1 = -A * X1, A = 0.02.

dXdt(x2, Time, X1, X2, DX2) :-
  var(x1,X1),
  DX2 = A * X1, A = 0.02.

