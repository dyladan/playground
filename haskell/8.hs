compress :: (Eq a) => [a] -> [a]
compress [] = []
compress (x:[]) = [x]
compress (x:y:xs) = if (x == y)
                      then (x:(compress xs))
                      else (x:y:(compress xs))
