(* Funzione "max" - restituisce il massimo tra due offerte*)
let max_offer o1 o2 = 
      if(o1=None && o2=None) then None
      else if(o1=None) then o2
      else if(o2=None) then o1
      else if(o1>=o2) then o1
      else o2 ;;

(* Funzione "best_offer" - restituisce l'offerta migliore tra le tre passate come parametri *)
let best_offer o1 o2 o3 = max_offer (max_offer o1 o2) (max_offer o2 o3) ;;

(* IMPORTANTE: utilizzare nomi diversi tra parametri della funzione e casi nel pattern matching (per evitare malfunzionamenti) *)