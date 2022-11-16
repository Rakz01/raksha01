male(lou).
male(pauline).
male(pete).
male(ian).
male(peter).

female(cathy).
female(lucy).

parent(lou,pauline).
parent(lou,pete).
parent(pete,ian).
parent(cathy,ian).
parent(ian,lucy).
parent(ian,peter).

father(X,Y):- male(X),parent(X,Y).
mother(X,Y):- female(X),parent(X,Y).
/*haschild(X):- parent(X,_).*/
sister(X,Y):- female(X),father(Z,X),father(Z,Y), X\=Y.
brother(X,Y):- male(X),father(Z,X),father(Z,Y), X\=Y.
grandfather(X,Y):- male(X),father(Z,Y),father(X,Z).
grandmother(X,Y):- female(X),father(Z,Y),mother(X,Z).
uncle(X,Y):- male(X),father(Z,Y),brother(X,Z).
aunt(X,Y):- uncle(Z,Y),father(Z,W),mother(X,W).
nephew(X,Y):- male(X),father(Z,Y),brother(Y,Z).
niece(X,Y):- female(X),father(Z,X),brother(Z,Y).
cousin(X,Y):- father(Z,X),father(W,Y),brother(Z,W).
