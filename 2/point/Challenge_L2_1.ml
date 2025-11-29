(* Tipo "point" - rappresenta un punto nel piano *)
type point = float*float ;;   (* T-upla - coppia x e y tramite prod. cartesiano *)

(* Tipo "color" - unione disgiunta *)
type color = Red | Green | Blue ;;

(* Tipo "colored_point" - tipo composto tramite prod. cartesiano *)
type colored_point = point*color ;;



(* Funzione "translate" - senza tipo "point" - restituisce il punto + offset*)
let translateNoPoint ((x:float), (y:float)) (offx:float) (offy:float) =
    (x+.offx, y+.offy) ;;



(* Funzione "translate" - con tipo "point" *)
let translate (p:point) (offx:float) (offy:float) =
    ((fst(p)+.offx, snd(p)+.offy):point) ;;

(* Funzione "distance_from_origin" - restituisce la distanza del punto dall'origine *)
let distance_from_origin ((x,y):point) =
    sqrt ( (x*.x) +. (y*.y) ) ;;

(* Funzione "same_color" - restituisce "true" se i punti passati sono dello stesso colore *)
let same_color (cp1:colored_point) (cp2:colored_point) = match(cp1, cp2) with
    ((_, Red), (_, Red))        -> true
|   ((_, Green), (_, Green))    -> true
|   ((_, Blue), (_, Blue))      -> true
|   _-> false ;;

(* Funzione "recolor" - restituisce il punto passato con il colore modificato *)
(* NOTA BENE: fare un cast esplicito dopo l'elenco dei parametri della funzione specifica il TIPO DI RITORNO *)
let recolor ((point, color):colored_point) new_color :colored_point =
    (point, new_color) ;;

(* ASSERT di test *)
assert(translate (1.,2.) 1. 0. = (2.,2.)) ;;
assert(translate (1.,2.) 0. 2. = (1.,4.)) ;;
assert(distance_from_origin (4.,3.) = 5.) ;;
assert(same_color ((1.,1.), Red) ((3.,2.), Red)) ;;
assert(same_color ((1.5,2.3), Blue) (recolor ((1.2,2.1), Green) Blue)) ;;