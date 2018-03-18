append([], L, L).
append([X | L1], L2, [X | L3]) :- append(L1, L2, L3).

ostatni([X], X).
ostatni([ _ | T], X) :- ostatni(T, X).

srodkowy([X], X).
srodkowy([ _ | T], X) :- append(S, [Z], T), srodkowy(S, X).
% srodkowy([ _ | T], X) :- append(S, [Z], T), srodkowy(S, X), ostatni(T, Z).
