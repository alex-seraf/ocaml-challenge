(* Funzione ausiliaria "listContent" - restituisce il "contenuto" della lista (escluse le parentesi quadre) *)
let rec listContent l = match l with
  [] -> ""                                            (* Caso: no elementi *)
| h :: [] -> string_of_int h                          (* Caso: ultimo elemento *)
| h :: t -> string_of_int h ^ ";" ^ listContent t ;;  (* Caso: elemento centrale *)

(* Funzione "string_of_list" - restituisce una stringa che rappresenta la lista passata come parametro *)
let string_of_list l = match l with
  [] -> "[]"
| [a] -> "[" ^ string_of_int a ^ "]"
| h :: t -> "[" ^ listContent (h::t) ^ "]" ;;