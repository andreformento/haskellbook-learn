-- page 105
module Exercise5rvrsGeneric where



rvrs :: String -> String
rvrs text = do
  concat [getAwesome, getIs, getCurry]
  where getCurry = take 5 text
        getIs = take 4 (drop 5 text)
        getAwesome = drop 9 text

main :: IO ()
main = do
  putStrLn ("before: " ++ text)
  putStrLn "then do transformation..."
  putStrLn $ "after : " ++ (rvrs text)
  where text = "Curry is awesome"
