% Reglas de Inferencia
subc(C1, C2) :- frame(C1, subclass(C2), _, _).
subc(C1, C2) :- frame(C1, subclass(C3), _, _), subc(C3, C2).
subclase(X) :- frame(X, subclass(_), _, _).

% Para consultar propiedades use: propiedadesc(el_mito_de_prometeo, L).
propiedadesc(top, _) :- !.
propiedadesc(X, Z) :- frame(X, subclass(Y), properties(P), description(_)), propiedadesc(Y, P1), concatenar(P1, P, W), de_reversa(W, Z).

% Para consultar todas las clases representadas en los frames
classes(L) :- findall(X, frame(X, subclass(_), properties(_), description(_)), L).

% Para consultar todas las subclases de una clase
subclasses_de(X, L) :- findall(C1, subc(C1, X), L).

% Para consultar todas las superclases de una clase
superclasses_de(X, L) :- findall(C1, subc(X, C1), S), de_reversa(S, L).

% Para consultar qué objetos tienen UNA propiedad determinada
tiene_propiedad(P, Objs) :- frame(X, _, properties(L), description(_)), member(P, L), subclasses_de(X, S), select(X, Objs, S), !.

% Obtiene todas las propiedades de todos los objetos
todas_propiedades(L) :- findall(P, frame(_, _, properties(P), description(_)), NL), flatten(NL, L).

% Obtiene la descripción de una clase
obtiene_descripcion(C, D) :- frame(C, _, _, description(D)).

% Obtiene una lista de clases con los objetos que tienen las propiedades de la lista de entrada en P
consulta_por_propiedades(P, C) :- consulta(P, C1), list_to_set(C1, C2), sort(C2, C).

consulta([], []).
consulta([H|T], C) :- consulta(T, C1), tiene_propiedad(H, C2), append(C1, C2, C).

% Es hoja (regresa verdadero si la clase no tiene subclases)
es_hoja(Clase) :- subclasses_de(Clase, L), L = [].

% Unir dos listas en una tercera
concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

% Agregar un elemento al final de una lista
% ?- agregar_final([a, b], c, L).
agregar_final([], E, [E]).
agregar_final([C|R], E, [C|RL]) :- agregar_final(R, E, RL).

% Invertir una lista
% ?- de_reversa([1, 2, 3], L).
de_reversa([X], [X]).
de_reversa([C|R], L) :- de_reversa(R, RI), agregar_final(RI, C, L).
