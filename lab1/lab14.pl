point(1,2).
point(3,4).
point(2,3).
point(4,5).


%om det inte finns någon punkt ---- Base case 
%det finns inte visited i början ---- '_' tomtplats
%start punkt blir det första element i array 
%start är den start punkt och samt det är nästa punkt när det inte finns element i array 
path(Start, Start, _, [Start]).

%om det finns någon punkt i array redan,hitta the end som innehåller den start .
%spara start och end 
%start blir den head i nya visited array och det blir ny visited 
%den visited blir ny path
%sen det körs recursivt
path(Start, Next, Visited, [Start|Path]) :-
    point(Start, End),path(End, Next, [Start|Visited], Path).
    
path(Start, Next, Path) :- path(Start, Next, [], Path). 