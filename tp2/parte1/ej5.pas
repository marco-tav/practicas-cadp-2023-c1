(* Dado el siguiente programa, indicar cuál es el error. *)

program alcance4;
function cuatro: integer;
begin
  cuatro:= 4;  {El programa solo asigna el valor 4 a la variable de la función}
end;
var a: integer;
begin
  cuatro;
  writeln(a); {No se incializó la variable!}
end.

(* El programa va a tirar error porque la variable 'a' no se inciializó. *)