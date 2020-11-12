/*
Proyecto 4: Prolog
Juan Diego Solorzano
Mario Perdomo
Josue Sagastume
*/
%Nodos
nodo(a).
nodo(b).
nodo(c).
nodo(d).

%Se determinan las aristas del grafo
arco(a,b).
arco(a,c).
arco(a,d).
arco(c,d).

camino(X,Y,[X|Cola]) :-
       camino(X, Y, [X], Cola).
%Al mismo nodo
camino(X, X, _, []).
%Buscar en otros nodos
camino(X, Y, Visitados, [Z|Cola]) :-
       arco(X,Z),
       %\+(member(Z, Visitados)), %Asegurar que no esta en visitados
       camino(Z,Y,[Z|Visitados],Cola). %Agregar Z al camino
