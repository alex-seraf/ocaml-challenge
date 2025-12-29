(* Tipo "grade" - rappresenta un voto di un esame *)
type grade = Val of int | CumLaude ;;

(* Funzione "is_valid" - restituisce "true" se l'esame è stato superato *)
let is_valid grade = match grade with
  Val(a) when (a>=18 && a<=30) -> true
| CumLaude -> true
| _ -> false ;;

(* Funzione "int_of_grade" - converte un "grade" in un numero intero *)
let int_of_grade grade =
  if(is_valid grade)
  then
    match grade with
      Val(a) -> a
    | CumLaude -> 32
  else
    failwith("ERRORE: voto non valido.") ;;

(* IMPLEMENTAZIONE RICORSIVA CLASSICA *)
(* Funzione "avg" - restituisce la media di una lista di "grade" *)
let avg l = 
  (* Funzione ausiliaria "sumList" - somma gli elementi della lista di "grade" *)
  let rec sumList l acc = match l with
    [] -> acc
  | h :: t -> sumList t (acc + int_of_grade h)
  in

  (* Funzione ausiliaria "len" - calcola la dimensione della lista di "grade" *)
  let rec len l acc = match l with
    [] -> acc
  | _ :: t -> len t acc+1
  in

  (* Conversione da int a float *)
  let list_len = float_of_int (len l 0) in
  let list_sum = float_of_int (sumList l 0) in

  (* Calcolo della media *)
  if(list_len = 0.)
  then 0.
  else list_sum /. list_len ;;

(* IMPLEMENTAZIONE NON RICORSIVA (tramite OPERATORI DI LISTA - libreria List) *)
let avg_norec l =
  (* Filtraggio della lista - restano solo i voti validi *)
  let filtered_l = List.filter is_valid l in
  
  (* Conversione di tutti gli elementi della lista da "grade" a int *)
  let int_l = List.map int_of_grade filtered_l in
  
  (* Conversione di tutti gli elementi della lista da int a float *)
  let float_l = List.map float_of_int int_l in
  
  (* Somma di tutti gli elementi della lista *)
  let sum = List.fold_left (fun a x -> a+.x) 0. float_l in
  (* Calcolo dimensione lista *)
  let len = List.fold_left (fun a _ -> a+.1.) 0. int_l in

  (* Calcolo risultato finale *)
  if(len = 0.)
  then 0.
  else sum /. len ;;