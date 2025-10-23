(* Challenge: Level 1 - 5 *)

(* Funzione massimo tra due naturali *)
let max_nat x y = 
  if(x<0 || y<0) 
  then failwith("ERRORE: almeno uno dei valori inseriti non e' un numero naturale")
  else 
    if(x>=y)
    then x
    else y ;;

(* TEST UNITARI FUNZIONE max_nat *)
assert(max_nat 2 5 = 5);;
assert(max_nat 5 2 = 5);;
assert(try max_nat (-2) 5 |> fun _ -> false with _ -> true);;
assert(try max_nat 2 (-5) |> fun _ -> false with _ -> true);;
assert(try max_nat (-2) (-5) |> fun _ -> false with _ -> true);;