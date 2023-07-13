pertence(X,[X|_]).
pertence(X,[_|Z]) :- pertence(X,Z).


ap([],L,L).
ap([A|B], L2, [A|C]) :- ap(B,L2,C).



apaga(X,[X|B],B).
apaga(X,[A|B],[A|Z]) :- apaga(X,B,Z).


maximo(X,[X]).
maximo(X,[X|B]) :- maximo(Z,B), X>Z.
maximo(X,[A|B]) :- maximo(X,B) , X>=A.

comprimento(0,[]).
comprimento(X,[_|B]) :- comprimento(X1,B), X is X1 + 1.

nesimo1(1,[Y|_],Y).
nesimo1(X,[_|B],Y) :- X1 is X - 1, nesimo1(X1,B,Y).   

total([],0).
total([A|B],X) :- total(B,Y), X is A + Y.


rev([],[]).
rev([A|B],Y) :- rev(B,X), ap(X,[A],Y).

%[[1,2,3],[4,5,8],[7,8,9]] = [[1,2,4,5],...]


blocks([],[]).
blocks([[A,B,C,D]|W]) :- ap() .
