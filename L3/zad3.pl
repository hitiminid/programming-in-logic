even_permutation([], []).

even_permutation([X|L], Perm) :-
    even_permutation( L, Perm1),
    insertodd(X, Perm1, Perm).

even_permutation([X|L], Perm) :-
    odd_permutation(L, Perm1),
    inserteven(X, Perm1, Perm).

odd_permutation([X|L], Perm) :-
    odd_permutation(L, Perm1),
    insertodd(X, Perm1, Perm).

odd_permutation([X|L], Perm) :-
    even_permutation(L, Perm1),
    inserteven(X, Perm1, Perm).

insertodd(X, WLista, ZLista) :- ZLista is [X|WLista].
insertodd(X, [Y,Z|WLista], [Y,Z|ZLista]) :-
    insertodd(X, WLista, ZLista).

inserteven(X, [Y|WLista], [Y,X|WLista]).
inserteven(X, [Y,Z|WLista], [Y,Z|ZLista]) :-
    inserteven(X, WLista, ZLista).
