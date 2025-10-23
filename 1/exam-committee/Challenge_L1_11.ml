(* Enumerazione "vote" *)
type vote = StrongReject | WeakReject | WeakAccept | StrongAccept ;;

(* Funzione "decide_exam" *)
let decide_exam v1 v2 v3 =
  if((v1=WeakAccept || v1=StrongAccept) && (v2=WeakAccept || v2=StrongAccept) && v3<>StrongReject) then true
  else if((v3=WeakAccept || v3=StrongAccept) && (v1=WeakAccept || v1=StrongAccept) && v2<>StrongReject) then true
  else if((v2=WeakAccept || v2=StrongAccept) && (v3=WeakAccept || v3=StrongAccept) && v1<>StrongReject) then true
  else false ;;