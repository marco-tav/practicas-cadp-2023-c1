(* Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos *)

program tp01-p2-ej1
var 
  num, i, suma: integer;
begin
  suma := 0;

  for i := 1 to 10 do 
  begin
    read(num);
    suma := suma + num;
  end;

  writeln('La suma es ', suma, '.');
end;