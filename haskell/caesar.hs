import Data.Char
caesar :: Int -> String -> String
caesar offset input = map (chr) . map (+offset) $ map (ord) $ input
