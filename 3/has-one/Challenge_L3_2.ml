(* Funzione "has_one" - restituisce "true" se un valore positivo passato come parametro ha almeno una cifra "1" *)
let rec has_one x = match x with
  (* Se il valore non è positivo fallisce *)
  a when x<0 -> failwith("ERRORE: valore non positivo.")
  
  (* Se la cifra più a DX del numero attuale è "1", restituisce "true" *)
| b when (x mod 10) = 1 -> true
  
  (* In tutti gli altri casi: *)
| _ ->  if(x = 0)
        (* Se il numero attuale è pari a zero (riduzione massima) restituisce "false" (non sono stati trovati "1") *)
        then false
        (* Altrimenti, si procede ad analizzare la cifra immediatamente a SX *)
        else has_one ((x-(x mod 10))/10) ;;

(* TEST *)
assert(has_one 10 = true);;
assert(has_one 220 = false);;
assert(has_one 911 = true);;
assert(has_one 451 = true);;
assert(try has_one (-1) |> fun _ -> false with _ -> true);;