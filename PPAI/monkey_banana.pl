% 2.5 Example: monkey and banana


% state(mkey_hor_pos, mkey_vert_pos, box_pos, mkey_has_banana).
state(atdoor, onfloor, atwindow, hasnot).

% Possible moves 
% (1) graspbanana,
move( state(middle,onbox,middle,hasnot),
      grasp,
      state(middle,onbox,middle,has)).

% (2) climb box,
move( state(P,onfloor,P,H),
      climb_box,
      state(P,onbox,P,H)).

% (3) pushbox,
move( state(P1,onfloor,P1,H),
      push_box(P1,P2),
      state(P2,onfloor,P2,H)).

% (4) walk around.
move( state(P1,onfloor,PB,H),
      walk(P1,P2),
      state(P2,onfloor,PB,H)).


% Can it get to the desirable state
canget(state(_,_,_,has)).

canget(S1) :-
  move(S1,M,S2),
  canget(S2).
