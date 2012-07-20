euler(X_0, H, Stop) :-
  euler_step(X_0, H, Stop, [], X_ret),
  write(X_ret).

euler_step(X_n, H, Stop, X_list, [X_n|X_ret]) :-

  writef("X_n = "), write(X_n), nl,
  dTemp(X_n, DX_n),
  X_ni is X_n + H * DX_n,
  euler_step(X_ni, H, Stop, X_list, X_ret).
  
%  [diff(X1) :- -2.2 * X1^2, diff(X2) :- 2.2*X1^2],
%  X_n1 is X_n + H*(Func(T, X_n)).

dTemp(Temp,DTemp) :- 
  DTemp = - K*(Temp - TR),K = 2, TR = 10.

% X1 -> X2
%dX1(1,X) :- 
%  X = -2,2*X1.
%dX2(2,X) :-
%  X = 2,2*X1..


