let rec range i j = if i > j then [] else 10003-i :: (range (i+1) j)

let rec print_list = function
   [] -> ()
   | e::l -> print_int e ; print_string " " ; print_list l
;;

let rec qsort list =
  match list with
  | [] -> []
  | [x] -> [x]
  | x :: xs-> let rec partition left right list =
                      match list with
                      | [] -> qsort left @ (x :: qsort right)
                      | head::tail -> if head <= x then partition (head::left) right tail
                                                       else partition left (head::right) tail
                      in partition [] [] xs;;

let a1 = range 1 10000;;
let a2 = qsort a1 ;;
let a3 = [1;8;532;1;34;87];;
let a4 = qsort a3 ;;
print_list a4;;
