(* IMPLEMENTAZIONE VALIDA SU TIPI CONFRONTABILI (int, float, string) *)
(* Funzione ausiliaria - trova il valore minimo *)
let minfun f a b = 
  let rec findmin f a b min =
  if(a<b)
  then
    if((f (a+1)) < min)
    then findmin f (a+1) b (f (a+1))
    else findmin f (a+1) b min
  else min 
  in
  findmin f a b (f a) ;;

(* Funzione ausiliaria - trova il valore massimo *)
let maxfun f a b = 
  let rec findmax f a b max =
  if(a<b)
  then
    if((f (a+1)) > max)
    then findmax f (a+1) b (f (a+1))
    else findmax f (a+1) b max
  else max 
  in
  findmax f a b (f a) ;;

(* Funzione "minmaxfun" - restituisce una coppia con minimo e massimo della funzione nel range passato come parametro *)
let minmaxfun f a b = 
  if(a<=b)
  then Some (minfun f a b, maxfun f a b) 
  else None;;

(* TEST *)
assert (minmaxfun (fun x -> x) (-2) 5 = Some (-2,5));;
assert (minmaxfun (fun x -> x) 5 (-2) = None);;
assert (minmaxfun (fun x -> x) 5 5 = Some (5,5));;
assert (minmaxfun (fun x -> x * x) (-2) 5 = Some (0,25));;

let curve x = x |> Float.of_int |> fun x -> x ** 3.0 -. 3.0 *. x;;
let arccos x = x |> Float.of_int |> Float.acos;;

assert (minmaxfun curve (-2) 2 = Some (-2.0,2.0));;
assert (minmaxfun arccos (-1) 1 = Some (0., Float.pi));;