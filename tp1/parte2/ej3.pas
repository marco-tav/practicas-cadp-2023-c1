(* Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
procesarse. Al finalizar la lectura informar:
- La cantidad de alumnos aprobados (nota 8 o mayor) y
- la cantidad de alumnos que obtuvieron un 7 como nota. *)

program tp01-p2-ej3
type 
  calificacion: 1 .. 10;
var 
  alumno: string;
  nota_epa: calificacion;
  cantAprobados, cantSietes: integer;
begin 
  repeat
    read(alumno);
    read(nota_epa);
    if nota_epa > 8 then cantAprobados := aprobados + 1;
    if nota_epa = 7 then cantSietes := cantSietes + 1;
  until (alumno = 'Zidane Zinedine');

  writeln('Hay ', cantAprobados, ' alumnos que aprobaron EPA.');
  writeln('Hay ', cantSietes, ' alumnos que sacaron 7 en EPA.');
end;