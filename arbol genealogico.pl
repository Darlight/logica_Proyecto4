%Arbol genealogico
%Proyecto 4
%Logica Matematica

%Mayuscula variable
%minuscula constante

%Hombre
%varon(x): x es hombre
hombre(josue).
hombre(mario).
hombre(juan_diego).

%Mujer
%mujer(x): x es mujer
mujer(maria).
mujer(alejandra).
mujer(marcela).

%Progenitor
%progenitor(x,y): x es progenitor de y
progenitor(josue,alejandra).
progenitor(josue,mario).
progenitor(marcela,josue).
progenitor(marcela,maria).
progenitor(juan_diego,marcela).

%REGLAS

%padre(x,y): x es padre de y
padre(X,Y):-hombre(X),progenitor(X,Y).

%madre(x,y): x es madre de y
madre(X,Y):-mujer(X),progenitor(X,Y).

%hijo(x,y): x es hijo de y
hijo(X,Y):-hombre(X),progenitor(Y,X).

%hija(x,y): x es hija de y
hija(X,Y):-mujer(X),progenitor(Y,X).

%abuelo(x,y): x es abuelo de y
abuelo(X,Y):-padre(X,Z),(madre(Z,Y);padre(Z,Y)).

%abuela(x,y): x es abuela de y
abuela(X,Y):-madre(X,Z),(madre(Z,Y);padre(Z,Y)).

%hermano(x,y): x es hermano de y
hermano(X,Y):-hombre(X),progenitor(Z,X),progenitor(Z,Y),not(X=Y).

%hermana(x,y): x es hermana de y
hermana(X,Y):-mujer(X),progenitor(Z,X),progenitor(Z,Y),not(X=Y).

%sobrino(x,y): x es sobrino de y
sobrino(X,Y):-hijo(X,P),(hermano(P,Y);hermana(P,Y)).

%sobrina(x,y): x es sobrina de y
sobrina(X,Y):-hija(X,P),(hermano(P,Y);hermana(P,Y)).

%tio(x,y): x es tio de y
tio(X,Y):-hombre(X),(sobrina(Y,X);sobrino(Y,X)).

%tia(x,y): x es tia de y
tia(X,Y):-mujer(X),(sobrina(Y,X);sobrino(Y,X)).








