(* RECORD TYPE VERSION - RECORD *)
(* Tipo "person" - RECORD contenente <nome>, <età>, <email_opz> *)
type person =
{
    name    : string;
    age     : int;
    email   : string option;
}

(* Funzione "make_person" - "costruisce" una persona (tipo "person") *)
let make_person (n:string) (a:int) (e:string option) :person =
    if(a>=0 && a<=150)
        then
            {name=n; age=a; email=e}
        else failwith("ERROR: age is not valid.") ;;
    
(* Funzione "get_email" - restituisce la <email> se presente*)
let get_email (p:person) = p.email ;;

(* Funzione "can_send_adult_email" - resituisce "true" se la persona ha una mail ed è maggiorenne *)
let can_send_adult_email (p:person) = match p.email with
    None -> false
|   _ -> if(p.age>=18) then true else false ;;

(* ASSERT di test *)
let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;