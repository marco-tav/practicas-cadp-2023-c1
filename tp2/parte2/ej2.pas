{Responda la pregunta en relación al siguiente programa}

program ejercicio4;

procedure digParesImpares(num : integer; var par, impar : integer);
var
  dig: integer;
begin
  while (num <> 0) do begin
    dig:= num mod 10;
    
    if((dig mod 2)= 0) then
      par := par + 1
    else
      impar:= impar +1;
      num := num DIV 10;
  
  end;
end;

var
  dato, par, impar, total, cant : integer; {Para qué están cant y total??}
begin
  par := 0;
  impar := 0;
  
  repeat
    read(dato);
    digParesImpares(dato,par,impar);
  until (dato = 100);
    
  writeln(‘Pares: ’,par, ‘Ímpares:’, impar);
end;

(* El proceso lo que hace es descomponer un número que le entra por parámetro en dígitos
   y contar la cantidad de dígitos pares e impares que tiene. Para esos usa parámetros 
   que entran por referencia, cosa de ponerlos de salida. *)

(* El programa invoca está función usando un repeat-until que corta cuando se lee el 100,
   que se procesa. *)

(* Si se entran 250, 35 y 100 entonces el programa va a imprimir:
                  
                  Pares:4 Impares: 4
                  
   el número 100 se procesa y el 0 es par. *)