-- page 105
module Exercise5rvrs where

rvrs :: IO ()
rvrs = do
  putStrLn ("before: " ++ text)
  putStrLn ("after : " ++ execute)
  where text = "Curry is awesome"
        getCurry = take 5 text
        getIs = take 4 (drop 5 text)
        getAwesome = drop 9 text
        execute = concat [getAwesome, getIs, getCurry]
