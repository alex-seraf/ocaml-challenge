(* Funzione "hot" - restituisce "head" (testa) o "tail" (croce) *)
(* in base a un numero generato randomicamente *)
let hot () = 
  if(Random.int(2)=0) then "Head"
  else "Tail" ;;