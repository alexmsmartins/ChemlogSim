% Months = [jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec].

conc([],L,L).

conc([X|L1], L2, [X|List]) :-
  conc(L1, L2, List).



deletelast3(List) :-
  conc(LLL,[_,_,_],List).

