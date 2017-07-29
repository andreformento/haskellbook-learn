-- page 238
module GreetIfCool3 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
    case cool of
      True  -> putStrLn "eyyyyy. What's shakin'?"
      False -> putStrLn "pshhhh."
    where cool = coolness == "downright frosty yo"

-- *GreetIfCool3> greetIfCool "downright frosty yo"
-- eyyyyy. What's shakin'?
-- *GreetIfCool3> greetIfCool "blah!"
-- pshhhh.
