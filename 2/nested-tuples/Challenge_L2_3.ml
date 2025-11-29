(* Funzione "total_score" - restituisce il punteggio totale di un esame *)
let total_score ((name:string), ((w:int), (o:int))) = w+o ;;

(* Funzione "passed" - restituisce "true" se w,o>=18 *)
let passed ((name:string), ((w:int), (o:int))) = (w>=18 && o>=18) ;;

(* Funzione "string_of_result" - restituisce una stringa differente se lo studente ha passato o no l'esame *)
(* PRECISAZIONE: la funzione "string_of_..." restituisce una stringa a partire da un certo tipo di dato *)
(* PRECISAZIONE: l'operatore "^" concatena due stringhe *)
let string_of_result ((name:string), ((w:int), (o:int))) = 
    if (passed (name, (w, o)))
        then name ^ " passed with total " ^ string_of_int (total_score (name, (w, o)))
        else name ^ " did not pass" ;;

(* Funzione "merge" - restituisce un unico risultato di uno studente con il massimo tra i due voti conseguiti in ogni prova *)
let merge ((name1:string), ((w1:int),(o1:int))) ((name2:string), ((w2:int),(o2:int))) =
    if(name1 = name2)
        then
            (name1, (max w1 w2 , max o1 o2))
        else
            failwith("ERROR: different students detected.") ;;

(* ASSERT di test *)
assert(total_score ("Mario", (30, 29)) = 59);;
assert(passed ("Luisa", (21, 18)));;
assert(string_of_result ("Luigi", (20, 25)) = "Luigi passed with total 45");;
assert(merge ("Claudia", (22, 25)) ("Claudia", (19, 27)) = ("Claudia", (22, 27)));;