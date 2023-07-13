pertence(X,[X|_]).
pertence(X,[_|B]) :- pertence(X,B).

ap([],L1,L1).
ap([A|B],L2,[A|C]) :- ap(B,L2,C).

apaga(X,[X|C],C).
apaga(X,[A|C], [A|D]) :- apaga(X,D,C).

reversa([X],[X]).
reversa([A|B], Y) :- reversa(B, C), ap(C,[A],Y).

add(X,L,L) :- pertence(X,L).
add(X,Y, [X|Y]).


comp([],0).
comp([_|B], C) :- comp(B,X), C is X + 1. 

a:-a(0).
a(X):- X>10,!.
a(X):- write(X),write(' '), X1 is X+1,a(X1).

wN(0):-write(0),!.
wN(N):-write(N),N1 is N-1, wN(N1),write(N).


pir1(0,Y) :- foreach(between(1,Y,_), write(' ')), wN(0).
pir1(X,Y) :- X1 is X-1, pir1(X1,Y), nl,Z is Y-X,foreach(between(1,Z,_), write(' ')), wN(X),!.

pir2(0,Y) :- foreach(between(1,Y,_), write(' ')), wN(0).
pir2(X,Y) :- Z is Y-X ,foreach(between(1,Z,_), write(' ')), wN(X), nl, X1 is X-1, pir2(X1,Y),!.

losan(X) :- pir1(X,X),nl,pir2(X,X).


pow1(0,_,0).
pow1(_,0,1).
pow1(X,Y,Z) :- Y1 is Y-1, pow1(X,Y1,C), Z is X*C.


d(0).
d(1).


palindromo([]):- true,!.
palindromo(X) :- reversa(X,Y), X==Y.

metIguais([X,X]) :- true,!.
metIguais(Z) :- ap(X,Y,Z),X==Y.


insOrd(X,[],[X]).
insOrd(X,[A|B],[X|C]):- X<A, ap([A],B,C).
insOrd(X,[A|B],[A|C]) :- X>=A, insOrd(X,B,C).


particiona([],[],[]).
particiona([X|[]],[X],[]).
particiona([X,Y],[X],[Y]).
particiona([A,B|C], [A|L1], [B|L2]) :- particiona(C,L1,L2),!.


merge1([],[],[]).
merge1([X],[],[X]).
merge1([],[X],[X]).
merge1(X,[],X).
merge1([],X,X).
merge1([A|B],[C|D],[A|E]) :- A<C, merge1(B,[C|D],E),!.
merge1([A|B],[C|D],[C|E]) :- A>=C, merge1([A|B],D,E),!.


max(X,Y,M):- X>Y, M=X,!.
max(X,Y,M):- X=<Y, M=Y.




pred1([],[]).
pred1(X,Y) :- findall([A],pertence(A,X),Y).

soma(A,B,C) :- C is A+B. 

pred2([],[]).
pred2(X,Y) :- findall(soma(A,A),pertence(A,X),Y).


pred3([],[]).
pred3(X,Y) :- findall(['z',A],pertence(A,X),Y).


% oper(fa, [M1,M2,M3,C1,C2], [M1,M2,C1,C2]) :- L \= C, C \= R
% oper(fb, [M1,M2,C1,C2], [M1,M2,C1,C2]) :-  L \= C, C \= R
% oper(la, [M1,M2,C1,C2], [M1,M2,C1,C2]) :-  C \= R ; R = b
% oper(lb, [b,b,C,R], [a,a,C,R]) :-  C \= R ; R = a
% oper(ca, [a,L,a,R], [b,L,b,R]).
% oper(cb, [b,L,b,R], [a,L,a,R]).
% oper(ra, [a,L,C,a], [b,L,C,b]) :- L \= C; C=b
% oper(rb, [b,L,C,b], [a,L,C,a]) :- L \= C ; C=a

