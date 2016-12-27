let rec gcd a = function
  | 0 -> a
  | b -> gcd b (a mod b);;

gcd 7 6;;
gcd 8 5;;
gcd 100 56;;
