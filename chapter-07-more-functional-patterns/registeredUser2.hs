-- page 232
module RegisteredUser where

newtype Username = Username String
newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser
          | RegisteredUser Username AccountNumber

printUser:: User -> IO ()
printUser UnregisteredUser
          = putStrLn "UnregisteredUser"
printUser (RegisteredUser (Username name)
                          (AccountNumber acctNum))
          = putStrLn $ name ++ " " ++ show acctNum

-- Examples

-- Prelude> printUser UnregisteredUser
-- UnregisteredUser

-- Prelude> let myUser = (Username "andre")
-- Prelude> let myAcct = (AccountNumber 10456)
-- Prelude> printUser $ RegisteredUser myUser myAcct
-- andre 10456
