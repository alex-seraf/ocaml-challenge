(* Funzione "is_even" - restituisce true se x è pari *)
let is_even x = ((x mod 2) = 0) ;;

(* Funzione "is_correct" - restituisce true se l'input è tra 1 e 5 compresi *)
let is_correct x = (x>0 && x<6)

(* Funzione "win" - restituisce il vincitore del gioco "Even and odd" *)
let win a b = 
      if((is_correct a && is_correct b && is_even (a+b)) 
            || (is_correct a && not (is_correct b))) then 1
      else if((is_correct a && is_correct b && not (is_even (a+b))) 
            || (is_correct b && not (is_correct a))) then -1
      else 0 ;;