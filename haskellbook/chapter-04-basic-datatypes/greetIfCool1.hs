-- greetIfCool1.hs page 123
module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness = 
  if cool
    then putStrLn "eyyy. What's shakin'?"
  else
    putStrLn "pshhhh."
  where cool = coolness == "downright frosty yo"
