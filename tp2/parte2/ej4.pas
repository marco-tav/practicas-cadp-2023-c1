(* El siguiente programa intenta resolver un enunciado. Sin embargo, el código posee 5 errores. Indicar en
qué línea se encuentra cada error y en qué consiste el error.

Enunciado: Realice un programa que lea datos de 130 programadores Java de una empresa. De cada
programador se lee el número de legajo y el salario actual. El programa debe imprimir el total del dinero
destinado por mes al pago de salarios, y el salario del empleado mayor legajo. *)

program programadores;

procedure leerDatos(var legajo: integer; salario : real); 
begin
  writeln(‘Ingrese el nro de legajo y el salario”); 
  read(legajo);
  read(salario); {no va a poder verse afuera porque entró por valor. Debería ir por referencia (1)}
end;

procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario:real; var maxLegajo:integer);
var
  maxSalario : real; {Podría haber usado una función para esto, creo. Solo necesita retornar un valor simple. Era mejor.}
begin
  if (nuevoLegajo > maxLegajo) then begin
    maxLegajo:= nuevoLegajo
    maxSalario := nuevoSalario {'maxSalario' es interna de 'actualizarMaximo'. Está fuera de alcance del programa principal. (2)}
  end;
end;

var
  legajo, maxLegajo, i : integer;
  salario, maxSalario : real;
begin
  sumaSalarios := 0;
  for i := 1 to 130 do begin
    leerDatos(salario, legajo); {Acá nunca va a llegar nada a salario porque la pasó por valor al procedimiento}
    actualizarMaximo(legajo, salario, maxLegajo); {No se va a actualizar ningún máximo porque lo está metiendo en una interna del procedimiento}
    sumaSalarios := sumaSalarios + salario; {Va a tirar un error porque slario nunca se inicializó.}
  end;
  writeln(‘En todo el mes se gastan ‘, sumaSalarios, ‘ pesos’);
  writeln(‘El salario del empleado más nuevo es ‘,maxSalario);
end;