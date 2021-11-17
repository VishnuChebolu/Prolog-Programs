rev([H|T],A,R):-rev(T,[H|A],R).
rev([],A,A).

reverse(L,R):-  rev(L,[],R).

% reverse function is for reversing a given array.
% assignvalue is a fact and if fails it keeps on checking other facts.
 
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


% caller function checks whether a element is there in the rest of the array or not.
caller(A,[]).
caller(A,[B|C]):- A=\=B,caller(A,C).


% function function make sure that every value is unique.
function([]).
function([A|B]):- caller(A,B),function(B).


values(A, B, C,UNIQUE) :- reverse(A,F), reverse(B,S), reverse(C,R), findvalue(F,S,R,0), function(UNIQUE).


findvalue([],[],[],_).
findvalue([],[],[A],O):- A is O.
findvalue([A|B],[C|D],[E|F],Q):- assignvalue(A), assignvalue(C),A=\=C ,P is A+C+Q, E is (A+C+Q)mod 10, Z is P//10,findvalue(B,D,F,Z).



check:- values([S,E,N,D],[M,O,R,E],[M,O,N,E,Y],[S,E,N,D,M,O,R,Y]),M=\=0, write('S='),write(S),nl,write('E='),write(E),nl,write('N='),write(N),nl,write('D='),write(D),nl,write('M='),write(M),nl,write('O='),write(O),nl,write('R='),write(R),nl,write('Y='),write(Y).

