(* En el primero solo hay declaración global de variables, entonces el proceso
   'uno' va a asignar sobre esa, ya que no tiene variables locales. 
   
   En el caso del segundo hay un error y es que, una vez más, no se declaran 
   variables locales del proceso pero en este caso tampoco globales. Las variables 
   se declaran locales del programa principal, entonces cuando el proceso busque 
   'a' no la va a  encontrar en locales, ni en parámetros, ni en globales. Va a 
   tirar un error.*)