%	Permutiation experiments
perm([],[]).
perm(L,[H|T]) :-
	append(V, [H|U],L),
	append(V,U,W), 
	perm(W,T).

test2([]).
test2([X|T]) :- 
	aminotodna(X,Combination),
	append(Combination,X,Y),
	%print(Y),
	test2(T).
/*
test([]).
test([X|T]) :-
	setof(Collector, aminotodna(X,Collector),Combinations),
	print(Combinations),
	%perm([Combinations], Y),
	test(T).
*/