(* Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5. *)

program tp01-p2-ej1
var 
  num, i, suma, Ma5: integer;
begin
  suma := 0;
  Ma5 := 0;

  for i := 1 to 10 do 
  begin
    read(num);
    suma := suma + num;

    if(num > 5) then Ma5 := Ma5 + 1;
  end;

  writeln('La suma es ', suma, '.');
  writeln('Se ingresaron ', Ma5, 'números mayores a 5.');
end;