nonstop(aus, dal).
nonstop(aus, hou).
nonstop(aus, phx).
nonstop(dal, okc).
nonstop(dal, hou).
nonstop(hou, okc).
nonstop(okc, phx).


flyvia(From, To, Via) :-
nonstop(From, Via), 
nonstop(Via, To).

reach(X, X).
reach(X,Z) :-
nonstop(X, Y), reach(Y, Z).
