
/* Hechos (son simpre ciertos) son cláusulas sin cuerpo */
likes(alice,bob).
/* Equivale a la regla */
/* Cabeza :- Cuerpo */
likes(alice,bob) :- true.

likes(bob,carol).
likes(james,mary).
likes(mary,james).
likes(carol,bob).

Who = bob. /* las variables empiezan siempre por mayúscula */

love_compatible(X, Y) :- likes(X, Y), likes(Y, X).


/* Otros ejemplos */

persona(jose).
persona(pepe).
persona(manolo).
persona(juan).

amigo(jose,pepe).
amigo(pepe,juan).
amigo(pepe,manolo).
amigo(manolo,pepe).

amigo_comun(X,Y,Z):- amigo(X,Z) , amigo(Y,Z).
amigo_de_uno_al_menos(X,Y,Z):- amigo(X,Z) ; amigo(Y,Z).


es_unCoche(4).
tiene(X,ruedas) :- es_unCoche(X).

/* Dias de vacaciones restantes */
transporte(Vehiculo).
