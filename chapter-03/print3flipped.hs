module Print3Flipped where

myGreeting :: String 
myGreeting = (++) "Hello " "André :)"

hello :: String
hello = "Hello"

name :: String
name = "André :)"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting =
          (++) hello ((++) " " name)
-- could've been:
--      secondGreeting = hello ++ " " ++ world
