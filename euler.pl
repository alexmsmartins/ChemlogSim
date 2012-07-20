euler(X_0, T_0, H, Stop) :-
  euler_step(X_0, T_0, H, Stop, [], X_ret).

euler_step(X_n, T_n, H, Stop, X_list, [X_n|X_ret]) :-
  T_n < Stop,
  write(T_n),tab(2), write(X_n), nl,
  dTemp(T_n, X_n, DX_n),
  T_n1 is T_n + H,
  X_n1 is X_n + H * DX_n,
  euler_step(X_n1, T_n1, H, Stop, X_list, X_ret).
  
euler_step(X_n, H, T_n, Stop, X_list, []) :-
  T_n >= Stop.

%  [diff(X1) :- -2.2 * X1^2, diff(X2) :- 2.2*X1^2],
%  X_n1 is X_n + H*(Func(T, X_n)).

dTemp(Time, Temp, DTemp) :- 
  DTemp = - K*(Temp - TR),K = 0.072, TR = 20.

% X1 -> X2
%dX1(1,X) :- 
%  X = -2,2*X1.
%dX2(2,X) :-
%  X = 2,2*X1..


