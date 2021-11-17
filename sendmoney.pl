rev([H|T],A,R):-rev(T,[H|A],R).
rev([],A,A).

reverse(L,R):-  rev(L,[],R).

assignvalue(0).
assignvalue(1).
assignvalue(2).
assignvalue(3).
assignvalue(4).
assignvalue(5).
assignvalue(6).
assignvalue(7).
assignvalue(8).
assignvalue(9).

caller(A,[]).
caller(A,[B|C]):- A=\=B,caller(A,C).

function([]).
function([A|B]):- caller(A,B),function(B).

values(A, B, C, D,UNIQUE) :- reverse(A,F), reverse(B,S), reverse(C,R), findvalue(F,S,R,0), function(UNIQUE).


findvalue([],[],[],_).
findvalue([],[],[A],O):- A is O.
findvalue([A|B],[C|D],[E|F],Q):- assignvalue(A), assignvalue(C), P is A+C+Q, E is (A+C+Q)mod 10, Z is P//10,findvalue(B,D,F,Z).





check:- values([S,E,N,D],[M,O,R,E],[M,O,N,E,Y],0,[S,E,N,D,M,O,R,Y]), write(S),write(E),write(N),write(D),nl,write(M),write(O),write(R),write(Y).

