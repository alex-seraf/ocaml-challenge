(* Funzione "option_map" - prende in input una funzione e un valore "option" e restituisce "None" se input è "None", "Some(f x)" altrimenti *)
(* PRECISAZIONE: attraverso il pattern matching iniziale è possibile "spacchettare" il tipo x:option
per ottenere solo il valore x e questo consente di avere la funzione del tipo richiesto *)
let option_map f x = match x with
  None -> None
| Some x' -> Some (f x') ;;

(* TEST *)
let double x = x * 2;;
let square x = x * x;;

assert (option_map double (Some 3) = Some 6);;
assert (option_map double None = None);;
assert (option_map double (Some (square 3)) = Some 18);;
assert (option_map square (option_map double None) = None);;