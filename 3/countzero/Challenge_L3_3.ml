(* Funzione "countzero" - restituisce il numero di f(x)=0 nel range passato come parametro *)
let rec countzero f a b = 
  if(a<=b)
  then 
    if((f a)=0)
    then 1 + (countzero f (a+1) b)
    else 0 + (countzero f (a+1) b)
  else 0 ;;

(* TEST *)
assert (countzero (fun x -> x) (-10) 10 = 1);;
assert (countzero (fun x -> x) 1 10 = 0);;
assert (countzero (fun x -> x*x - 1) (-10) 10 = 2);;
assert (countzero (fun x -> (if x<0 then -x else x) - 1) (-10) 10 = 2);;