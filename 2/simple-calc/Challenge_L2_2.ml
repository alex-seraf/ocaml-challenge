(* Tipo "operation" - definisce un'operazione tra interi - associa alla parola <op_name> una coppia di interi <int*int> *)
type operation = Add of int * int | Sub of int * int | Mul of int * int | Div of int * int

(* Funzione "eval" - valuta e calcola il valore dell'operazione passata come parametro *)
let eval (op:operation) = match op with
    Add(x,y) -> Some (x+y)
|   Sub(x,y) -> Some (x-y)
|   Mul(x,y) -> Some (x*y)
|   Div(x,y) -> if(y=0) then None else Some (x/y) ;;

(* Funzione "make_operation" - crea un tipo "operation" a partire dai parametri passati *)
let make_operation (sym:char) (x:int) (y:int) = match sym with
    '+' -> Add(x,y)
|   '-' -> Sub(x,y)
|   '*' -> Mul(x,y)
|   '/' -> if(y=0) then failwith("ERRORE: divisione per zero.") else Div(x,y)
|   _   -> failwith("ERRORE: carattere non valido.") ;;

(* ASSERT di test *)
assert(eval (Add(1,2)) = Some 3) ;;
assert(eval (Div(6,3)) = Some 2) ;;
assert(make_operation '*' 5 4 = Mul(5,4)) ;