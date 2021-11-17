isvalid(CL,ML,CR,MR) :-
	ML>=0, CL>=0, MR>=0, CR>=0,
	(ML>=CL ; ML=0),
	(MR>=CR ; MR=0).

move([left,LC,LM,RC,RM],[right,NLC,LM,NRC,RM]):-
	NRC is RC+2,
	NLC is LC-2,
	isvalid(NLC,LM,NRC,RM).

move([left,LC,LM,RC,RM],[right,LC,NLM,RC,NRM]):-
	NLM is LM-2,
	MRM is RM+2,
	isvalid(LC,NLM,RC,NRM).

move([left,LC,LM,RC,RM],[right,NLC,NLM,NRC,NRM]):-
	NLM is LM-1,
	MRM is RM+1,
	NRC is RC+1,
	NLC is LC-1,
	isvalid(NLC,NLM,NRC,NRM).

move([left,LC,LM,RC,RM],[right,NLC,LM,NRC,RM]):-
	NLC is LC-1,
	NRC is RC+1,
	isvalid(NLC,LM,NRC,RM).

move([left,LC,LM,RC,RM],[right,LC,NLM,RC,NRM]):-
	NLM is LM-1,
	MRM is RM+1,
	isvalid(LC,NLM,RC,NRM).










move([right,LC,LM,RC,RM],[left,NLC,LM,NRC,RM]):-
	NRC is RC-2,
	NLC is LC+2,
	isvalid(NLC,LM,NRC,RM).

move([right,LC,LM,RC,RM],[left,LC,NLM,RC,NRM]):-
	NLM is LM+2,
	MRM is RM-2,
	isvalid(LC,NLM,RC,NRM).

move([right,LC,LM,RC,RM],[left,NLC,NLM,NRC,NRM]):-
	NLM is LM+1,
	MRM is RM-1,
	NRC is RC-1,
	NLC is LC+1,
	isvalid(NLC,NLM,NRC,NRM).

move([right,LC,LM,RC,RM],[left,NLC,LM,NRC,RM]):-
	NLC is LC+1,
	NRC is RC-1,
	isvalid(NLC,LM,NRC,RM).

move([right,LC,LM,RC,RM],[left,LC,NLM,RC,NRM]):-
	NLM is LM+1,
	MRM is RM-1,
	isvalid(LC,NLM,RC,NRM).



findpath([left,LC,LM,RC,RM],[right,GLC,GLM,GRC,GRM], P):-
	move([left,LC,LM,RC,RM],[R,NLC,NLM,NRC,NRM]),
	not(member([R,NLC,NLM,NRC,NRM], P)),
	NP is [[R,NLC,NLM,NRC,NRM]|P],
	findpath([left,LC,LM,RC,RM],[R,NLC,NLM,NRC,NRM],NP),
	write([left,LC,LM,RC,RM]),write(' -> '),write([R,NLC,NLM,NRC,NRM]).

