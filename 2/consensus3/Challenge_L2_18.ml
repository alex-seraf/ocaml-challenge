(* Funzione "consensus3" - restituisce un output solo se almeno DUE delle TRE funzioni passate 
danno lo stesso risultato sul parametro x *)
let consensus3 (f, g, h) x = 
  if(Some (f x)=None || Some (g x)=None || Some (h x)=None)
  then failwith("ERRORE: funzione non definita.")
  else
    if(Some (g x) = Some (h x))
      then Some (g x)
      else
        if(Some (f x) = Some (h x))
        then Some (f x)
        else
          if(Some (f x) = Some (g x))
          then Some (f x)
          else None ;;

(* TEST *)
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None);;