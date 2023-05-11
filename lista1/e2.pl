comp(0,[]).
comp(X,[_|Z]) :- comp(Y,Z), X is Y + 1.
