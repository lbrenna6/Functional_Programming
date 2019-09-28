-- Name: Laura Brennan,  Username: lbrenna6
module Ex01 where
import Data.Char (toUpper) -- needed for Part 1

{- Part 1

Write a function 'raise' that converts a string to uppercase

Function 'toUpper :: Char -> Char' converts a character to uppercase
if it is lowercase. All other characters are unchanged

-}
raise :: [Char] -> [Char]
raise([]) = []
raise (x:xs) = toUpper(x):raise(xs)

{- Part 2

Write a function 'nth' that returns the nth element of a list

-}
nth :: Int -> [a] -> a
nth 1(x:xs) = x
nth n(_:xs) = nth (n-1)xs

{- Part 3

write a function commonLen that compares two sequences
and reports the length of the prefix they have in common.

-}
commonLen :: Eq a => [a] -> [a] -> Int
commonLen (x:xs)(y:ys)
	 |x == y = 1 + commonLen xs ys
commonLen _ _ = 0
