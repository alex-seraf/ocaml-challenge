(* Funzione "first_third_fifth" - restituisce gli elementi 1-3-5 della lista, se esistono *)
let first_third_fifth l =
  let len = List.length l in
  match l with
    e1::_::e3::_::e5::_ when len>=5 -> Some (e1, e3, e5)
  | _ -> None ;;

(* TEST *)
assert (first_third_fifth ["cat"; "dog"] = None) ;;
assert (first_third_fifth [1; 2; 3; 4; 5; 6] = Some (1, 3, 5)) ;;