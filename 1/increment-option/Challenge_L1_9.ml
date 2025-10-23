(* Funzione di esempio: utilizzo Some con pattern matching *)
let f x = match x with
  None -> 0
| Some x -> x;;

(* Esempi di utilizzo delle funzioni che hanno un input "int option" *)
(* f (Some 3) ;; *)
(* f None ;; *)

(* Funzione "incr_opt" *)
let incr_opt x = match x with
None   -> None      |
Some x -> Some(x+1) ;;