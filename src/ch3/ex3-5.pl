
isTreeWithSpecificLeaf(X, Y) :- X = leaf(Y).

isTreeWithLeaf(X) :- isTreeWithSpecificLeaf(X, _).

isTreeWithSubtree(X, Y, Z) :-
  X = tree(Y, Z),
  Y = isTreeWithLeaf(_),
  Z = isTreeWithLeaf(_).

isTreeWithSubtree(X, Y, Z) :-
  X = tree(Y, Z),
  Y = isTreeWithSubtree(_, _, _),
  Z = isTreeWithSubtree(_, _, _).

isTree(X) :- isTreeWithLeaf(X).

isTree(X) :- isTreeWithSubtree(X, _, _).

isSwapWithLeaf(X, Y, Z) :-
  X = leaf(Z),
  Y = leaf(Z).

isSwapWithSubtree(X, Y, A, B, C, D) :-
  isTree(X),
  isTree(Y),
  X = tree(A, B),
  Y = tree(C, D),
  isSwapWithLeaf(A, D, _),
  isSwapWithLeaf(B, C, _).

isSwap(X, Y) :- isSwapWithLeaf(X, Y, _).

isSwap(X, Y) :- isSwapWithSubtree(X, Y, _, _, _, _).

swaps(X, Y, A, B, C, D) :-
  isTree(X),
  isTree(Y),
  X = tree(A, B),
  Y = tree(C, D),
  isSwap(A, D),
  isSwap(B, C).

swap(X, Y) :- isSwapWithLeaf(X, Y, _).

swap(X, Y) :- swaps(X, Y, _, _,  _, _).



% ?- isTree(leaf(1)).
% true ;
% false.

% ?- isTree(tree(leaf(1), leaf(2))).
% true ;
% true.

% ?- isTree(tree(tree(leaf(1), leaf(2)), leaf(3))).
% true ;
% true.

% ?- swap(leaf(1), leaf(1)).
% true ;
% false.

% ?- swap(tree(leaf(1), leaf(2)), tree(leaf(2), leaf(1))).
% true ;
% true ;
% true ;
% true ;
% false.

% ?- swap(tree(tree(leaf(1), leaf(2)), leaf(4)), tree(leaf(4), tree(leaf(2), leaf(1)))).
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% true ;
% false.
