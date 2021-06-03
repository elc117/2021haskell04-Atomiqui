-- Prática 04 de Haskell
-- Nome: Alisson Costa Schmidt

--1
faixaIdoso :: Int -> String
faixaIdoso num
  | num >= 60, num < 65 = "IDO64"
  | num >= 65, num < 70 = "IDO69"
  | num >= 70, num < 75 = "IDO74"
  | num >= 75, num < 80 = "IDO79"
  | num >= 80 = "IDO80"
  | otherwise = "ND"

--2
classifIdosos :: [(String,Int)] -> [(String,Int,String)]
classifIdosos lst = [(x, y, faixaIdoso y) | (x,y) <- lst]

--3
classifIdosos':: [(String,Int)] -> [(String,Int,String)]
classifIdosos' lst = map (\ (x, y) -> (x, y, faixaIdoso y)) lst

--4
strColor :: (Int,Int,Int) -> String
strColor rgb = (\x -> "rgb" ++ show x) rgb

--5
genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]
genCircs n p r = 
--(cx, cy)