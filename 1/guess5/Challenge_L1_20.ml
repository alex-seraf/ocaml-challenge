(* Funzione "guess5" - restituisce una coppia (bool, random_generated) se il parametro n è compreso tra 1 e 5 e random_generated=n *)
let guess5 n = 
  if(n<1 || n>5) 
    then failwith("Error: out of range.")     (* Fallimento della funzione *)
  else 
    let rand = Random.int(5)+1                (* Variabile temporanea "rand" - memorizza un numero random tra 1 e 5 *)
    in (rand=n, rand) ;;