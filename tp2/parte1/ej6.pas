(* a. Realice un módulo que lea de teclado números enteros hasta que llegue un valor negativo. Al finalizar la
      lectura el módulo debe imprimir en pantalla cuál fue el número par más alto.

   b. Implemente un programa que invoque al módulo del inciso a. *)


program tp02-p1-ej06
procedure hallarParMasAlto;
var 
  parMax, num: integer;
begin
  parMax := -32766; {Pongo el menor entero par representable por Pascal}

  repeat 
    read(num);
    if ((num mod 2 = 0) and (num > parMax) and (num >= 0)) then (parMax := num);
  until (num < 0);

  writeln('El mayor par leído fue el ', parMax, '.');
end;
{Programa principal}
begin
  hallarParMasAlto;
end;
