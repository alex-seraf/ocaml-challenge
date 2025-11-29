(* Funzione "dice" - data una percentuale intera di probabilità, restituisce la faccia 6 con quella probabilità *)
let dice p =
  (* Controllo: valore di probabilità valido *)
  if p < 0 || p > 100 
  then 
    failwith "Probability must be between 0 and 100"
  else
    (* Generazione valore casuale tra 0-99 *)
    let r = Random.int(100) in
    (* Controllo: il valore generato risulta tra i casi compresi dalla probabilità *)
    if r < p
    (* Se vero, restituisce la faccia 6 *)
    then 6
    else
      (* Altrimenti, ricalcola il nuovo valore di probabilità delle altre facce (equiprobabili) *)
      let q = (100 - p) / 5 in
      (* Riadatta il valore casuale generato inizialmente al nuovo range di probabilità *)
      let r' = r - p in
      (* Colloca il nuovo valore random all'interno di un intervallo e restituisce la faccia corrispondente *)
      match r' with
      | x when x < q -> 1
      | x when x < 2*q -> 2
      | x when x < 3*q -> 3
      | x when x < 4*q -> 4
      | _ -> 5 ;;
