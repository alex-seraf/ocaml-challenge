(* Funzione "is_posfrac" - restituisce "true" sse la coppia (frazione) in input è positiva *)
let is_posfrac (x,y) = ((x>=0 && y>0) || (x<0 && y<0)) ;;

(* Funzione "compare_posfrac" - compara due frazioni e restituisce 1 se f1>f2, 0 se f1=f2, -1 se f1<f2, altrimenti fallisce *)
let compare_posfrac (x,y) (u,v) =
  (*Controllo frazioni entrambe positive*)
  if(is_posfrac (x,y) && is_posfrac (u,v))
  then 
    (* Valore equivalente frazione 1 - mcm *)
    let eq1 = (y*v)/y*x in
  (* Valore equivalente frazione 2 - mcm *)
    let eq2 = (y*v)/v*u in

    (*CASO f1=f2*)
    if(eq1 = eq2)
    then 0
    else
      (*CASO f1>f2 - tramite mcm*)
      if(eq1 > eq2)
      then 1
      (*CASO f1<f2 - tramite mcm*)
      else -1
  (*CASO: almeno una non è una frazione positiva*)
  else failwith("ERRORE: almeno un parametro NON e' una frazione valida.") ;;

(* TEST *)
assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;

(* Funzione "compare_frac" - compara due frazioni (non necessariamente positive) *)
let compare_frac (x,y) (u,v) =
  (* Valore equivalente frazione 1 - mcm *)
    let eq1 = (y*v)/y*x in
  (* Valore equivalente frazione 2 - mcm *)
    let eq2 = (y*v)/v*u in

  (*CASO f1=f2*)
  if(eq1 = eq2)
  then 0
  else
    (*CASO f1>f2 - tramite mcm*)
    if(eq1 > eq2)
    then 1
    (*CASO f1<f2 - tramite mcm*)
    else -1 ;;

(* TEST *)
assert (compare_frac (1,2) (2,4) == 0);;
assert (compare_frac (1,2) (1,3) == 1);;
assert (compare_frac (-1,2) (2,3) == -1);;
assert (compare_frac (-1,2) (1,-2) == 0);;