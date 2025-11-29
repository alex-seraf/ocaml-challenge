(* CREARE 20 FUNZIONI DEL TIPO SPECIFICATO NELLE INFO DELL'ESERCIZIO *)

(* Funzione "%" (MODULO COME IN C) *)
let ( % ) x y = x mod y ;;

(* Funzione "f1" *)
let f1 x =
  if(x % 2 = 0)
  then true
  else false ;;

(* Funzione "f2" *)
let f2 (x:bool) = match x with
  true -> 1
| false -> 0 ;;

(* Funzione "f3" *)
let f3 x = (x, f1 x) ;;

(* Funzione "f4" *)
let f4 ((x:int), (y:bool)) = match y with
  true -> x*x
| false -> x+x ;;

(* Funzione "f5" - (vedi funzione "modulo") *)
let f5 = ( % ) ;;

(* Funzione "f6" *)
let f6 = fun x -> fun y -> f1 (x+y) ;;

(* Funzione "f7" *)
let f7 = fun (i:bool) -> fun (b:int) -> i ;;

(* Funzione "f8" *)
let f8 x y = match x, y with
  true, true -> 2
| false, false -> 0
| _ -> 1 ;;

(* Funzione "f9" *)
let f9 (b:bool) (i:int) = 
  if(b)
  then i
  else 0 ;;

(* Funzione "f10" *)
let f10 f :int = f 1 ;;

(* Funzione "f11" *)
let f11 p = if (p 1) then 1 else 0 ;;

(* Funzione "f12" *)
let f12 b = (b true) + 1 ;;

(* Funzione "f13" *)
let f13 p = (p 1) && false ;;

(* Funzione "f14" *)
let f14 p = if(p false) then -1 else 1 ;;

(* Funzione "f15" *)
let f15 x (y, z) = x+y+z ;;

(* Funzione "f16" *)
let f16 x y z = x+y+z ;;

(* Funzione "f17" *)
let f17 f x = (f (x+1))+0 ;;

(* Funzione "f18" *)
let f18 f x = (f 25)+5-x ;;

(* Funzione "f19" *)
let f19 f (p:bool) = ((f 5)+1)=0 ;;

(* Funzione "f20" *)
let f20 f (p:bool) = if ((f 5) || true) then 1 else 0 ;;