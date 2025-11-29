(* Funzione caratteristica 1 *)
let f1 x = match x with
  _ when (x>=0) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 2 *)
let f2 x = match x with
  0 -> 1
| 1 -> 1
| 2 -> 1
| _ when (x>=0) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 3 *)
let f3 x = match x with
  _ when (x>0 && x<100) -> 1
| _ when (x>=0) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 4 *)
let f4 x = match x with
  _ when (x>=0 && false) -> 1
| _ when (x>=0 && true) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 5 *)
let f5 x = match x with
  _ when (x>=0) -> 1
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 6 *)
let f6 x = match x with
  _ when (x>=0 && (x mod 2 = 0)) -> 1
| _ when (x>=0 && (x mod 2 <> 0)) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 7 *)
let f7 = f5 ;;

(* Funzione caratteristica 8 *)
let f8 = f5 ;;

(* Funzione caratteristica 9 *)
let f9 = f5 ;;

(* Funzione caratteristica 10 *)
let f10 x = match x with
  _ when (x>=0 && x*1>7 && x*1<20) -> 1
| _ when (x>=0 && x*2>7 && x*2<20) -> 1
| _ when (x>=0) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 11 *)
let f11 x = match x with
  _ when (x>=0 && x<50 && (x mod 2 = 0)) -> 1
| _ when (x>=0) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 12 *)
let f12 x = match x with
  _ when (x>=0 && (x mod 2 = 0) && x<50) -> 1
| _ when (x>=0) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 13 - CONTROLLARE (?) *)
let f13 x = match x with
  _ when (x>=0 && x<=21) -> 1
| _ when (x>=0) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 14 *)
let f14 x = match x with
  _ when (x>=0 && x<=2) -> 1
| _ when (x>=0) -> 0
| _ -> failwith("ERRORE: funzione indefinita per l'input inserito.") ;;

(* Funzione caratteristica 15 - CONTROLLARE (?) *)
let f15 x = 1 ;;