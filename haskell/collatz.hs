chain :: Int -> [Int]
chain = (map chain' [0..] !!)
  where chain' 1 = [1]
        chain' n
          | even n = n:chain (n `div` 2)
          | odd n = n:chain (n*3 + 1)

next :: Int -> Int
next n
  | even n = n `div` 2
  | odd  n = (n*3 +1)

count :: Int -> Int
count 1 = 1
count x = 1 + (count (next x))

list x = [(x, count x) | x <- [1..x]]


maximum' :: (Ord a) => [(a,a)] -> (a,a)
maximum' ((x,y):[]) = (x,y)
maximum' ((x,y):xs) = max' (x,y) (maximum' xs)

max' :: (Ord a) => (a,a) -> (a,a) -> (a,a)
max' (x,y) (j,k)
  | y==k = (x,y)
  | y>k  = (x,y)
  | k>y  = (j,k)

