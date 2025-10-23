(* Funzione "parrot_trouble" *)
let parrot_trouble parrot hour =
  if(hour<0 || hour>23) then None
  else
  if(parrot && (hour<7 || hour>=20)) then Some true
  else Some false ;;

(* PRECISAZIONE: il costruttore "Some" si utilizza quando è necessario restituire un tipo di dato in base ad un criterio *)
(* Rappresenta un'opzione (OPTION); in questo caso se l'orario specificato non è valido restituisce il tipo speciale None, altrimenti Bool *)