
second(X, List) :- 
  List = [_ | T],
  T = [H | _],
  X = H.



% ?- second(a, [a, b, c]).
% false.

% ?- second(a, [a, a, c]).
% true.
