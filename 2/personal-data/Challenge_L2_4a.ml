(* PRODUCT TYPE VERSION - TIPO COMPOSTO *)
(* Tipo "person" - COSTRUTTORE DI NUOVO TIPO -> tripla contenente <nome>, <età>, <email_opz> *)
type person = Person of (string * int * string option);;

(* Funzione "make_person" - "costruisce" una persona (tipo "person") *)
let make_person (name:string) (age:int) (email:string option) =
    if(age>=0 && age<=150)
        then
            Person(name, age, email)
        else failwith("ERROR: age is not valid.") ;;
    
(* Funzione "get_email" - restituisce la <email> se presente*)
let get_email (Person (name, age, email)) = email ;;

(* Funzione "can_send_adult_email" - resituisce "true" se la persona ha una mail ed è maggiorenne *)
let can_send_adult_email (Person (name, age, email)) = match email with
    None -> false
|   _ -> if(age>=18) then true else false ;;

(* ASSERT di test *)
let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;