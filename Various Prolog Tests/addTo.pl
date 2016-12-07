/*
addToA([FirstNumber | RestOfList], Total) :-
	addup(RestOfList, TotalOfRest),   % add up the numbers in RestOfList
	Total is FirstNumber + TotalOfRest.
*/
addToA(count, a==X, Count).

/*incrementSuccess :-
	assert success(1).*/