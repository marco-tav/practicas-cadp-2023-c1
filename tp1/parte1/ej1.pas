(* Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los
dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos
son iguales”. *)

program tp01-p1-ej01
var 
  int1, int2: integer;
begin 
  read(int1);
  read(int2);
  
  if (int1 > int2) then
    write(int1, ' es mayor que ', int2, '.')
  else if (int1 < int2) then
    write(int2, ' es mayor que ', int1, '.')
  else
    write(int1, ' es igual a ', int2, '.');

end; 