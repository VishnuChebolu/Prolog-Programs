printvalues([A,B,C,D]):-write(A),nl,write(B),nl,write(C),nl,write(D).

readvalues:-
write('Initial position of monkey[door/window/middle] : '),
read(M),

write('Initial position of box[door/window/middle] : '),
read(B),

write('Initial position of monkey[onfloor/onbox] : '),
read(P),

write('Initial state of monkey[have/doesnthave] : '),
read(Banana),

printvalues([M,B,P,Banana]).