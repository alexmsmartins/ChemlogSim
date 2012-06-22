horizontal(seg(point(X,Y),point(X1,Y))).
vertical(seg(point(X,Y),point(X,Y1))).

% exercise 2.5
regular(R) :- 
  R = rectagule(point(X,Y), point(XR,Y),
                point(X,YD),point(XR,YD)).
