(* Funzione "square" - restituisce il quadrato di x *)
let square x = x*x ;;

(* Funzione "exp9" - restituisce x elevato 9 *)
let exp9 x = x * (square (square (square x))) ;;