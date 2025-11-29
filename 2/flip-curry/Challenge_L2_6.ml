(* Funzione "flip" - prende in input una funzione f e restituisce una funzione come f ma con parametri al contrario *)
let flip f x y = f y x ;;

(* TEST *)
let sub x y = x - y;;
let flipped_sub = flip sub;;

assert (flipped_sub 3 10 = 7);;
assert (flipped_sub 10 3 = -7);;