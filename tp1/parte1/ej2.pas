(* Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
número X, se escribe |X| y se define como:
|X| = X cuando X es mayor o igual a cero
|X| = -X cuando X es menor a cero *)

program tp01-p1-ej02
var 
  num, absNum: real;
begin 
  read(num);
  
  if (num >= 0) then
    absNum := num
  else
    absNum := -1 * num;
  
  write('El valor absoluto de ', num, ' es ', absNum, '.');
end;
