let rec last list =
  match list with
  | [] -> None
  | [x] -> Some x
  | head :: tail -> last tail
;;

last [1;9;7;3;5];;
