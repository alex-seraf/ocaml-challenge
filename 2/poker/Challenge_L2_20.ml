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

(* Funzione "poker" - restituisce "true" se si ha un poker in mano (4 carte -> stesso valore e diverso seme) *)
let poker ((c1:card), (c2:card), (c3:card), (c4:card), (c5:card)) = match (c1,c2,c3,c4,c5) with
  (Card(v1,s1), Card(v2,s2), Card(v3,s3), Card(v4,s4), _) when (v1=v2 && v2=v3 && v3=v4) && (s1<>s2 && s2<>s3 && s3<>s4) -> true
| (_, Card(v2,s2), Card(v3,s3), Card(v4,s4), Card(v5,s5)) when (v2=v3 && v3=v4 && v4=v5) && (s2<>s3 && s3<>s4 && s4<>s5) -> true
| (Card(v1,s1), _, Card(v3,s3), Card(v4,s4), Card(v5,s5)) when (v1=v3 && v3=v4 && v4=v5) && (s1<>s3 && s3<>s4 && s4<>s5) -> true
| (Card(v1,s1), Card(v2,s2), _, Card(v4,s4), Card(v5,s5)) when (v1=v2 && v2=v4 && v4=v5) && (s1<>s2 && s2<>s4 && s4<>s5) -> true
| (Card(v1,s1), Card(v2,s2), Card(v3,s3), _, Card(v5,s5)) when (v1=v2 && v2=v3 && v3=v5) && (s1<>s2 && s2<>s3 && s3<>s5) -> true
| _ -> false ;;