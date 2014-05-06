boards = [(a,b,c,d,e,f,g,h) |
  a <- [1..8],
  b <- [x | x <- [1..8], x /= a, x /= a+1, x /= a-1],
  c <- [x | x <- [1..8], x /= a, x /= a+2, x /= a-2, x /= b, x /= b+1, x /= b-1],
  d <- [x | x <- [1..8], x /= a, x /= a+3, x /= a-3, x /= b, x /= b+2, x /= b-2, x /= c, x /= c+1, x /= c-1],
  e <- [x | x <- [1..8], x /= a, x /= a+4, x /= a-4, x /= b, x /= b+3, x /= b-3, x /= c, x /= c+2, x /= c-2, x /= d, x /= d+1, x /= d-1],
  f <- [x | x <- [1..8], x /= a, x /= a+5, x /= a-5, x /= b, x /= b+4, x /= b-4, x /= c, x /= c+3, x /= c-3, x /= d, x /= d+2, x /= d-2, x /= e, x /= e+1, x /= e-1],
  g <- [x | x <- [1..8], x /= a, x /= a+6, x /= a-6, x /= b, x /= b+5, x /= b-5, x /= c, x /= c+4, x /= c-4, x /= d, x /= d+3, x /= d-3, x /= e, x /= e+2, x /= e-2, x /= f, x /= f+1, x /= f-1],
  h <- [x | x <- [1..8], x /= a, x /= a+7, x /= a-7, x /= b, x /= b+6, x /= b-6, x /= c, x /= c+5, x /= c-5, x /= d, x /= d+4, x /= d-4, x /= e, x /= e+3, x /= e-3, x /= f, x /= f+2, x /= f-2, x /= g, x /= g+1, x /= g-1]]

boards' = [(a,b,c,d,e,f,g,h) |
  a <- [1..8],
  b <- [x | x <- [1..7]],
  c <- [x | x <- [1..6]],
  d <- [x | x <- [1..5]],
  e <- [x | x <- [1..4]],
  f <- [x | x <- [1..3]],
  g <- [x | x <- [1..2]],
  h <- [x | x <- [1..1]]]

boards'' = [(a,b,c,d,e,f,g,h) |
  a <- [1..8],
  b <- [x | x <- [1..8], x /= a],
  c <- [x | x <- [1..8], x /= a, x /= b],
  d <- [x | x <- [1..8], x /= a, x /= b, x /= c],
  e <- [x | x <- [1..8], x /= a, x /= b, x /= c, x /= d],
  f <- [x | x <- [1..8], x /= a, x /= b, x /= c, x /= d, x /= e],
  g <- [x | x <- [1..8], x /= a, x /= b, x /= c, x /= d, x /= e, x /= f],
  h <- [x | x <- [1..8], x /= a, x /= b, x /= c, x /= d, x /= e, x /= f, x /= g]]

main = do
  putStrLn . show $ boards
  putStrLn . show . length $ boards
  putStrLn . show . length $ boards'
