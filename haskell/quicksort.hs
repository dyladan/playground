quicksort (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let sm = filter (<=x) xs
      lg = filter (>x) xs
  in quicksort sm ++ [x] ++ quicksort lg
