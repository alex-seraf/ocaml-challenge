(* Funzione ausiliaria "is_even" - predicato che si verifica se n è pari *)
let is_even n = (n mod 2)=0 ;;

(* Funzione "consecutive_even" - restituisce la lunghezza della massima sequenza di numeri pari in l *)
let consecutive_even l = 
  let rec helper l acc max = match l with
    [] -> max
  | h1 :: h2 :: t when is_even h1 && is_even h2 -> 
      let acc' = acc+1 in if acc'>max
                          then helper (h2::t) acc' acc' 
                          else helper (h2::t) acc' max
  | h :: t when is_even h -> 
      let acc' = acc+1 in if acc'>max
                          then helper t 1 acc'
                          else helper t 1 max
  | _ :: t -> helper t 0 max
  in

  helper l 0 0 ;;

(* TEST *)
assert(consecutive_even [] = 0);;
assert(consecutive_even [1;2;3;4;5;6] = 1);; 
assert(consecutive_even [1;2;2;3;4;5] = 2);;
assert(consecutive_even [1;2;3;4;2;5] = 2);;
assert(consecutive_even [1;2;2;3;4;2;5] = 2);;
assert(consecutive_even [1;2;2;2;3;4;2;6;5] = 3);;