splitlist :: [a] -> ([a], [a])
splitlist xs = splitAt ((length xs + 1) `div` 2) xs

palindrome :: [Integer] -> [Integer]
palindrome [] = []
palindrome xs = xs ++ reverse xs

-- isPalindrome :: [Integer] -> Bool
-- isPalindrome [] = False
-- isPalindrome (x:xs) | odd (length xs) == True = if x == (last xs) then