(* Funzione "both_true" - prende in input due predicati e restituisce 
una funzione che risulta "true" solo se entrambi sono veri per il parametro x passato *)
let both_true p q x = (p x) && (q x) ;;

(* TEST *)
let is_positive x = x > 0;;
let is_even x = x mod 2 = 0;;
let is_positive_and_even = both_true is_positive is_even;;

assert(is_positive_and_even 4 = true);;
assert(is_positive_and_even 3 = false);;