% Facts

male(hassan).
male(ali).
male(mohammed).
male(hussein).

female(halima).
female(zahra).
female(zainab).

parent(hassan, ali).
parent(hassan, zahra).
parent(hassan, zainab).
parent(hassan, mohammed).

parent(halima, ali).
parent(halima, zahra).
parent(halima, zainab).
parent(halima, mohammed).

parent(ali, hussein).


% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
