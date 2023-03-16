
tran(eins,one). 
tran(zwei,two). 
tran(drei,three). 
tran(vier,four). 
tran(fuenf,five). 
tran(sechs,six). 
tran(sieben,seven). 
tran(acht,eight). 
tran(neun,nine).

listtran([], []).

listtran([H1 | T1], [H2 | T2]) :-
  tran(H1, H2),
  listtran(T1, T2).

listtran([H1 | T1], [H2 | T2]) :-
  tran(H2, H1),
  listtran(T2, T1).



% ?- listtran([eins,neun,zwei],X).
% X = [one, nine, two] ;
% false.

% ?- listtran(X,[one,seven,six,two]).
% X = [eins, sieben, sechs, zwei] ;
% false.
