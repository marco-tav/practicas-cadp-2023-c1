(* Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
- Los códigos de los dos productos más baratos.
- La cantidad de productos de más de 16 pesos con código par. *)

program tp01-p1-ej06
type
  codigo: 1 .. 200;
var 
  cod_prod, cod_min, cod_min2: codigo;
  precio, precio_min, precio_min2: real;
  cant16par, i: integer;
begin
  precio_min := 20000000; {Qué supermercado va a tener productos de 20.000.000 de pesos?}

  for i := 1 to 200 do begin
    read(cod_prod);
    read(precio);
    
    if (precio < precio_min) then begin 
      precio_min2 := precio_min
      cod_min2 := cod_min
      
      precio_min := precio
      cod_min := cod_prod
    end
    else if (precio < precio_min2) then begin
      precio_min2 := precio
      cod_min2 := cod_prod
    end;

    if ((precio > 16) and (cod_prod mod 2 = 0)) then cant16par := cant16par + 1;
  end;

  writeln('El producto más barato es el ', cod_min, '.');
  writeln('El segundo producto más barato es el ', cod_min2, '.');
  writeln('Hay ', cant16par, 'productos de más de 16 pesos con código par.');
end;