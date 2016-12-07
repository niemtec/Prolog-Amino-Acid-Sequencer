%count([], 0). 
%count([H|T], Total):- 
%	count(T, Total_Minus_One), 
%	Total is Total_Minus_One + 1.

count(P, Count) :-
	findall(1, P, L),
	length(L, Count).