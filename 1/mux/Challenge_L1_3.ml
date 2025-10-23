(* Challenge: Level 1 - 3 *)

(* Funzione MUX2 1 *)
let mux2_1 s0 a b = ((not s0) && b) || (s0 && a) ;;

(* Funzione MUX2 2 *)
let mux2_2 s0 a b = if(s0 = true) then a else b ;;

(* Funzione MUX2 3 *)
let mux2_3 s0 a b = match(s0, a, b) with
    (true, _, _)    -> a |
    (false, _, _)   -> b ;;

(* Funzione MUX2 4 *)
let mux2_4 s0 a b = match s0 with
true -> a |
false-> b ;;

(* Funzione MUX2 - realizzata per MUX4 *)
let mux2_m4 s0 a b = if(s0 = false) then a else b ;;

(* Funzione MUX4 1 - realizzata utilizzando istanze della funzione mux2_m4 *)
let mux4_1 s1 s0 a0 a1 a2 a3 = ((mux2_m4 s0 a0 a1) && not s1) || ((mux2_m4 s0 a2 a3) && s1) ;;

(* Funzione MUX4 2 - realizzata utilizzando la funzione mux2_m4 *)
let mux4_2 s1 s0 a0 a1 a2 a3 = mux2_m4 s1 (mux2_m4 s0 a0 a1) (mux2_m4 s0 a2 a3) ;;

(* TEST UNITARI MUX4 *)
assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;