gcd(X,X,X).

gcd(X,Y,D) :-
  X < Y,
  Diff is Y - X,
  gcd(X,Diff,D).

gcd(X,Y,D) :-
  Y < X,
  gcd(Y,X,D).
