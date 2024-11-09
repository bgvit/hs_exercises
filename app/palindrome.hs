import Data.Ord
import Data.List

-- 4. Turn a list into a palindrome, i.e. it should read the same both backwards and forwards.
-- For example, given the list [1,2,3], your function should return [1,2,3,3,2,1].
palindrome :: [Integer] -> [Integer]
palindrome [] = []
palindrome xs = xs ++ reverse xs


-- 5. Write a function that determines whether its input list is a palindrome.
-- Solução simples:
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

-- 5. Solução usando recursão
isPalindromeRecursively :: Eq a => [a] -> Bool
isPalindromeRecursively [] = True
isPalindromeRecursively [x] = True
isPalindromeRecursively (x:xs) = (x == last xs) && (isPalindromeRecursively (init xs))


-- 6. Create a function that sorts a list of lists based on the length of each sublist.
-- (You may want to look at the sortBy function from the Data.List module.)
sortLists :: [[a]] -> [[a]]
sortLists l = sortBy (comparing length) l

sortLists' :: [[a]] -> [[a]]
sortLists' l = sortBy (\a b -> compare (length a) (length b)) l