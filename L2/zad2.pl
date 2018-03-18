member(X, [X | _]).
member(X, [_ | L]) :- member(X, L).

jednokrotnie(X, [X | T]) :- \+ member(X, T).
jednokrotnie(X, [Y | T]) :- jednokrotnie(X, T), X \= Y.

dwukrotnie(X, [X | T]) :- jednokrotnie(X, T).
dwukrotnie(X, [Y | T]) :- dwukrotnie(X, T),  X \= Y.
