% findvalues([S,E,N,D],[M,O,R,E],[M,O,N,E,Y], [S,E,N,D,M,O,R,Y])


findvalues([F|S],[A|B]):-write(F),write(A),nl, findvalues(S,B).