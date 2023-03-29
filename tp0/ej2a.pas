(* Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos
números:

a.Utilizando una variable adicional
b.Sin utilizar una variable adicional *)

program tp00-ej2a
var
  int1, int2, suma: integer;
begin
  read(int1);
  read(int2);
  suma = int1 + int2;
  write('La suma de ', int2, ' y ', int2, ' es ', suma, '.');
end;
