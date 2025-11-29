(* Funzione "PIPE" - "|>" passa un argomento alla funzione successiva (associativo da sx a dx) *)
(* PRECISAZIONE: immettendo il nome_funzione tra tonde (...) si specifica un operatore INFISSO *)
let ( |> ) f g = g (f) ;;

(* TEST *)
let double x = x * 2;;
let square x = x * x;;

assert(3 |> double = 6);;
assert(3 |> square = 9);;
assert(3 |> square |> double = 18);;
assert(3 |> double |> square = 36);;
assert(3 |> double |> square |> double = 72);;
assert("hello" |> String.trim |> String.uppercase_ascii = "HELLO");;