
use_module(library(assoc)).
exec_something(Val) :-
  empty_assoc(Assoc),
  put_assoc(x1,Assoc,2.3,NewAssoc),
  put_assoc(x2,NewAssoc,4.3,NewAssoc2),
  assoc_to_list(NewAssoc2,List),
  get_assoc(x2, NewAssoc2,Val),
  list_to_assoc([x1-2.3, x2-4.3],Ass).
