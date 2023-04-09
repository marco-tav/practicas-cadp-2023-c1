(* Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse *)

{En este caso la poscondición no me sirve. Me conviene más usar un while}

program tp01-p2-ej4b
var 
  num, min, min2, i: integer;
begin
  min := 2147483647; {Supuestamente es el máximo entero para Pascal}
  read(num);

  while(num <> 0) do begin
    if (num < min) then
      min2 := min {En la primera vuelta necesariamente se inicializa min2}
      min := num 
    else if (num < min2) then
      min2 := num;
    
    read(num);
  end;
  
  if(min <> 2147483647) then begin {Por si el primer ingresado es 0}
    writeln('El menor número leído fue ', min, '.');
    writeln('El segundo menor número leído fue ', min2, '.');
  end;
end;
