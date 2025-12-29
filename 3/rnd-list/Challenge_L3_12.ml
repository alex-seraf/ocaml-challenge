(* Funzione "rnd_list" - genera una lista di n valori compresi in [1,b] *)
let rnd_list n b =
  let rec helper n b acc =
    if n>0
    then helper (n-1) b (acc@[(Random.int b)+1])
    else acc
  in

  helper n b [] ;;