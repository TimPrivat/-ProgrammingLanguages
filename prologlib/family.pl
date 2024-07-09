parent(anakin,leia).
parent(anakin,luke).

parent(padme,leia).
parent(padme,luke).

parent(leia,kylo).
parent(yoda,chewbacca).
parent(yoda,force).
parent(chewbacca,jabba).
parent(r2d2,jabba).

grandchild(X,Z):-
  parent(X,Y),
  parent(Y,Z).

sibling(X,Y):-
  parent(Z,X),
  parent(Z,Y).

auntoruncle(X,Y):-
  sibling(X,Z),
  parent(Z,Y).
  

spouse(X,Y):-
  parent(X,Z),
  parent(Y,Z),
  X \= Y.
  

