#lang datalog
ancestor(A, B) :- parent(A, B).
ancestor(A, B) :-
  parent(A, C), D = C, ancestor(D, B).
parent(john, douglas).
parent(bob, john).
ancestor(A, B)?
