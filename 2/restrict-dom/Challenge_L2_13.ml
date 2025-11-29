(* Funzione "restrict" - applica la funzione "f" solo sugli input che verificano "p", altrimenti restituisce "None" *)
let restrict f p x = 
  if p x
  then Some (f x)
  else None ;;

(* TEST *)
let f1 = restrict succ (fun x -> x>0);;
assert (f1 1 = Some 2);;
assert (f1 0 = None);;

let f2 = restrict (fun (x,y) -> x - y) (fun (x,y) -> x-y>=0);;
assert(f2 (5,2) = Some 3);;
assert(f2 (5,6) = None);;