import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 200 230 60 "rgb(255, 255, 0, 1.0)") ++

  svgBegin 300 225 ++ 
  (svgCircle 200 230 60 "rgb(255, 0, 0, 1.0)") ++ 
  (svgCircle 200 150 50 "rgb(255, 255, 0, 1.0)") ++
  (svgCircle 200 160 10 "rgb(0, 0, 0, 1.0)") ++
  (svgCircle 220 140 5 "rgb(0, 0, 0, 1.0)") ++
  (svgCircle 180 140 5 "rgb(0, 0, 0, 1.0)") ++

  svgBegin 230 130 ++
  (svgCircle 220 130 5 "rgb(0, 0, 0, 1.0)") ++
  (svgCircle 180 130 5 "rgb(0, 0, 0, 1.0)") ++
  (svgCircle 220 130 3 "rgb(255, 255, 0, 1.0)") ++
  (svgCircle 180 130 3 "rgb(255, 255, 0, 1.0)") ++

  svgEnd ++

  svgBegin 300 300 ++
  (svgCircle 260 210 20 "rgb(255, 255, 0, 1.0)") ++
  (svgCircle 140 210 20 "rgb(255, 255, 0, 1.0)") ++

  svgEnd ++

  svgBegin 300 215 ++
  (svgCircle 260 210 20 "rgb(255, 0, 0, 1.0)") ++
  (svgCircle 140 210 20 "rgb(255, 0, 0, 1.0)") ++

  svgEnd ++
  svgEnd ++

  (svgCircle 160 110 15 "rgb(255, 255, 0, 1.0)") ++
  (svgCircle 240 110 15 "rgb(255, 255, 0, 1.0)") ++
  (svgCircle 160 290 20 "rgb(255, 255, 0, 1.0)") ++
  (svgCircle 240 290 20 "rgb(255, 255, 0, 1.0)") ++

  svgEnd


main :: IO ()
main = do
  writeFile "circles.svg" svgAll
