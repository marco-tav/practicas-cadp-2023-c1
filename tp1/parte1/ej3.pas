(* Realizar un programa que lea 3 números enteros y los imprima en orden descendente.
Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir: 12 4 -10 *)

program tp01-p1-ej03
var
  num, mayor, medio, menor: integer;
begin
  read(num);
  mayor := num;
  
  read(num);
  if (num <= mayor) then
    medio := num
  else
    medio := mayor
    mayor := num;
  
  read(num);
  if (num <= medio) then
    menor := num
  else if ((num < mayor) and (num > medio)) then
    menor := medio
    medio := num
  else 
    menor := medio
    medio := mayor
    mayor := num;

  write(mayor, ', ', medio, ', ', menor, '.');
end;