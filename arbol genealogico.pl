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

%Padre
%padre(x,y): x es padre de y
padre(josue, alejandra).
padre(josue, mario).

%Madre
%madre(x,y): x es madre de y
madre(marcela, josue).
madre(marcela, maria).

%REGLAS
%abuelo(x,y): x es abuelo de y
abuelo(X,Y):-padre(X,Z),(madre(Z,Y);padre(Z,Y)).

%abuela(x,y): x es abuela de y
abuela(X,Y):-madre(X,Z),(madre(Z,Y);padre(Z,Y)).

%hijo(x,y): x es hijo de y
hijo(X,Y):-hombre(X), (padre(Y,X);madre(Y,X)).

%hija(x,y): x es hija de y
hija(X,Y):-mujer(X), (padre(Y,X);madre(Y,X)).

%hermano(x,y): x es hermano de y
hermano(X,Y):-padre(Z,X),padre(Z,Y),madre(Z1,X),madre(Z1,Y),not(X=Y),hombre(X).

%hermana(x,y): x es hermana de y
hermana(X,Y):-padre(Z,X),padre(Z,Y),madre(Z1,X),madre(Z1,Y),not(X=Y),mujer(X).

%sobrino(x,y): x es sobrino de y
sobrino(X,Y):-hijo(X,P),(hermano(P,Y);hermana(P,Y)).

%sobrina(x,y): x es sobrina de y
sobrina(X,Y):-hija(X,P),(hermano(P,Y);hermana(P,Y)).

%tio(x,y): x es tio de y
tio(X,Y):-hombre(X),(sobrina(Y,X);sobrino(Y,X)).

%tia(x,y): x es tia de y
tia(X,Y):-mujer(X),(sobrina(Y,X);sobrino(Y,X)).








