father(zeus, ares).
father(ares, harmonia).
father(cadmus, semele).
father(zeus, dionysus).
mother(hera, ares).
mother(aphrodite, harmonia).
mother(harmonia, semele).
mother(semele, dionysus).
man(zeus).
man(ares).
man(cadmus).
man(dionysus).
woman(hera).
woman(aphrodite).
woman(harmonia).
woman(semele).

  
jest_rodzicem(X, Y) :- mother(X, Y); father(X,Y).
jest_dzieckiem(X, Y) :- mother(Y, X); father(Y, X).
jest_ojcem(X) :- father(X).
jest_matka(X) :- mother(X).
jest_synem(X) :- man(X), jest_dzieckiem(X, _).
% jest_corka(X) :- woman(X), jest_dzieckiem(X, _).
siostra(X, Y) :- woman(X), jest_dzieckiem(X, _), jest_dzieckiem(Y, _), X \= Y.
dziadek(X, Y) :- father(X, Z), jest_rodzicem(Z, Y).
% babcia(X, Y)  :- mother(X, Z), jest_rodzicem(Z, Y).
rodzenstwo(X, Y) :- jest_dzieckiem(X, Z), jest_dzieckiem(Y, Z).
