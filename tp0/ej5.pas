(* 5.Un kiosquero debe vender una cantidad X de caramelos entre Y clientes, dividiendo cantidades
     iguales entre todos los clientes. Los que le sobren se los quedará para él.
      
      a.Realice un programa que lea la cantidad de caramelos que posee el kiosquero (X), la
      cantidad de clientes (Y), e imprima en pantalla un mensaje informando la cantidad de
      caramelos que le corresponderá a cada cliente, y la cantidad de caramelos que se
      quedará para sí mismo.
      
      b.Imprima en pantalla el dinero que deberá cobrar el kiosquero si cada caramelo tiene un
      valor de $1.60 *)

program tp00-ej05
const
  precioCaramelo = 1.60;
var
  caramelos, clientes: integer;
begin
  read(caramelos);
  read(clientes);
  write('Cada cliente va a recibir ', caramelos div clientes, ' caramelos y el kiosquero se queda con ', caramelos mod clientes, '.');
  write('El kiosquero se queda con ', writeln((caramelos - (caramelos mod clientes)) * precioCaramelo : 1: 1), ' pesos.');
end;
