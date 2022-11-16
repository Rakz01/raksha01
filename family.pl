male(baburao).
female(vimal).

male(ramlal).
female(kavita).

male(tushar).
female(raksha).

male(arun).
female(savita).

male(lokesh).
female(harshal).

parent(baburao,ramlal).
parent(baburao,arun).
parent(vimal,ramlal).
parent(vimal,arun).
parent(kavita,raksha).
parent(kavita,tushar).
parent(ramlal,tushar).
parent(ramlal,raksha).
parent(arun,lokesh).
parent(arun,harshal).
parent(savita,lokesh).
parent(savita,harshal).

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
