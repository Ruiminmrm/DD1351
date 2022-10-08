%remove_duplicates([1,2,3,2,4,1,3,4,1], E).

% 1 2 3 2 4 1 3 4
% 1 - head (2 3 2 4 1 3 4) - tail
revers([],[]).
revers( [H|T],Arr ):-
        revers( T , Tailarr),append(Tailarr,[H], Arr).

remove([],[]).
% if the head of the input can be found in the tail , remove the head
remove( [H|T] ,Newarr) :- 
         member(H,T), remove(T,Newarr).

% if the head of the input cant not be found in the tail , keep the array as the answer 
remove( [H|T] , [H|Newarr]):-
        remove(T,Newarr). 

remove_duplicates([], []).
remove_duplicates(Ar, Re) :- 
        revers(Ar, Rev), remove(Rev, Remo), revers(Remo, Re).









