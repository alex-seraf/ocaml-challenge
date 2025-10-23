(* Challenge: Level 1 - 2 *)

(* Funzione XOR 1 *)
let xor1 a b = (not a && b) || (a && not b) ;;

(* Funzione XOR 2 *)
let xor2 a b = if(a = b) then false else true ;;

(* Funzione XOR 3 *)
let xor3 a b = match(a,b) with
    (false, false) -> false |
    (false, true) -> true |
    (true, false) -> true |
    (true, true) -> false ;;

(* Funzione XOR 4 *)
let xor4 a b = match(a,b) with
    (false, b) -> b |
    (true, b) -> not b ;;