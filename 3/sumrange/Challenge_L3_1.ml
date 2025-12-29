(* Funzione "sumrange" - somma i valori contenuti in un range specificato (estremi compresi) *)
let rec sumrange a b =
  if(a<=b)
  then a + (sumrange (a+1) b)
  else 0 ;;

(* TEST *)
assert (sumrange 0 1 = 1);;
assert (sumrange 1 3 = 6);;
assert (sumrange 3 2 = 0);;