fun     append (nil, ys) = ys
|       append (x::xs, ys) = x :: append(xs, ys);

fun reverse (x::xs) = append(reverse (xs), [x] )
|   reverse (nil) = nil;

fun zip (x::xs, y::ys)  = x :: zip(y::ys,xs)
|   zip ([],[])         = []
|   zip ([], y::ys)     = y::ys
|   zip (x::xs,[])      = x::xs;

