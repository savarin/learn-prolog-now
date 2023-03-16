
increment(X, Y) :-
  Y =:= X + 1.

sum(X, Y, Z) :-
  Z =:= X + Y.


% ?- increment(4, 5).
% true.

% ?- increment(4, 6).
% false.

% ?- sum(4,5,9).
% true.

% ?- sum(4,6,12).
% false.
