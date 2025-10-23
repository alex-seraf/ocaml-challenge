(* Enumerazione: gruppo sanguigno *)
type blood_group = A | B | AB | O ;;

(* Funzione che verifica la compatibilità tra gruppi sanguigni *)
let check_groups d r =
  if(d=r) then true
  else
    if(d=O) then true
    else
      if(d=A && r=AB) then true
      else
        if(d=B && r=AB) then true
        else false ;;

(* Assert *)
assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;