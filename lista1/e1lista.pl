analisa([X|_]) :- write("A cabeca da lista eh "),write(X).
analisa([_|X]) :- write("A cauda da lista eh "),write(X).
analisa([]) :- write("A lista eh vazia").