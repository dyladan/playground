rev :: [a] -> [a]
rev [] = []
rev (x:xs) = (rev xs) ++ [x]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = (xs == (rev xs))
