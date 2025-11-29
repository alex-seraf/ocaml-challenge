(* CARTE FRANCESI *)
(* Tipo "seme" *)
type suit = S | H | D | C ;;
(* Tipo "carta" *)
type card = Card of int * suit ;;

(* Funzione "rndSuit" - restituisce un seme casuale *)
let rndSuit () = 
  let selSuit x = match x with
    0 -> S
  | 1 -> H
  | 2 -> D
  | 3 -> C
  | _ -> failwith("ERRORE: valore non supportato.")
  in selSuit (Random.int(3)) ;;

(* Funzione "rndCard" - restituisce una carta casuale *)
let rndCard () =
  Card (Random.int(12)+1, rndSuit ()) ;;

(* Funzione "rndHand" - restituisce una mano di 5 carte casuali *)
let rndHand () = 
  (rndCard (), rndCard (), rndCard (), rndCard (), rndCard ()) ;;

(* Funzione "ordered_insert" - inserisce un elemento in una lista ordinata *)
let rec ordered_insert x l = match l with
    [] -> [x]
  | h :: t when x<=h -> x :: (h :: t)
  | h :: t -> h :: (ordered_insert x t) ;;

(* Funzione "sort_list" - ordina in maniera crescente una lista di elementi *)
let rec sort_list l = match l with
  [] -> []
| h :: t -> ordered_insert h (sort_list t) ;;

(* Funzione "straight" - restituisce "true" se si ha una scala in mano (5 carte -> valori contigui crescenti) *)
let straight (Card(v1, _), (Card(v2, _)), (Card(v3, _)), (Card(v4, _)), (Card(v5, _))) = 
  let list = sort_list [v1;v2;v3;v4;v5] in 
  match list with
    [a; b; c; d; e] when (b=a+1 && c=b+1 && d=c+1 && e=d+1) -> true
  | _ -> false ;;