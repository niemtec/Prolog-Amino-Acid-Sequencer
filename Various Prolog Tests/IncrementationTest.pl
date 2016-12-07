test1([]).
test1([H|T]) :-
	findall(CollectorA, a, A),
	length(A, TotalA),
	findall(CollectorT, t, T),
	length(T, TotalT),
	findall(CollectorG, g, G),
	length(G, TotalG),
	findall(CollectorC, c, C),
	length(C, TotalC),

	print(TotalA), print(TotalT), print(TotalG), print(TotalC),
	%member(a,H) -> append(a, [HeadA|TailA], ListA); 
	%member(t,H) -> append(t, [HeadT|TailT], ListT); 
	%member(g,H) -> append(g, [HeadG|TailG], ListG);  
	%member(c,H) -> append(c, [HeadC|TailC], ListC),
	%countA(ListA),
test1(T).


/*
countA([H|T], TotalA) :-
	count(T, Total_Minus_OneA),
	TotalA is Total_Minus_OneA + 1.

countT([H|T], TotalT) :-
	count(T, Total_Minus_OneT),
	TotalT is Total_Minus_OneT + 1.

countG([H|T], TotalG) :-
	count(T, Total_Minus_OneG),
	TotalG is Total_Minus_OneG + 1.

countA([H|T], TotalC) :-
	count(T, Total_Minus_OneC),
	TotalC is Total_Minus_OneC + 1.
*/