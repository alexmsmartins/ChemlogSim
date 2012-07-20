% rule to get a concrete position in a list
pos(X,List,Ret) :-
  pos(X,List,1,Ret).

pos(X,[_|Tail],Curr,Ret) :-
  X > Curr,
  Next is Curr + 1,
  pos(X,Tail,Next,Ret).

pos(X,[Head|_],X,Head).
