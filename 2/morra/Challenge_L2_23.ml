(* Tipo "winner" *)
type winner = Player | Computer | Tie ;;

(* Funzione "rndHGC" - genera una coppia casuale che rappresenta il round del computer nel gioco "Morra" (funzione win) *)
let rndHGC () = (Random.int(6), Random.int(11)) ;;

(* Funzione "win" - restituisce la coppia del computer e il risultato del round del gioco "Morra" *)
let win (hp, gp) = 
  (* Coppia che rappresenta il round del computer *)
  let computer = rndHGC () in
  (* Controllo: se il computer ha indovinato, allora ha vinto *)
  if(snd(computer) = fst(computer)+hp)
  then (computer, Computer)
  else
    (* Altrimenti, controllo: se il giocatore ha indovinato, allora ha vinto *)
    if(gp = fst(computer)+hp)
    then (computer, Player)
    else
      (* Altrimenti si è verificato un pareggio *)
      (computer, Tie) ;;