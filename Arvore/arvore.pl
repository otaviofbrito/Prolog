pai(eduardo,otavio).
pai(eduardo,augusto).
pai(eduardo,vinicius).
pai(jose,eduardo).
pai(jose,ana).
pai(joao,luciana).
pai(joao,fernanda).
pai(joao,aline).
pai(arthur,jose).
pai(arthur,carlos).
pai(arthur,maria).
pai(lucas,isabela).
pai(lucas,alvaro).
pai(pedro,joao).
pai(paulo,rosa).
pai(paulo,beatriz).
pai(paulo,lucia).
pai(paulo,marcos).
pai(juliano,miguel).
pai(mauro,carolina).
pai(pablo,henrique).
pai(pablo,vitor).


mae(luciana,otavio).
mae(luciana,augusto).
mae(luciana,vinicius).
mae(isabela,eduardo).
mae(isabela,ana).
mae(rosa,luciana).
mae(rosa,fernanda).
mae(rosa,aline).
mae(luiza,jose).
mae(luiza,carlos).
mae(luiza,maria).
mae(manuela,isabela).
mae(manuela,alvaro).
mae(cecilia,joao).
mae(julia,rosa).
mae(julia,beatriz).
mae(julia,lucia).
mae(julia,marcos).
mae(ana,miguel).
mae(fernanda, carolina).
mae(aline,henrique).
mae(aline,vitor).




primo(X,Y) :- pai(Z,X),tio(Z,Y).
primo(X,Y) :- mae(Z,X),tio(Z,Y).


tio(X,Y) :- pai(Z,X),pai(Z,W),pai(W,Y).
tio(X,Y) :- primo(Z,Y),pai(X,Z).
tio(X,Y) :- primo(Z,Y),mae(X,Z).

neto(X,Y) :- pai(Y,W),pai(W,X).
neto(X,Y) :- pai(Y,W),mae(W,X).
neto(X,Y) :- mae(Y,W),mae(W,X).
neto(X,Y) :- mae(Y,W),pai(W,X).