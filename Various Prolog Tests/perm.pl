
%	print a combination of all possible values entered as a list
%	e.g. perm([1,2,3], X).
perm([],[]).
perm(L,[H|T]) :-
	append(V,[H|U], L),
	append(V,U,W), 
	perm(W,T).


%prints off lists containing combination lists (WARNING: LIST WITHIN LIST!)
% TODO:
%	- FLATTEN THE COMBINATION OUTPUT TO A SET OF LISTS 
%	- CREATE A NEW FUNCTION WHICH CALLS THE BELOW AND ABOVE FUNCTION (AS WITH FUNCTIONS IN JAVA).
dnalist([X|T]) :- 
	aminotodna(X, Collector), 
	append(Collector,[], CombinationList), print(CombinationList),
dnalist(T).	%	Return recursively tothe beginning of the function.

test([],[]).
test([X|T], [Combination|C]) :-
	aminotodna(X, Combination),
	test(T,C).

%dnalisttwo([H,T|M]) :- aminotodna(H,X), aminotodna(T,Y), append(Y,X,Z), print(Z), dnalisttwo(M).
	%	COMBINE THOSE LISTS INTO A SINGLE LIST?
	%USER REPLACE 
	%Check submission for incrementation

%	Flatten function
/*
count(_,[],0)	:- !.
count(X,[X|T],N)	:-
	count(X,T,N2),
	N is N2 + 1.

count(X,[Y|T], N) :-
	X \= Y,
	count(X,T,N).

flatten([], []).
flatten(X, [X])	:-	/+ is_list(X).
flatten([X|XS], ZS)	:-	flatten(X,Y), flatten(Xs,Ys), append(Y,Ys,Zs).
*/

%Get all permutations from particular aminoacid within a single List
/*
setof(Collector, aminotodna(Input,Collector),Combinations), print(Combinations).

amino1(Z,[X|T]) :-
	setof(Collector, aminotodna(X,Collector),Combinations),
	print(Combinations),
	%append(Combination, EmptyList, List),
	amino1(T).

test2([]).
test2([X|T]) :- 
	aminotodna(X,Combination),
	append(Combination,X,Y),
	print(X),
	test2(T).
*/