(* Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior. *)

program tp01-p1-ej07
const 
  code_final = 32767;
var 
  code: integer;
  p_anterior, p_actual: real;
begin
  repeat
    read(code);
    read(p_actual);
    read(p_anterior);
    if ((p_actual div p_anterior) > 1.1) then 
      writeln('El nuevo precio del producto ', code, ' creció más que 10%.'); 
  until (code = code_final);
end;