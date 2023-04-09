(* Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
◦El número máximo leído.
◦El número mínimo leído.
◦La suma total de los números leídos. *)

program tp01-p2-ej05
var 
  num, min, max, sum: integer;
begin
  suma := 0;
  min := 2147483647; {El mayor entero que puede representar Pascal}
  max := -2147483648; {El menor entero que puede representar Pascal}

  repeat
    read(num);
    suma := suma + num;
    if (num < min) then min := num;
    if (num > max) then max := num; 
  until (num = 100);

  writeln('El máximo fue: ', max, '.');
  writeln('El mínimo fue: ', min, '.');
  writeln('La suma total es: ', suma, '.');
end;