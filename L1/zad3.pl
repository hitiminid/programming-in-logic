left(motyl, ryba).
left(klepsydra, motyl).
left(olowek, klepsydra).
above(aparat, motyl).
above(rower, olowek).

right(X, Y) :- left(Y,  X).
below(X, Y) :- above(Y, X).

left_of(X, Y)  :- left(X, Y);  (left(X, Z),  left_of(Z, Y)).
above_of(X, Y) :- above(X, Y); (above(X, Z), above_of(Z, Y)).

higher(X, Y)   :- above_of(X, Y); ((above(X, A), above(Y, B), higher(A,B))); (above(X, _), \+ above(Y, _)).
