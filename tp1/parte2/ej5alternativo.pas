(* Esta solución la agregué para resolver el tema de que la otra, una vez que pasa el primer read, 
lee muchas condiciones al pedo en los if. Si num < min ---> num > max es falso y sin embargo lo 
evalúa igual. No supe como resolverlo de otra forma. *)

program tp01-p2-ej05
var 
  num, min, max, sum: integer;
begin
  suma := 0; {En este solución no es necesario inicializar max y min}

  read(num);
  suma := suma + num;
  min := num;
  max := num; {Al pedo evaluar condiciones si el primero siempre va a ser max y min por ser el único leído}
  
  if (num <> 100) then begin
    repeat
      read(num);
      suma := suma + num;
      
      if (num < min) then {Una vez que ya me saqué de encima el primero, si num < min entonces num > max tiene que ser falso}
        min := num
      else if (num > max) {A lo que voy es a que si num < min entonces ahora esta condición no se evalúa}
        max := num; 
    
    until (num = 100);
  end;

  writeln('El máximo fue: ', max, '.');
  writeln('El mínimo fue: ', min, '.');
  writeln('La suma total es: ', suma, '.');
end;