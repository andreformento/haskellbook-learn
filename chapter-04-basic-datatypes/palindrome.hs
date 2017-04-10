module Palindrome where
-- page 127

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x
