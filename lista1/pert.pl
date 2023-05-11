pertence(X,[X|_]).
pertence(X,[_|RESTO]) :- pertence(X,RESTO).


%append
ap([],L,L).
ap([X|L1], L2, [X|L3]) :- ap(L1, L2 ,L3).

%remover
rm(X,[X|Y],Y).
rm(X,[Y|Z],[Y|A]) :- rm(X,Z,A).


%estrutura
data(1,abril,2019).

