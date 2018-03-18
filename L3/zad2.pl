maximum([X], X).
maximum([X | L], M) :-
                      maximum(L, M1),
                      porównaj(M1, X, M).

porównaj(M, X, X) :-
                      X > M.
porównaj(M, X, M) :-
                      X =< M.

max_sum([],0).
