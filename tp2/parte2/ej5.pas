(* 5. a. Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de numA.
      b. Utilizando el módulo realizado en el inciso a., realizar un programa que lea secuencias de pares de
         números hasta encontrar el par (0,0), e informe la cantidad total de pares de números leídos y la cantidad de
         pares en las que numB es el doble de numA. *)

program tp02-p2-ej5

function esDoble(numA, numB: integer): boolean;
begin
  if (numB = 2 * numA) then 
    esDoble := true 
  else
    esDoble := false;
end;

var
  intA, intB, totalPares, cantDobles: integer;
begin
  read(intA);
  read(intB);
  totalPares := 0;
  cantDobles := 0;

  while((intA <> 0) or (intB <> 0)) do begin
    if (esDoble(intA, intB)) then (dobles := dobles + 1);
    totalPares := totalPares + 1;
    read(intA);
    read(intB);
  end;

  writeln('Se leyeron ', totalPares, ' pares de números.');
  writeln('Se leyeron ', cantDobles, ' pares donde B = 2A');

end;
