% http://stackoverflow.com/questions/5920450/learning-prolog

a(b(1)).
a(b(2)).
a(b(3)).
a(b(4)).
a(b(6)).

print_b_even(Match) :-
  Match = a(b(X)),
  Y = X mod 2,
  Y = 0,
  writeln(b(X)).
