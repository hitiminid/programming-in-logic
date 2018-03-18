ma(joe, house).
ma(paul, auto).
ma(lisa, watch).
ma(maria, flower).

daje(1, joe, house, lisa).
daje(1, paul, auto, lisa).
daje(3, lisa, house, maria).
daje(2, maria, flower, lisa).
daje(8, lisa, flower, joe).

nieOddal(Pocz, Koniec, Kto, Co) :- \+ (between(Pocz, Koniec, N), daje(N, Kto, Co, _)), !.

ma(Kiedy, Kto, Co) :-
	ma(Kto, Co),
	daje(Koniec,_,_,_),
	nieOddal(0, Koniec, Kto, Co),
	between(0, Koniec, Kiedy).

ma(Kiedy, Kto, Co) :-
	daje(Pocz,_,Co, Kto),
	daje(Koniec,_,Co,_),
	X is Koniec-1,
	nieOddal(Pocz, X, Kto, Co),
	between(Pocz, X, Kiedy).

ma(Kiedy, Kto, Co) :-
	daje(Kiedy,_,Co, Kto),     					 
	\+ (daje(Y, Kto, Co, _), Y > Kiedy).
