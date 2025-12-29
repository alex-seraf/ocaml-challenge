(* Funzione "knife" - taglia in due parti una lista dato un indice *)
let knife l i = 
  (* Funzione ausiliaria 1 *)
  let rec len l acc = match l with
    [] -> acc
  | h :: t -> len t acc+1
  in
  let list_len = len l 0 in

  (* Funzione ausiliaria 2 *)
  let rec helper l1 l2 i = match l1 with
    [] -> ([], [])
  | _ when i<=0 -> (l2, l1)
  | _ when i>list_len -> (l1, l2)
  | h :: t -> helper t (l2@[h]) (i-1)
  in

  helper l [] i ;;