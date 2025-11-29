(* Funzione "option_map" - L2_09 *)
let option_map f x = match x with
  None -> None
| Some x' -> Some (f x') ;;

(* Funzione "<*>" - "OPTIONAL_APPLICATION" *)
(* La funzione prende come parametro una funzione (tipo "opzionale") e un argomento (tipo "opzionale"); 
se l'argomento può essere applicato alla funzione, allora restituisce il risultato, altrimenti None *)
let ( <*> ) f x = match f with
  None -> None
| Some f -> option_map f x ;;

(* TEST *)
let square x = x * x
let double x = 2 * x
let multiply x y = x * y;;

assert (Some square <*> None = None);;
assert (None <*> Some 2 = None);;
assert (None <*> (Some double <*> Some 2) = None);;
assert (Some multiply <*> Some 3 <*> Some 2 = Some 6);;
assert (Some multiply <*> None <*> Some 2 = None);;