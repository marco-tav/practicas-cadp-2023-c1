{Dado el siguiente programa indicar cuál es el error y su causa.}

program alcance3;
var
  a: integer; {Variable global a}
procedure uno;
var
  b: integer; {Variable a. Interna de uno}
begin
  b := 2;
  writeln(b); 
end;
begin
  a := 1;
  uno;
  writeln(a, b); {No puede usar b porque no está accesible al PP}
end;

(* El error es que quiere imprimir b en el writeln del programa
   principal pero b es interna de uno, no está en su scope. Va a 
   buscar en globales pero tampoco hay. El programa tira error. *)