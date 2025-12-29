(* Funzione ausiliaria "rev" - restituisce la lista inversa rispetto a quella passata come parametro *)
let rec rev l = match l with
  [] -> []
| h :: t -> rev t @ [h] ;;

(* Funzione ausiliaria "check" - restituisce "true" se gli elementi delle due liste passate corrispondono posizionalmente *)
let rec check l1 l2 = match l1, l2 with
  [], [] -> true
| [a], [b] when a = b -> true
| h1 :: t1, h2 :: t2 when (h1 = h2) -> true && check t1 t2
| _ -> false ;;

(* Funzione "is_palindrome" - restituisce "true" se la lista è palindroma (lettura da sx a dx e viceversa è uguale) *)
let is_palindrome l = 
  let rev_l = rev l in
  check l rev_l ;;

(* TEST *)
assert(is_palindrome []);;
assert(is_palindrome ['a';'n';'n';'a']);;
assert(is_palindrome ['r';'a';'d';'a';'r']);;
assert(is_palindrome ['a';'n';'n';'e'] = false);;
assert(is_palindrome ['z';'a';'n';'n';'a'] = false);;