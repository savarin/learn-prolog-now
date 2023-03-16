
twice([], []).

twice([H1 | T1], [H2 | T2]) :-
  H1 = H2,
  T2 = [H3 | T3],
  H1 = H3,
  twice(T1, T3).



% ?- twice([a, 4, buggle], X).
% X = [a, a, 4, 4, buggle, buggle].

% ?- twice([1, 2, 1, 1], X).
% X = [1, 1, 2, 2, 1, 1, 1, 1].
