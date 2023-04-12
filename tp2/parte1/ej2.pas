{Dado el siguiente programa, indicar qué imprime.}

program alcance2;
var
  a, b: integer; {Defino dos variables globales: a y b}
procedure uno;
begin
  b := 3;
  writeln(b);
end;
begin
  a:= 1;
  b:= 2;
  uno; {Busca b en internas -> busca b en parámetros -> buscá b en global y encuentra. Almacena 3 en b la escribe}
  writeln(b, a); {Escribe b = 3 y a = 1}
end.

(* 
El programa va a imprimir:

        3
        3 1

 *)