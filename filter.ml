let rec filter l pred =
   match l with
   | [] -> []
   | x :: xs -> if pred x == true then x :: xs else (filter xs pred);;

let pred = (fun x -> x > 3);;
let l = [1;2;3;4;5;6;7;8];;
filter l pred;;
