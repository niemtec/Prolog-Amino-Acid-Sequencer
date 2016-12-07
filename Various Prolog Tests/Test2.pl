append(X,[X|R],R).  
append(X,[F|R],[F|S]) :- append(X,R,S).

perm([],[]).
perm([X|Y],Z) :- perm(Y,W), append(X,Z,W).  




printlist([]).
printlist([H|T]) :- print(H), nl, printlist(T).




test([]).
test([X|T])	:-	
write(X), write(':::'), setof(Collector, aminotodna(X,Collector),Combinations), print(Combinations),nl,
test(T).



appendlist([], X, X).
appendlist([H|T], X, [H|L]) :- appendlist(T, X, L).

permutation([], []).
%permutation([X], [X]) :-!.
permutation([H|T], X) :- permutation(T, T1), appendlist(L1, L2, T1), appendlist(L1, [H], X1), appendlist(X1, L2, X).


test2(X,Y) :-
	test2(X,Y), write(Y).
