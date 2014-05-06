lastElement :: [a] -> a
lastElement [] = error "empty list"
lastElement [x] = x
lastElement (x:xs) = lastElement xs
