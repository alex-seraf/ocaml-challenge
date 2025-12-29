(* Funzione "is_perforated" - restituisce "true" se una lista di interi è "perforata" *)
(* PRECISAZIONE: "perforata" significa che tra due elementi consecutivi della lista esiste almeno un intero strettamente compreso *)
let rec is_perforated l = match l with
  [] -> true
| [_] -> true
| e1 :: e2 :: t when (e1<e2-1 || e1>e2+1) -> true && is_perforated (e2 :: t)
| _ -> false ;;

(* TEST *)
assert(is_perforated []);;
assert(is_perforated [1]);;
assert(is_perforated [1;2] = false);;
assert(is_perforated [1;3]);;
assert(is_perforated [1;5;2]);;
assert(is_perforated [1;3;2] = false);;
assert(is_perforated [1;4;2;0]);;
assert(is_perforated [1;3;2;0] = false);;
assert(is_perforated [1;3;5;2;4;7;3;1]);;