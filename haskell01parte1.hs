-- Prática 01 de Haskell - Parte 1
-- Nome: Álisson Braga Canabarro

-- 1)Recebe 2 num. e calcula a soma de seus quadrados.
sumSquares :: Int -> Int -> Int
sumSquares x y = (x^2) + (y^2)

-- 2)Calcula a área de um circulo com o seu raio
circleArea :: Float -> Float
circleArea r = pi*(r^2)

-- 3)Ano de nascimento e ano atual para identificar a idade
age :: Int -> Int -> Int
age x y = y - x

-- 4)Recebe uma idade e retorna true se mairo que 65
isElderly :: Int -> Bool
isElderly x = x > 65

-- 5) <li> e </li> como prefixo e sufixo
htmlItem :: String -> String
htmlItem str = "<li>" ++ str ++ "</li>"

-- 6)Verifica se começa com A
startsWithA :: String -> Bool
startsWithA str = (head str) == 'A'
-- ou :
-- startsWithA str = (str !! 0) == 'A'

-- 7)Verifica se termina com raio
isVerb :: String -> Bool
isVerb str = (last str) == 'r'

-- 8)Verifica se é vogal minuscúla
isVowel :: Char -> Bool
isVowel c = c == 'a' || c == 'e' || c == 'i' || c == 'o' || c =='u'

-- 9)Verifica se 2 listas possuem o mesmo 1º elemento
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads l1 l2 = (head l1) == (head l2)

--10)Verifica se é vogal
isVowel2 :: Char -> Bool
isVowel2 c = elem c "aAeEiIoOuU"
