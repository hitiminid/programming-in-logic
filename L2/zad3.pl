arc(a, b).
arc(b, a).
arc(b, c).
arc(c, d).

route(X, Y, L) :-
  arc(X, Y);
  (arc(X, W), \+ member(W,L), route(W, Y, [W|L])).
osiagalny(X, Y) :- route(X, Y, [X]).
