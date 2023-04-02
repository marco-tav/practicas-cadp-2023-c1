(* Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído) *)

program tp01-p1-ej04
var 
  X, num: real;
begin 
  read(X);
  read(num);

  while(num <> (2*X)) do begin
    read(num);
  end;
end;