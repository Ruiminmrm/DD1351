%partstring( [ 1, 2 , 3 , 4 ,2], L, F).
%från bok --- append element i list
appendEl(X, [], [X]).
appendEl(X, [H | T], [H | Y]) :-
        appendEl(X, T, Y).

%partstring recursivt
%Place --> hjälparr (uppdateras) 
%skapa en ny list som spara alla element som vi behöver
%tabort den head varje gång (ser kommentar neråt)

partstring([H|T], Length, Out, Place) :- 
        (appendEl(H, Place, Newarr),partstring(T, Length, Out, Newarr));
        (Place = [], partstring(T, Length, Out, Place)).

partstring(_, Length, Out, Out) :- length(Out, Length), Out\=[].

partstring(Arr,Out,Length):- 
        partstring(Arr,Out,Length,[]).