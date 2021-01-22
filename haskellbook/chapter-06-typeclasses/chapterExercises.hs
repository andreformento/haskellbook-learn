-- page 213
module ChapterExercises where
----------------------------------------
x :: Int -> Int
x blah = blah + 20

printIt :: IO()
printIt = putStrLn (show (x 10))
----------------------------------------
data Person = Person Bool deriving Show

printPerson :: Person -> IO()
printPerson person = putStrLn (show person)
----------------------------------------
data Mood = Blah
          | Woot deriving (Show, Eq)

settleDown x = if x == Woot
               then Blah
               else x
----------------------------------------
type Subject = String
type Verb = String
type Object = String

data Sentence =
    Sentence Subject Verb Object
    deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"
----------------------------------------
data Rocks =
    Rocks String deriving (Eq, Show)
data Yeah =
    Yeah Bool deriving (Eq, Show)
data Papu =
    Papu Rocks Yeah
    deriving (Eq, Show)
truth = Papu (Rocks "blablabla")
             (Yeah True)
----------------------------------------
