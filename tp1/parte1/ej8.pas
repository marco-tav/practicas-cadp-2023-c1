(* Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”. *)

program tp01-p1-ej08
var
  a: char; i: integer;
begin
  i: 0; read(a);
  
  while((a = 'a' or a = 'e' or a = 'i' or a = 'o' or a = 'u') and (i < 3)) do begin
    i := i + 1;
    read(a);
  end;

  if (i = 3) then begin
    writeln('Las tres son vocales!');
  else
    writeln('Al menos una no es vocal!');
  end;
end;

