(*Implemente un programa que lea por teclado dos números enteros e imprima en pantalla los
valores leídos en orden inverso. Por ejemplo, si se ingresan los números 4 y 8, debe mostrar el
mensaje: Se ingresaron los valores 8 y 4*)

program tp00-ej01
var 
  int1, int2: integer;
begin
  read(int1);
  read(int2);
  write('Se ingresaron los valores ', int2, ' y ', int3, '.'); {Preguntar si están bien escritas las variables en la string del write.}
end;