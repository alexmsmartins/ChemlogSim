%family_relations.pl
% --- facts ---
parent( pam, bob).
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).


female( pam).
male( tom).
male( bob).
female( liz).
female( pat).
female( ann).
male( jim).

% --- rules ---
grandparent(X,Z) :- 
  parent(X,Y),
  parent(Y,Z).

offspring(X,Y) :- parent(Y,X).

sister(X,Y) :- 
  parent(Z,X),
  parent(Z,Y),
  female(X).
brother(X,Y) :- 
  parent(Z,X),
  parent(Z,Y),
  male(X).
mother(X,Y) :- 
  parent(X,Y),
  female(X).
father(X,Y) :- 
  parent(X,Y),
  male(X).

% exercise 1.3
happy(X) :- parent(X,_).


predecessor(X,Y) :-
  parent(X,Y).        % Rule prl: X is a predecessor Z
predecessor(X,Z) :- 
  parent(X,Y),      
  predecessor(Y,Z).  % Rule pr2: X is a predecessor Z

% exercise 2.7
relatives(X,Y) :-
  predecessor(X, Y);
  predecessor(Y, X);
  ( predecessor(Z, X), 
    predecessor(Z,Y)); 
  ( predecessor(X, Z),
    predecessor(Y, Z)). 

