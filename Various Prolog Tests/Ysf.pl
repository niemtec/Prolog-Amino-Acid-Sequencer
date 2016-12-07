dnapermutation([],[]).									%Stopping codition (4)
dnapermutation([Head|Tail], [Combination|C]) :-			%(1)
	aminotodna(Head, Combination),						%(2)
dnapermutation(Tail,C).									%(3)



my_flatten([], []).	%an empty list is derived
my_flatten(X, [X]) :-
	\+ is_list(X).	%turn nested list into an element
my_flatten([X|Xs], Zs) :-
	my_flatten(X,Y),
	my_flatten(Xs, Ys),
	append(Y, Ys, Zs). %appends the elements together into one list

countDna([]).
countDna([H|T]) :-
	dnapermutation([H|T], L2), nl, 
	print(L2), nl,
	my_flatten(L2, Set),
	write('g: '), count(g, Set, N), print(N), nl,
	write('a: '), count(a, Set, N2), print(N2), nl,
	write('c: '), count(c, Set, N3), print(N3), nl,
	write('t: '), count(t, Set, N4), print(N4).