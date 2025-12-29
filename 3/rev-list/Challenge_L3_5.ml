(* Funzione "rev" - restituisce la lista inversa rispetto a quella passata come parametro *)
(* PRECISAZIONE: "@" è l'operatore di concatenazione tra due liste *)
let rec rev l = match l with
  [] -> []
| h :: t -> rev t @ [h] ;;

(* Funzione "rev_tailrec" - versione tail recursive della precedente funzione *)
let rec rev_tailrec acc l = match l with
  [] -> acc
| h :: t -> (rev_tailrec ([h]@acc) t) ;;