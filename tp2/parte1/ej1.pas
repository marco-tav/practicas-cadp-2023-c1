{Dado el siguiente programa, indicar qué imprime.}

program alcance1;
var 
  a, b: integer; {Dos variables globales: a y b}
procedure uno;
var b: integer; {Variable b interna del proceso}
begin
  b := 3;
  writeln(b);
end;
begin
  a:= 1;
  b:= 2;
  uno;
  writeln(b, a);
end;

(* Yo creo que acá va a imprimir:
            3
            2 1
  
  Por qué? Porque dentro del proceso, cuando busque b, primero la va a encontrar 
  en las variables internas del proceso y de ahí las va a sacar.
 *)