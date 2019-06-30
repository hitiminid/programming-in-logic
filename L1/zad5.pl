le(a,a).
le(a,b).
le(a,c).
le(a,d).
le(b,b).
le(b,c).
le(b,d).
le(c,c).
le(c,d).
le(d,d).

czesciowyporzadek :-
  (\+ ((le(X,_); le(_,X)), \+ le(X,X))),
  (\+ (le(X,Y),le(Y,Z), \+ le(X,Z))),
  (\+ (le(X,Y),le(Y,X),Y \= X)).
