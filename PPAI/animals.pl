big( bear).       % Clause I
big( elephant).   % Clause 2
smal( cat).       % Clause 3
brown( bear).     % Clause 4
black( cat).      % Clause 5
gray( elephant).  % Vo Clause 6
dark( Z) :-       % Clause7: Anything black is dark
  black( Z). 
dark( Z) :-       % Clause8: Anything brown is dark
  brown( Z). 

