
% Lab 12 - Graphs

% Directed edges between cities
edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Makkah', 'Riyadh').
edge('Tabuk', 'Taif').
edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').
edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').
edge('Al-Qatif', 'Madinah').
edge('Al-Qatif', 'Dammam').
edge('Dammam', 'Al-Qatif').

% Find a path between two cities
travel(From, To, Path) :-
    path(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

% Destination reached
path(To, To, Visited, Visited).

% Continue without repeating cities
path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    path(Next, To, [Next|Visited], Path).
