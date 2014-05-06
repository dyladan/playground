secondToLast :: [a] -> a
secondToLast [] = error "empty list"
secondToLast [_] = error "one element"
secondToLast [x,_] = x
secondToLast (x:xs) = secondToLast xs
