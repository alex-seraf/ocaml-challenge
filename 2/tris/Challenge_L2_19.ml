(* Funzione "tris" - restituisce "true" sse almeno tre valori della quadrupla sono uguali *)
let tris (a,b,c,d) = ((a=b && b=c) || (b=c && c=d) || (a=c && c=d)) ;;

(* Funzione di test "tris_test" - genera una quadrupla random *)
let tris_test () = 
  (Random.int(10), Random.int(10), Random.int(10), Random.int(10)) ;;