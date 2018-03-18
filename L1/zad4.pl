% relacja antysymetryczna - jeśli (x,y) oraz (y,x) to x = y
% element maksymalny - nie ma elementow wiekszych od niego (jesli x <= y to x = y)
% element najwiekszy - jest wiekszy od kazdego elementu zbioru

le(g,g).
le(h,h).
le(i,i).
le(j,j).
le(k,k).
le(l,l).
le(g,h).
le(g,i).
le(g,j).
le(g,k).
le(g,l).
le(h,j).
le(h,l).
le(i,l).
le(j,l).
le(k,l).

maksymalny(X) :- \+ (le(X, Y), Y \= X).
minimalny(X)  :- \+ (le(Y, X), X \= Y).

% najmniejszy - jest minimalny i nie ma innego minimalnego oprocz niego
najmniejszy(X) :- minimalny(X),  \+ (minimalny(Y),  (le(Y, _), Y \= X)).
najwiekszy(X)  :- maksymalny(X), \+ (maksymalny(Y), (le(_, Y), Y \= X)).
