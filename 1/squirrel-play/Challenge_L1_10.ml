(* Enumerazione "season" *)
type season = Spring | Summer | Autumn | Winter ;;

(* Funzione squirrel_play *)
let squirrel_play degrees season = match(season) with
  Summer -> if(degrees>=15 && degrees<=35) then true else false |
  _ -> if(degrees>=15 && degrees<=30) then true else false ;;

(* ASSERT DI PROVA *)
assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;