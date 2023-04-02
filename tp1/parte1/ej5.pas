(* Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”. *)

program tp01-p1-ej05
var 
  X, num: real;
  i: integer;
begin 
  i := 1;
  read(X);
  read(num); {Es el primer read, por eso inicializo el contador, i, en 1}

  while ((i < 10) and (num <> 2*X)) do
  begin
    read(num);
    i := i + 1;
  end;

  if (num <> 2*X) then {Puede ser que la decima lectura, que no es checkeada en el while, sea igual a 2X}
    write('No se ha ingresado el doble de ', X, '.');
end;


