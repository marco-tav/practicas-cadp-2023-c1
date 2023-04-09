(* Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual debe procesarse. *)

program tp01-p2-ej4a
var 
  num, min, min2: integer;
begin
  min := 2147483647; {Supuestamente es el máximo entero para Pascal}

  repeat
    read(num);
    if (num < min) then
      min2 := min {En la primera vuelta necesariamente se inicializa min2}
      min := num 
    else if (num < min2) then
      min2 := num;
  until (num := 0);

  writeln('El menor número leído fue ', min, '.');
  writeln('El segundo menor número leído fue ', min2, '.');
end;