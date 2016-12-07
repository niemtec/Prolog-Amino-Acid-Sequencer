aminoProp :- write('Enter the names: '), nl, write('List: '),
read(List), member(X,List), nl, write('Amino Acid: '), print(X), nl,
write('Letter: '), aminoname(Let,_,X), print(Let),nl,
write('Long name: '), aminoname(_,Lon,X), print(Lon),nl,
write('Short name: '), aminoname(_,_,X), print(X), nl,
write('Hydropathy: '), aminoclass(X, 'Hydropathy', H), print(H),nl,
write('Volume: '), aminoclass(X,'Volume', V), print(V),nl,
write('Chemical: '), aminoclass(X,'Chemical',Chem), print(Chem),nl,
write('Charge: '),aminoclass(X,'Charge',Char),print(Char),nl,
write('Polarity: '), aminoclass(X,'Polarity', Pol),print(Pol).

