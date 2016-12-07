dnapermutation([],[]).									%Stopping codition (4)
dnapermutation([Head|Tail], [Combination|C]) :-			%(1)
	aminotodna(Head, Combination),						%(2)
dnapermutation(Tail,C).									%(3)

% Question 8

count(_,[],0). %stopping condition for the count function

%	Checks if X matches the value in the head of list [X|T]. Output stored as TotalCount.
count(X, [X|T], TotalCount) :-	
	%	Checks if the value of X is present in tail T. Saves the number as Value.
	count(X, T, Value),
	%	Increments counter by 1 each time there's a match
TotalCount is Value + 1.	


count(X, [Permutation|Tail], Count) :- 
	%	Checks if X is not equal to the value of Permutation
	X \= Permutation,
	%	Checks if the value of X is present in Tail. Saves the count as Count.
count(X, Tail, Count).

%	Report printer function
sequenceReport([Head|Tail]) :- 
	%	Pass the Head and Tail to dnapermutation function from Q7. Output saved as Permutation variable.
	dnapermutation([Head|Tail], Permutation),
	%	Initially print Permutation to demonstrate which part we're counting
	write('Count for '), print(Permutation), nl,
	%	Combine all Permutation output into a single 'flat' list (merge down)
	append(Permutation, FlatPermutation),
	%	Print the results
	write('a = '), count(a, FlatPermutation, TotalCountA), print(TotalCountA),nl,
	write('t = '), count(t, FlatPermutation, TotalCountT), print(TotalCountT),nl,
	write('c = '), count(c, FlatPermutation, TotalCountC), print(TotalCountC),nl,
	write('g = '), count(g, FlatPermutation, TotalCountG), print(TotalCountG),nl,
	nl,
sequenceReport(Permutation).