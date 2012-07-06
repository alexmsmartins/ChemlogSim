% Months = [jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec].

deletelast3(List) :-
  conc(LLL,[_,_,_],List).

