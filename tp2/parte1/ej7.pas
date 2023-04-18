program alcanceYFunciones;
var
  suma, cant : integer;
  promedio: real; {Agrego una variable para almacenar el promedio}
function calcularPromedio : real
var
  prom : real;
begin
  if (cant = 0) then begin
    prom := -1
  else
    prom := suma / cant;
  end;
  calcularPromedio := prom; {Lo que le faltaba a la función}
end;
begin { programa principal }
  readln(suma);
  readln(cant);
  promedio := calcularPromedio; {Asigno el retorno de la función a promedio}
  
  if (promedio <> -1) then begin {Evaluo la condición sin llamar a la función}
    cant := 0;
    writeln(‘El promedio es: ’ , promedio) {No necesito volver a llamarla acá}
  end;
  else
    writeln(‘Dividir por cero no parece ser una buena idea’);
end;

{  a. Falta, al final de la función, asignar calcularPromedio := prom;}

(* b. Yo almacenaría el retorno de la función en una variable y después usaría el valor
      de esa variable para realizar el programa. *)

(* c1. Va a arrojar un error cuando se llame a la función la primera vez porque no tiene
       retorno. *)

(* c2. Con la actualización del inciso a va a arrojar un error en el segundo llamado de la 
       función porque va a tratar de dividir por 0, ya que se asignó 0 a cant y se volvió
       a llamar a la función. *)

(* c3. Si hice bien las cosas el programa imprime "El promedio es: 8" *)

