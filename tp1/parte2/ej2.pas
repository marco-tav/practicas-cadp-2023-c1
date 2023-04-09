(* Realice un programa que lea 10 números e informe cuál fue el mayor número leído. *)

program tp01-p2-ej2
var 
  num, max_num: real;
  i: integer;
begin
  i := 1;
  read(num);
  max_num := num;

  for i := 2 to 10 do
  begin
    read(num);
    if (num > max_num) then (max_num := num);
  end;

  writeln('El más grande de los 10 fue ', max_num, '.');
end;