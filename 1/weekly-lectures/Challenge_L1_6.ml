(* Challenge: Level 1 - 6 *)

(* Enumerazioni *)
type weekday = Mo | Tu | We | Th | Fr ;;
type course = ALF | LIP ;;

(* Funzione isLecture *)
let isLecture d c = match(d,c) with
(Tu, ALF) -> true   |
(We, LIP) -> true   |
(Th, _)   -> true   |
(Fr, ALF) -> true   |
(Mo, _)   -> false  |
(Tu, LIP) -> false  |
(We, ALF) -> false  |
(Fr, LIP) -> false ;;