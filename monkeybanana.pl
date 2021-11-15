% state1 --> monkey and box are at center, monket is on box and monkey doesnt have the banana.

statechange([middle,middle,onbox,doesnthave],[middle,middle,onbox,have]):-write('grasp the banana'),nl.

% state2 --> monkey and box are at center and monkey doesnt have the banana.
statechange([middle,middle,onfloor,doesnthave],[middle,middle,onbox,doesnthave]):-write('climb the box'),nl.

% state3 --> monkey and box are at center, monkey is on floor and monkey doesnt have the banana.

statechange([A,A,onfloor,doesnthave],[middle,middle,onfloor,doesnthave]):-write('push the box around'),nl.

% state4 --> monkey and box are at same place, on box and monkey doesnt have the banana.
statechange([A,A,onbox,doesnthave],[A,A,onfloor,doesnthave]):-write('move down from box'),nl.

% state5 --> monkey and box are at same place other than center and monkey doesnt have the banana.

statechange([A,B,onfloor,doesnthave],[B,B,onfloor,doesnthave]):-write('walk on the floor'),nl.

cancatchbanana([_,_,_,have]):- nl,write(grabbedbanana).
cancatchbanana(S):- statechange(S, N),cancatchbanana(N).



readvalues:-
write('Initial position of monkey[door/window/middle] : '),
read(M),

write('Initial position of box[door/window/middle] : '),
read(B),

write('Initial position of monkey[onfloor/onbox] : '),
read(P),

write('Initial state of monkey[have/doesnthave] : '),
read(Banana),

nl,
write('Inputs taken, calculating possibilities..'),
nl,
nl,

cancatchbanana([M,B,P,Banana]).