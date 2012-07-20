%%%%%%%%%%%%%%%%%%%%%5%%%%%%%%%%%%%%%%%%%%
% 
% Newton's cooling law
% 
% Possible solution in prolog for
% http://rosettacode.org/wiki/Euler_method
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

diff(ncl(t), Result) :-
  Result is -k * (ncl(t+h) - ncl(t)).

ncl(0,Return) :- 
  ncl(t, Return) :-
