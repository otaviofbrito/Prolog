max([X],X).
max([A|B],A) :- max(B,C), A>C.
max([A|B],C) :- max(B,C), C>=A.