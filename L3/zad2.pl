max_sum(List, End) :-
                            max_sum(List, 0, 0, End).

max_sum([], _, MaxTotal, End) :-
                             End is MaxTotal.

max_sum([Head | Tail], MaxLocal, MaxTotal, End) :-
                            NewMaxLocal is max(0, MaxLocal + Head),
                            NewMaxTotal is max(MaxTotal, NewMaxLocal),
                            max_sum(Tail, NewMaxLocal, NewMaxTotal, End).
