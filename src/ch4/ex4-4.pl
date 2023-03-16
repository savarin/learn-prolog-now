
swap12(List1, List2) :-
  List1 = [A1, B1],
  List2 = [A2, B2],
  A1 = B2,
  A2 = B1,
  B1 \== [],
  B2 \== [].

swap12(List1, List2) :-
  List1 = [A1, B1, _],
  List2 = [A2, B2, _],
  A1 = B2,
  A2 = B1.



% ?- swap12([a, b], [b, a]).
% true ;
% false.

% ?- swap12([a, b, c], [b, a, c]).
% true.

% ?- swap12([a, b], [a, b]).
% false.
