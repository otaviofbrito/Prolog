
%FATOS
pai(joao,lucas).
pai(joao,joaquim).
pai(joaquim,bruno).
pai(pedro,silvia).

mae(maria, lucas).
mae(maria, joaquim).
mae(silvia, bruno).
mae(laura, silvia).


tem_filho(X) :- pai(X,_).
tem_filho(X) :- mae(X,_).


%REGRA
avo(A,C) :- pai(A,B),pai(B,C).
avo(A,C) :- pai(A,B),mae(B,C).


ant(A,Z) :- pai(A,Z).
ant(A,Z) :- mae(A,Z).
ant(A,Z) :- pai(A,B),ant(B,Z).
ant(A,Z) :- mae(A,B),ant(B,Z).

parente(A,B) :- ant(C,A),ant(C,B).

