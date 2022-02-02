addatfront(K, A, [K|A]).

insert(K,[H|T],[H1|T1]):-
    K<H, addatfront(K, [H|T], [H1|T1]);
    K>H, H1 is H, insert(K, T, T1).

sortfunc([], []).
sortfunc([H], [H]).
sortfunc([H|T], A):- sortfunc(T, A1), insert(H, A1, A).