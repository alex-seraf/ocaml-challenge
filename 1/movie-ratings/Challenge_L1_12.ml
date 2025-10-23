(* Funzione "movie_rating" V1 *)
let movie_rating v1 v2 v3 = 
  if((v1>=1 && v1<=5) && (v2>=1 && v2<=5) && (v3>=1 && v3<=5)) 
    then  if(v1=5 && v2=5 && v3=5) then "Masterpiece"
          else  if((v1=5 && v2=5 && v3>=4) || (v3=5 && v1=5 && v2>=4) || (v2=5 && v3=5 && v1>=4)) then "Highly Recommended"
                else  if((v1>=4 && v2>=4 && v3>=3) || (v3>=4 && v1>=4 && v2>=3) || (v2>=4 && v3>=4 && v1>=3)) then "Recommended"
                      else "Mixed Reviews"
  else failwith("ERROR: input out of range.") ;;

(* Altra soluzione: funzione "movie_rating" V2 *)
(* Funzione di supporto 1 - controlla se un voto supera una data soglia*)
let val_over voto soglia = if(voto>=soglia) then 1 else 0 ;;

(* Funzione di supporto 2 - restituisce la somma dei tre voti valutati *)
let votes_over v1 v2 v3 soglia = (val_over v1 soglia) + (val_over v2 soglia) + (val_over v3 soglia) ;;

(* "Funzione movie_rating2" - controllando la quantità di voti soglia, restituisce la stringa desiderata *)
let movie_rating2 v1 v2 v3 =
      if((v1<1 || v1>5) || (v2<1 || v2>5) || (v3<1 || v3>5)) then failwith("ERROR: input out of range.")
      else if (votes_over v1 v2 v3 5)=3 then "Masterpiece"
      else if (votes_over v1 v2 v3 5)=2 && (votes_over v1 v2 v3 4)=3 then "Highly Recommended"
      else if (votes_over v1 v2 v3 4)=2 && (votes_over v1 v2 v3 3)=3 then "Recommended"
      else "Mixed Reviews" ;;