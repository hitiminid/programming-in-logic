wariancja([],0):- !.
wariancja(L,W):-dllisty(L,D),sumlist(L,X),S is X/D,war(L,S,N),W is N/D.

dllisty(L,N):-listaakum(L,0,N).
listaakum([],A,A).
listaakum([G|O],A,N):-
	A1 is A+1,
	listaakum(O,A1,N).

war(L,S,N):- warakum(L,0,N,S).
warakum([],N,N,S).
warakum([G|O],A,N,S) :- A1 is A+ (G-S)**2,warakum(O,A1,N,S).
