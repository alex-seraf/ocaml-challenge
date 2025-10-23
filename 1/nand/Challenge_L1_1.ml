(* Challenge: Level 1 - 1 *)

(* Definizione della funzione: let <nome_fun> <par1>, <par...> = <espressione logica> *)
(* Funzione NAND 1: operatori logici *)
let nand1 a b = not (a && b) ;; 

(* Funzione NAND 2: costrutto di selezione *)
let nand2 a b = if (a && b = true) then false else true ;;

(* Funzione NAND 3: funzione "match()" (pattern matching) - tabella di verità ver. 1 *)
let nand3 a b = match(a,b) with
    (false, false) -> true |
    (false, true) -> true |
    (true, false) -> true |
    (true, true) -> false ;;

(* Funzione NAND 4: funzione "match()" (pattern matching) - tabella di verità ver. 2 ("_" indica l'indifferenza del valore logico) *)
let nand4 a b = match(a,b) with
    (true, true) -> false |
    _ -> true ;;