euler(X1_0, X2_0, T_0, H, Stop) :-
  euler_step(X1_0, X2_0, T_0, H, Stop, [], [], X1_ret, X2_ret).

euler_step(X1_n, X2_n, T_n, H, Stop, X1_list, X2_list, [X1_n|X1_ret], [X2_n|X2_ret]) :-
  T_n < Stop,
  write(T_n),tab(2), write(X1_n),tab(2), write(X2_n), nl,

  dX1(T_n, X1_n, X2_n, DX1_n),
  X1_n1 is X1_n + H * DX1_n,

  dX2(T_n, X1_n, X2_n, DX2_n),
  X2_n1 is X2_n + H * DX2_n,

  T_n1 is T_n + H,
  euler_step(X1_n1, X2_n1, T_n1, H, Stop, X1_list, X2_list, X1_ret, X2_ret).
  
euler_step(X1_n, X2_n, H, T_n, Stop, X1_list, X2_list, [], []) :-
  T_n >= Stop.

%  [diff(X1) :- -2.2 * X1^2, diff(X2) :- 2.2*X1^2],
%  X_n1 is X_n + H*(Func(T, X_n)).

% Generalize this to include a system of ODEs
dX1(Time, X1, X2, DX1) :- 
  DX1 = -A * X1, A = 0.02.

dX2(Time, X1, X2, DX2) :- 
  DX2 = A * X1, A = 0.02.

