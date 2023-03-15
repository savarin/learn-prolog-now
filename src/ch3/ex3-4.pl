
numeral(0). 
numeral(succ(X)) :- numeral(X).

add(0, Y, Y). 
add(succ(X), Y, succ(Z)) :- 
  add(X, Y, Z).

greater_than_with_value(X, Y, Z) :-
  Z \== 0,
  add(Y, Z, X).

greater_than(X, Y) :- greater_than_with_value(X, Y, _).



% ?- greater_than(succ(succ(succ(0))),succ(0)).
% true.

% ?- greater_than(succ(succ(0)),succ(succ(succ(0)))).
% false.
