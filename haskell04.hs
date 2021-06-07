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
genCircs :: Int -> (Int, Int) -> Int -> [(Int,Int,Int)]
genCircs n (x, y) r = [(x, y, r) | x <- [x, x+2*r.. x+2*(r*n) - 2*r]]

genReds :: Int -> [(Int,Int,Int)]
genReds n = [(r, g, b) | r <- [13, 13+10..13+n*9], g <- [0..0], b <- [0..0]]
--genReds n = [(r+10, g+2, b+3) | r <- [13..12+n], g <- [0..0], b <- [0..0]]