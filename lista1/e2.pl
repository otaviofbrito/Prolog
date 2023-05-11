comp([],0).
comp([_|B], X) :- comp(B,C), X is C + 1.
