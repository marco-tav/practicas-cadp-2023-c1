(* Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos
números:

a.Utilizando una variable adicional
b.Sin utilizar una variable adicional *)

program tp00-ej2b
var
  int1, int2: integer;
begin
  read(int1);
  read(int2);
  write('La suma de ', int2, ' y ', int1, ' es ', int1 + int2, '.');
end;