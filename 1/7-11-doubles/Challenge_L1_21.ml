(* Funzione "event_true" - verifica gli esiti dei lanci *)
let event_true d1 d2 = (d1+d2 = 7) || (d1+d2 = 11) || (d1 = d2) ;;

(* Funzione "seven_eleven_doubles" - restituisce una tripla (bool, d1, d2) *)
let seven_eleven_doubles () = 
  let d1 = Random.int(6)+1 in     (* Variabile locale "d1" - lancio primo dado *)
  let d2 = Random.int(6)+1 in     (* Variabile locale "d2" - lancio secondo dado *)
  (event_true d1 d2, d1, d2) ;;