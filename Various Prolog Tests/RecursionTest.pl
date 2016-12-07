printlist([]).
printlist([H|T]) :- print(H),nl,printlist(T).