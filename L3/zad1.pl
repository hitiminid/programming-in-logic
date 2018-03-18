srednia(Lista, Srednia) :-
													srednia(Lista, Srednia, 0, 0).

srednia([Head | Tail], Srednia, IloscElementow, Wynik) :-
													NowaIloscElementow is IloscElementow + 1,
													NowyWynik is Wynik + Head,
													srednia(Tail, Srednia, NowaIloscElementow, NowyWynik).

srednia([], Srednia, IloscElementow, Wynik) :- Srednia is Wynik / IloscElementow.




wariancja(Lista, Wynik) :-
													srednia(Lista, Srednia),
													wariancja(Lista, 0, 0, Srednia, Wynik).

wariancja([Head | Tail], Ilosc, Wynik, Srednia, Wariancja) :-
													Plus    is Head - Srednia,
													Minus   is Head + Srednia,
													Suma    is Minus * Plus,
													Wartosc is Wynik + Suma,
													NowaIlosc is Ilosc + 1,
													wariancja(Tail, NowaIlosc, Wartosc, Srednia, Wariancja).

wariancja([], Ilosc, Wynik, _, Wariancja) :- Wariancja is Wynik / Ilosc.
