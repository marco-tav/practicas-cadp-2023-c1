(* Encontrar los 6 errores que existen en el siguiente programa. Utilizar los comentarios entre llaves como guía,
indicar en qué línea se encuentra cada error y en qué consiste: *)

program ejercicio5; { suma los números entre a y b, y retorna el resultado en c }

procedure sumar(a, b, c : integer)
var
  suma : integer;
begin
  for i := a to b do {i no está declarada en ningún lado. 4.}
    suma := suma + i; {Necesita inicializar 'suma'. 1}
    c := c + suma; (* 'c' tendría que pasarla por referencia y hacer la suma derecho ahí. 2, 3.
    Es decir que 'suma' está al pedo.
    Tipo: inicializar c:=0 afuera, pasarla por ref, y después acá hacer c := c + i *)
end;

var
  result : integer;
begin
  result := 0;
  readln(a); readln(b);
  sumar(a, b, 0); {a y b no se declaran ni inicializan en ningún lado. 5, 6.}
  write(‘La suma total es ‘,result);
  { averigua si el resultado final estuvo entre 10 y 30}
  ok := (result >= 10) or (result <= 30); {ok no se declara (7) y la condición está mal, debería ser 
  (result >= 10) and (result <= 30) (8)}
  if (not ok) then (write (‘La suma no quedó entre 10 y 30’)); {(not ok) es siempre falso porque ok es siempre verdadero}
  {habría que poner la condición que dije y poner if (not ok)}
end;