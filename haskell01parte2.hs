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
-- testa se 60 < x < 80
between60and80 :: Int -> Bool
between60and80 x = x > 60 && x <80

-- mantem apenas os números entre 60 e 80
onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 x = filter between60and80 x


-- 7)Conta o numero de espaços de uma String
-- testa se um caractere é ' "
isSpace :: Char -> Bool
isSpace c = c == ' '

-- recebe uma String e deixa apenas seus espaços
onlySpace :: String -> String
onlySpace str = filter isSpace str

-- vê o tamanho da string recebida após passar por 'onlySpaces'
countSpaces :: String -> Int
countSpaces str = length (onlySpace str)


-- 8) Cálcula a área de circulos, dado uma lista de raios
-- calcula a área de um circulo com o seu raio
circleArea :: Float -> Float
circleArea r = pi*(r^2)

-- aplica 'circleArea' em uma lista de raios
calcAreas :: [Float] -> [Float]
calcAreas x = map circleArea x


-- 9)
--charTest :: Char -> Bool


charFound :: Char -> String -> Bool
charFound char str = length (filter (== char) str) > 0
