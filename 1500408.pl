%	BRUNEL UNIVERSITY LONDON
%	DEPARTMENT OF COMPUTER SCIENCE
%	CS1005 LOGIC AND COMPUTATION
%	===============================
%	PROLOG COURSEWORK 2015/16
%	Module Leader: Dr. Allan Tucker
%	Jakub Adrian Niemiec (1500408)


%	(Question 1)
%
%	Example:		isAmino(a).
%
%	Determine if a particular atom (symbol) corresponds to an amino acid or not.
%	Checks whether X corresponds to a particular amino acid. Returns true or false.
%	X represents the amino acid that we are looking for, it is matched against 'aminoname'. 
%	Long name and short name are irrelevant and are ignored.
isAmino(X) :- 
	aminoname(X,_,_).


%	(Question 2)
%
%	Example:		aminoLong('Ala').
%
%	Given a short name of amino acid, display long name of said acid.
%	Checks whether X matches short names of any amino acids. Long name of matching acid is saved as Y which is then printed.
%	Write is used for cleaner presentation.
aminoLong(X) :- 
	aminoname(_,Y,X), 
	print(X), write(' is known as '), print(Y).


%	(Question 3)
%
%	Example:		smallNeutralLong(X).
%
%	Rule displays long name of all of the small neutral amino acids.
%	Returns all values (as set X) which satisfy the condition of 'findall' function through unification.
%	If aminoclass is small and neutral, take aminoclass short name, store as Y. 
%	Compare Y with aminoname and present matching long name as Z.
%	Value of Z is then parsed as X and printed.
smallNeutralLong(X) :- 
	findall(Z,(aminoclass(Y,_,'small'), aminoclass(Y,_,'neutral'), aminoname(_,Z,Y)), X).


%	(Question 4)
%
%	Example:		aromaticNegative(X).
%
%	Displays all aromatic and non-positive amino acids.
%	Returns all values (as set X) which satisfy the condition of 'findall' function through unification.
%	If aminoclass is a 'Chemical' 'aromatic' AND aminoclass is 'Charge' 'uncharged' OR 'negative charged' (OR represented by ;), take aminoclass short name, store as Y. 
%	Compare Y with aminoname and present matches long name as Z.
%	Value of Z is then parsed as X.
aromaticNegative(X) :- 
	findall(Z,(aminoclass(Y,'Chemical','aromatic'), (aminoclass(Y,'Charge','uncharged'); 
		aminoclass(Y,'Charge','negative charged')), aminoname(_,Z,Y)), X).

	
%	(Question 5)
%
%	Example:		findAmino(c,a,t).
%
%	For three given DNA molecules display amino acid.
%	Takes input and unifies (matches) it with the aminotodna list (A,B,C) and prints the value X corresponding to the letter sequence.
findAmino(A,B,C) :- 
	aminotodna(X,[A,B,C]), 
		write('Amino letter key: '), 
	print(X).


%	(Question 6)
%
%	Example:		propertyReport(['Ala','Pro','Gly','Thr']).
%
%	Display properties of amino acids from a given list.
%	User enters a list of amino acids (in short name format).
%	This rule recursively goes through the input list and prints all properties.

%	Termination of the recursive function | if list empty then stop (compound term).
propertyReport([]). 
propertyReport([X|T]) :-
	nl,
	%	Identifies the amino acid to report for
	write('PROPERTY REPORT FOR "'), write(X), write('" AMINO ACID'), nl, 
	nl,
	write('Letter Value: '), aminoname(LetterValue,_,X), print(LetterValue),nl,
	write('Long Name: '), aminoname(_,LongName,X), print(LongName),nl,
	write('Short Name: '), print(X), nl, 
	write('DNA Sequences: '), setof(Collector, aminotodna(LetterValue,Collector),Combinations), print(Combinations), nl,
	write('Hydropathic Property: '), aminoclass(X, 'Hydropathy', Hydropathy), print(Hydropathy),nl,
	write('Volume: '), aminoclass(X,'Volume', Volume), print(Volume),nl,
	write('Chemical Property: '), aminoclass(X,'Chemical',Chemical), print(Chemical),nl,
	write('Charge Property: '), aminoclass(X,'Charge',Charge), print(Charge),nl,
	write('Polarity: '), aminoclass(X,'Polarity', Polarity), print(Polarity),nl,
	nl,

	%	Separate lists, for cleaner formatting
	write('============================================================'),	
	nl,
%	Return back to the rule (tail recursion).
propertyReport(T). 


%	(Question 7)
%
%	Example:		dnaPermutation([a,l], X).	(Press W to write full length of the sequence, Use TAB or ; to progress)
%
%	Given a  list of proteins, print out all possible permutations of their DNA Sequences.
%	
%	The first rule accepts a list of acids and calls the permutationRule where the sequence is generated,
%	For each generated sequence, the list is retrieved and appended into a single list which is saved as the user defined variable.

%	Take the value of A from the list head then store its sequence as C, then recursively go through all
%	the elements of B (tail of first list) adding them to D (tail of result list).
%	Once all variations of B are exhausted, use the next element in the list A and repeat the process.
%	User defined variable (X) is bound to [C|D] which is displayed as set of lists. Initially C and D are both empty.
%	PROLOG finds the first head, then moves back from tail saving all combinations to the user defined variable.
%	The rule keeps recursing through all the elements of the user list until it reaches an empty list - then it stops.

dnaPermutation([Head|Tail], FlatSequence) :- 
	permutationRule([Head|Tail], Sequence),
	append(Sequence, FlatSequence), nl.

permutationRule([],[]).	%	Stopping condition (compound term)
permutationRule([A|B], [C|D]) :-
	aminotodna(A, C),
permutationRule(B, D).



%	(Question 8)
%
%	Example:		sequenceReport([a,l]).	(Use TAB or ;)
%
%	For each possible sequence of proteins, count how many of four DNA molecules occur.
%	Stopping condition for the count function. If the list is empty and the count is equal to 0 then we stop. X ignored because it's irrelevant to this rule.
count(_,[],0). 

%	This rule is triggered if X is not present in the head (Permutation) of the list.
%	Count variable contains 0 throughout as this rule is triggered when prolog doesn't find the letter it's searching for (X).
count(X, [Permutation|Tail], Count) :- 
	%	Checks if X is not equal to the value of Permutation
	X \= Permutation,
	%	Checks if the value of X is present in Tail (removing initial head from the list, this is passed on to the rule below). 
	%	Count is 0 because the value we are looking is not found.
count(X, Tail, Count).

%	This rule is triggered if X is present in the head of the list [X|T], if this is false then the secondary count rule (above) is used.
%	Output stored as TotalCount.
count(X, [X|T], TotalCount) :-	
	%	If X is present in the head then the TotalCount is incremented by N + 1
	%	Checks if the value of X is present in T. Initially N is 0.
	count(X, T, N),
	%	Increments counter by 1 each time there's a match.
TotalCount is N + 1.	



sequenceReport([Head|Tail]) :- 
	%	Pass the Head and Tail to dnaPermutation function from Q7. Output is stored as FlatPermutation.
	dnaPermutation([Head|Tail], FlatPermutation),
	%	Initially print Permutation to demonstrate which part we're counting
	write('Count for '), print(FlatPermutation), write(':'), nl,

	%	Trigger the count rules (above) and print the results.
	write('A appears '), count(a, FlatPermutation, TotalCountA), print(TotalCountA), write(' time(s)'), nl,
	write('C appears '), count(c, FlatPermutation, TotalCountC), print(TotalCountC), write(' time(s)'), nl,
	write('G appears '), count(g, FlatPermutation, TotalCountG), print(TotalCountG), write(' time(s)'), nl,
	write('T appears '), count(t, FlatPermutation, TotalCountT), print(TotalCountT), write(' time(s)'), nl,
	nl.