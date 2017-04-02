module Print3 where

myGreeting :: String
-- The above line reads as: "myGreeting has the type String"
myGreeting = "andre" ++ " formento"


firstName :: String
firstName = "andre"

secondName :: String
secondName = "formento"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting = concat [firstName, " ", secondName]
