let curry f x y = f (x, y);;

let uncurry f (x, y) = f x y;;

let swap f x y = f y x;;

let uniprod f g x = (f x, g x);;

let uniprod' f g (x, y) = (f x, g y);;

let s f g x = (f x)(g x);;

let k x y = x;;

let i = s k k;;

let b = s (k s) k;;

let w = s s (k i);;
