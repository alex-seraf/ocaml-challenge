(* Funzione "min" - restituisce il minimo tra due parametri *)
let min a b = 
  if(a<=b) then a
  else b ;;

(* Funzione "max" - restituisce il massimo tra due parametri *)
let max a b = 
  if(a>=b) then a
  else b ;;

(* Funzione "minmax3" - restituisce una coppia con in ordine il minimo e il massimo dei tre parametri *)
let minmax3 a b c = ((min (min a b) (min b c)), (max (max a b) (max b c))) ;;