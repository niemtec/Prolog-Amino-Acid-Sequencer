perms([Head|Tail]) :- 
	dnaPermutation([Head|Tail], Sequence),
	append(Sequence, FlatSequence),
	print(FlatSequence), nl,
perms(Sequence).


dnaPermutation([],[]).	%	Stopping condition (compound term)
dnaPermutation([A|B], [C|D]) :-
	aminotodna(A, C),
dnaPermutation(B, D).