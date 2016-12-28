let rec last list =
  match list with
  | [] -> None
  | [x] -> Some x
  | head :: tail -> last tail
;;

let rec last2 = function
    | [] | [_] -> None
    | [x;y] -> Some (x,y)
    | _::t -> last2 t
;;

let rec lastN k = function
    | [] -> None
    | h :: t -> if k = 1 then Some h else lastN (k-1) t;;

let rec length l =
  match l with
  | [] -> 0
  | [x] -> 1
  | head :: tail -> 1 + length tail
;;

let reverse list =
    let rec cool stuff = function
      | [] -> stuff
      | h::t -> cool (h::stuff) t in
    cool [] list;;

let isPalindrome list =
  list == List.rev list;;

let rec compress = function
  | head :: head1 :: tail -> if head = head1 then compress tail else head :: tail
  | small -> small
;;

let rec dublicate list =
  match list with
  | [] -> []
  | head :: tail -> head :: head :: dublicate tail
;;

last [1;9;7;3;5];;
last2 [1;9;7;3;5];;
lastN 2 [1;9;7;3;5];;
length [1;9;7;3;5];;
reverse [1;9;7;3;5];;
isPalindrome ["a";"b";"a";"b";"a"];;
compress [11;11;11;22;33;33;44;55];;
dublicate [11;11;11;22;33;33;44;55];;
dublicate (compress [11;11;11;22;33;33;44;55]);;
