(* Funzione "<|>" ("alternative") - restituisce il primo valore disponibile con tag "Some", altrimenti "None" *)
let ( <|> ) f g = match f, g with
  None, None    -> None
| None, Some y  -> g
| Some x, None  -> f
| _, _          -> f ;;

(* TEST *)
assert (None <|> Some false = Some false);;
assert (Some true <|> None <|> Some false = Some true);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> None <|> Some "dog" <|> None = Some "dog");;
assert ( Some true <|> (None <|> Some false) = Some true );;