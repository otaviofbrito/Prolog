max(X,[X]).
max(X,[X|Y]) :- max(Z,Y), X > Z.
max(Z,[X|Y]) :- max(Z,Y), Z >= X.

%comprimento
comp(0,[]).
comp(X,[_|B]) :- comp(C,B), X is C + 1.

%N_esimo
nesimo(1,[X|_], X).
nesimo(N,[_|B],X) :- N2 is N - 1, nesimo(N2,B,X).


%total
total([X],X).
total([A|B],X) :- total(B,C), X is C + A.

%select
select(X,[X|B],B).
select(X,[A|B],[A|C]) :- select(X,B,C).

%append
ap([],L,L).
ap([A|B], L2, [A|C]) :- ap(B,L2,C).

%permuta
perm(X,[A|B]) :- select(A,X,C), perm(C,B). 
perm([],[]).

%lista reversa
listarev([X],[X]).
listarev([A|B],C) :- listarev(B,D), ap(D,[A],C).

