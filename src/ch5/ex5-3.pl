
addone([], []).

addone([H1 | T1], [H2 | T2]) :-
  H2 is H1 + 1,
  addone(T1, T2).



% ?- addone([1,2,7,2],X).
% X = [2, 3, 8, 3].
