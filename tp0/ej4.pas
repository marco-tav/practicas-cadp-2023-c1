(* Implemente un programa que lea el diámetro D de un círculo e imprima:
     a.El radio (R) del círculo (la mitad del diámetro).
     b.El área del círculo. Para calcular el área de un círculo debe utilizar la fórmula PI x R2
     c.El perímetro del círculo. Para calcular el perímetro del círculo debe utilizar la fórmula
     D*PI (o también PI*R*2). *)

program tp00-ej04
const 
  pi = 3.14;
var
  D, r, A, P: real;
begin 
  read(D);
  r = D / 2;
  A = pi * r * r;
  P = 2 * pi * r;
  write('El círculo tiene: ');
  write('Radio: ', writeln(r : 1 : 2));
  write('Area: ', writeln(A : 1 : 2));
  write('Perímetro: ', writeln(P : 1 : 2));
end;