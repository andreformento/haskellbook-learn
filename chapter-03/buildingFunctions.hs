-- page 104
module BuildingFunctions where

-- REPL equivalent
-- let conversor text = drop 1 text
removeFirst :: String -> String
removeFirst text = do
  "remove first: " ++ execute
  where execute = drop 1 text
  
addStr :: String -> String
addStr text = do
  "exercise a  : " ++ text ++ "!"

takeChar :: Int -> String -> String
takeChar index text = do
  (++) "exercise b  : " getFirst
  where removeBegin = drop (index - 1) text
        getFirst = take 1 removeBegin

getEnd :: Int -> String -> String
getEnd index text = do
  (++) "exercise c  : " (drop index text)


main :: IO ()
main = do
  putStrLn (removeFirst "Hello World")
  putStrLn (addStr "Curry is awesome")
  putStrLn (takeChar 5 "Curry is awesome!")
  putStrLn (getEnd 9 "Curry is awesome!")
