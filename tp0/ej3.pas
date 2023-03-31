(*Implemente un programa que lea dos números reales e imprima el resultado de la división de
los mismos con una precisión de dos decimales. Por ejemplo, si se ingresan los valores 4,5 y 7,2,
debe imprimir: El resultado de dividir 4,5 por 7,2 es 0,62*)

program tp00-ej03
var 
  r1, r2: real;
begin
  read(r1);
  read(r2);
  write('El restultado de divir ', r1, ' y ', r2, ' es: ', writeln(r1 div r2:1:2), '.');
end;