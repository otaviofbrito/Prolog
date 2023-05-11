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
listarev([],[]).
listarev([A|B],C) :- listarev(B,D), ap(D,[A],C).

%IN
in(X,[X|_]) :- !.
in(X,[_|B]) :- in(X,B).

%ADD 
add(X,L,L) :- in(X,L),!.
add(X,L,[X|L]).

%LISTA
%2
remove_duplicado([],[]).
remove_duplicado([A|B], C) :- member(A,B),remove_duplicado(B,C),!.
remove_duplicado([A|B], [A|C]) :- remove_duplicado(B,C),!.


%3
troca([],_,_,[]).
troca([X|B],X,Y,[Y|C]) :- troca(B,X,Y,C),!.
troca([A|B],X,Y,[A|C]) :- troca(B,X,Y,C),!. 


%4
potencia([],[]).
potencia([A|B],[A|C]) :- potencia(B,C).
potencia([_|B], C) :- potencia(B,C). 

pot(X,Y) :- findall(L,potencia(X,L),Y).


%5
mais_longa([],[_|_]).
mais_longa([_|B],[_|D]) :- mais_longa(B,D).


%6
distancia(X,X,0) :- !.
distancia((X,Y),(X1,Y1), R) :- Y3 is Y1-Y, X3 is X1-X, V is X3*X3 + Y3*Y3, R is sqrt(V).


%7

linha(0,_) :- nl.
linha(X,C) :- write(C),write(" "), N is X - 1, linha(N,C),!.

quadro(0,_,_) :- !.
quadro(N,M,C) :- linha(M,C), N1 is N - 1,quadro(N1,M,C),!.

quadrado(X,C) :- quadro(X,X,C).


%8
elemento_n([X|_],1,X) :- !.
elemento_n([_|B],E,C) :- E1 is E - 1,elemento_n(B,E1,C),!.

%9
qtd([],0).
qtd([_|B],C) :- qtd(B,D),C is D + 1.

soma([],0).
soma([A|B],C) :- soma(B,D), C is D + A,!.

media(X,C) :- soma(X,S), qtd(X,Q), C is S/Q.


%10
minimo([X],X).
minimo([A|B],A) :- minimo(B,D), A<D,!.
minimo([A|B],C) :- minimo(B,C), A>=C,!.


%11
intervalo(X,X,[X]).
intervalo(X,Y,[X|B]) :- X < Y, X1 is X + 1,intervalo(X1,Y,B).

%12
mdc(X,X,X).
mdc(X,Y,C) :- X < Y, Y1 is Y - X,mdc(X,Y1,C).
mdc(X,Y,C) :- X > Y, mdc(Y,X,C).

%13
ocorrencias(_,[],0).
ocorrencias(X,[X|B],C) :- ocorrencias(X,B,C1), C is C1 + 1.
ocorrencias(X,[_|B],C) :- ocorrencias(X,B,C).


%14
divisores(X,C) :- findall(L,(between(1,X,L), X mod L =:= 0),C).