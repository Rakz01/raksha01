male(james1).
male(charles1).
male(charles2).
male(james2).
male(george1).

female(elizabeth).
female(catherine).
female(sophia).

parent(james1,charles1).
parent(james1,elizabeth).
parent(charles1,catherine).
parent(charles1,charles2).
parent(charles1,james2).
parent(elizabeth,sophia).
parent(sophia,george1).

siblings(X,Y):- parent(Z,X),parent(Z,Y),X\=Y.
