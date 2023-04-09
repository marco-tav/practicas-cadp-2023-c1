(* Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
los dos números mínimos leídos. *)

program tp01-p2-ej4
var 
  num, min, min2, i: integer;
begin
  min := 2147483647; {Supuestamente es el máximo entero para Pascal}

  for i := 1 to 1000 do 
  begin
    read(num);
    if (num < min) then
      min2 := min {En la primera vuelta necesariamente se inicializa min2}
      min := num 
    else if (num < min2) then
      min2 := num;
  end;

  writeln('El menor número leído fue ', min, '.');
  writeln('El segundo menor número leído fue ', min2, '.');
end;
