%	Count from list
%count (_,[],0) :- !. %	If the list is empty, display 0.

% If X is the list's head, count on the tail (set as N2). Set N to N2 + 1
count(X,[X|T],N) :-
	count(X,T,N2),
	N is N2 + 1.

%	If X is not the head, just count the other elements
count(X,[Y|T],N) :-
	X \= Y,
	count(X,T,N).

/*
count_list([], []).
count_list([H|T], R) :-
    count_list(T, C),
    update(H, C, R).

update(H, [], [[H,1]]).
update(H, [[H,N]|T], [[H,M]|T]) :- !, M is N+1.
update(H, [S|T], [S|U]) :- update(H, T, U).
*/


% PRINT THE VALUES A = XXX AND THEN RUN THE FORMULA FOR EACH OF THE ELEMETNS

input([]).
input([Head|Tail]) :-
	setof(Collector, aminotodna(Head, Collector), Combinations), print(Combinations), 
	input([Tail]).

test2([]).
test2([X|T]) :- 
	aminotodna(X,Combination),
	%append(Combination,X,Y),
	print(Y),
	test2(T).

counthowmany(_, [], 0) :- !.
counthowmany(X, [X|Q], N) :- !, counthowmany(X, Q, N1), N is N1+1.
counthowmany(X, [_|Q], N) :- counthowmany(X, Q, N).