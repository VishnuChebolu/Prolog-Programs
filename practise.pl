sum([],R):- write(R).
sum([A|B],C):- N is C+(A*A) ,sum(B,N).

reverse([]).
reverse([A|B]):- write(A), reverse(B),nl, write(A). 


reverselist([], R):- write(R).
reverselist([A|B],C):- reverselist(B, [A|C]). 


reverse_hehe(A):- write(A).


printstar(0).
printstar(N):-write(*), M is N-1, printstar(M).
triangle(0).
triangle(A):- N is A-1, triangle(N),printstar(A),nl.


mod(A) :- C is mod(A,10),write(C).
div(A,B) :- C is A//B, write(C).


digitssum(0,K):- write(K).
digitssum(N, S):- K is mod(N,10), M is K+S, A is N//10, digitssum(A,M).



listlength([],A):- write(A).
listlength([A|B],N):- M is N+1, listlength(B,M). 

printitem(0, A).
printitem(N, I):-write(I), M is N-1, printitem(M,I).
pyramid(0).
pyramid(A):- N is A-1, pyramid(N),P is 10-A, printitem(P,' '), M is 2*A-1,printitem(M,*),nl.