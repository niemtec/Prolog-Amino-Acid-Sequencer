%	RANDOM ACTS OF INTELLIGENCE
%	TESTING PROLOG VARIATIONS

% Testing case example. See Almanac Page 35.
/*
test1([X|T]) :-

				(member(a,H) -> TallyA + 1; 
					member(t,H) -> TallyT + 1; 
					member(g,H) -> TallyG + 1; 
					member(c,H) -> TallyC + 1;),

	a==X -> addToA(1, Total),
	print(Total),
	test1(T).


test2(H) :-
	a==H, print('y').
*/
%======================================================
%PERMUTATION EXPERIMENTS

perm([],[]).
perm(L,[H|T]) :-
	append(V, [H|U],L),
	append(V,U,W), 
	perm(W,T).	

test3([],[]).
test3([H|T]) :-
	aminotodna(H,Combination),
	append(Combination, List),
	print(List),
	test3(T).


%	Broken Solution
/*
appendPerm(AppendedList,[H|Tail]) :- 
	aminotodna(H,X), append(AppendedList,X,Set),print(Set),
	nl, 
	appendPerm(AppendedList,Tail).

permutation([], 0).
permutation([H|T], 1) :- 
	aminotodna(H,X), print(X), 
	nl, 
	permutation(H, 1).
permutation([H, H1|T], 2) :- 
	aminotodna(H,X), aminotodna(H1,Y), append(Y,X,Z), print(Z), 
	nl, 
	permutation(T,2).
permutation([H, H1|T], Len) :- 
	aminotodna(H,X), aminotodna(H1,Y), append(Y,X,Z), appendPerm(Z,T).

perm([A|B]) :- 
	length([A|B], Len), permutation([A|B], Len).

*/
%	This is irrelevant, unless Swift is right.
%	aromaticnegative(X) :-
%		findall(Z,(aminoclass(Y,'Chemical','aromatic'), aminoname(_,Z,Y)), Aromatic),
%		print('Aromatic Amino Acids:'), nl, print(Aromatic), nl, nl,
%		findall(Z,(aminoclass(Y,'Charge','negative charged'), aminoname(_,Z,Y)), NegativeList),
%		print('Negative Charged Amino Acids:'), nl, print(NegativeList), nl, nl,
%		findall(Z,(aminoclass(Y,'Charge','uncharged'), aminoname(_,Z,Y)), Uncharged),
%		print('Uncharged Amino Acids:'), nl, print(Uncharged).



/*
printReport([H|T]) :-
	print(TallyA), nl,
	print(TallyT), nl,
	print(TallyG), nl,
	print(TallyC).
	*/