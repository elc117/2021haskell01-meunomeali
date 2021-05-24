-- Prática 01 de Haskell - Parte 2
-- Nome: Álisson Braga Canabarro


-- 1)receba uma lista de nomes e aplique a função htmlItem
-- recebe <li> e </li> como prefixo e sufixo
htmlItem :: String -> String
htmlItem str = "<li>" ++ str ++ "</li>"

-- lista de nomes para aplicar o htmlItem
itemize :: [String] -> [String]
itemize lstr = map htmlItem lstr


-- 2)Recebe uma string e retorna apenas suas vogais
-- testa se um caracter é vogal
isVowel2 :: Char -> Bool
isVowel2 c = elem c "aAeEiIoOuU"

-- filtra de uma string apenas as vogais utilizando isVowel2
onlyVowels :: String -> String
onlyVowels str = filter isVowel2 str


-- 3)Recebe uma lista de idades e retorna as que são > 65
-- testa se um valor é maior que 65
isElderly :: Int -> Bool
isElderly x = x > 65

-- filtra e mantem apenas se > 65
onlyElderly :: [Int] -> [Int]
onlyElderly x = filter isElderly x


-- 4)De uma lista de palavras retorna as que tem mais de 10 char
-- verifica se uma palavra tem mais de 10 caracteres
isLongWord :: String -> Bool
isLongWord s = length s > 10

-- mantem apenas as palavras que passaram por isLongWord
onlyLongWords :: [String] -> [String]
onlyLongWords lstr = filter isLongWord lstr


-- 5)Recebe uma lista de números e retorna os que são pares
-- testa se um número é par
isEven :: Int -> Bool
isEven n = mod n 2 == 0

-- mantem apenas os números pares
onlyEven :: [Int] -> [Int]
onlyEven x = filter isEven x 

-- 6)

