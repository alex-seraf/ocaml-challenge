(* Funzione "=?" ("bool_equality") - restituisce "true" se i predicati in input danno lo stesso risultato a parità di parametri *)
let (=?) (p :(bool->bool)) (q :(bool->bool)) = 
  (p true = q true) && (p false = q false) ;;

(* TEST *) 
assert ((fun b -> true) =? (fun b -> true));;
assert ((fun b -> b) =? (fun b -> true) = false);;
assert ((fun b -> false) =? (fun b -> true) = false);;
assert (not =? (fun b -> not (not b)) = false);;
assert ((fun b -> b) =? (fun b -> not (not b)));;