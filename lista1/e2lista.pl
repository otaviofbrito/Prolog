%n
nesimo(1,[A|_],A).
nesimo(N,[_|B],C) :- N1 is N - 1,nesimo(N1,B,C).

%soma
total([],0).
total([X|Y], C) :- total(Y,S), C is X + S.


%permutacao
seleciona(X,[X|Y],Y).
seleciona(X,[Y|Z],[Y|W]) :- seleciona(X,Z,W).

perm(A,[B|D]) :- seleciona(B,A,C), perm(C,D).
perm([],[]).