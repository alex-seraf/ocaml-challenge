(* Enumerazione "card" *)
(* Questa enumerazione particolare può assumere due tipi di valori: Joker oppure Val seguito da un intero (in questo caso - of int) *)
type card = Joker | Val of int ;;

(* Funzione "win" - restituisce true se il giocatore vince la partita *)
(* c1 è la carta del giocatore, c2 è la carta del dealer *)
let win c1 c2 =  match(c1, c2) with
      (Val a, Val b) -> (a>b)
|     (_, Joker) -> false
|     (Joker, _) -> true ;;