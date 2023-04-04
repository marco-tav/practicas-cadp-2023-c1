(* Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse. *)
(* Al finalizar la lectura, informar:
a.La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
b.La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar
1).
c.El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
menor al valor 2500 (en el ejemplo anterior se debería informar 0%)*)

program tp01-p1-ej6
var 
  leg, total, notaM65, destm2500: integer;
  prom, porcentaje: real;
begin
  read(leg);
  total := 0; notaM65 := 0; destm2500 := 0;

  while(leg <> -1) do begin
    total := total + 1;
    read(prom)
    if(prom > 6.5) then (notaM65 := notaM65 + 1);
    if((prom > 8.5) and (leg < 2500)) then (destm2500 := destm2500 + 1);
  end;

  if(total > 0) then begin 
    porcentaje := (destm2500 div total) * 100;
    writeln('El total de alumnos es', total, '.');
    writeln('Hay ', notaM65, ' alumnos con promedio mayor a 6,5.');
    writeln('Hay ', porcentaje, ' de alumnos destacados con legajo menor a 2500.');
  end;
end;