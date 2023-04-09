(* Modifique el programa anterior para que, además de informar el mayor número leído, se
informe el número de orden, dentro de la secuencia, en el que fue leído. *)

program tp01-p2-ej2a
var 
  num, max_num: real;
  i, max_i: integer;
begin
  i := 1;
  read(num);
  max_num := num;
  max_i := i;

  for i := 2 to 10 do
  begin
    read(num);
    if (num > max_num) then begin
      max_num := num;
      max_i := i;
    end;
  end;

  writeln('El más grande de los 10 fue ', max_num, ' y se leyó en la posición ', max_i, '.');
end;