let rec sum l =
  match l with
  | [] -> 0
  | head :: tail -> head + sum tail
;;

sum [1;2;3];;
sum [1;2;3;4;5;6];;

let rec prod l =
  match l with
  | [] -> 1
  | head :: tail -> head * prod tail
;;

prod [1;2;3];;
prod [1;2;3;4;5;6];;
