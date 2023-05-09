pot(0, 0, _) :- throw('Indefinido').
pot(B, E, R) :- R is B^E.