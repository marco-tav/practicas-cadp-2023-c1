(* Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final. *)

program tp01-p1-ej09
var 
  operacion: char;
  num, resultado: integer;
begin 
  write('Ingresá un más o un menos:');
  read(operacion);
  resultado := 0;

  if ((operacion = '+') or (operacion = '-')) then begin
    read(num);

    if (operación = '+') then begin 
      while(num <> 0) do begin
        resultado := resultado + num;
        read(num);
      end;
    else
      while(num <> 0) do begin
        resultado := resultado - num;
        read(num);
      end;
    end;
    writeln('El resultado es ', resultado, '.');

  else
    writeln('Solo se puede ingresar + o -!');
  end;

