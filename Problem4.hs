reverseNum :: Integer -> Integer 
reverseNum x = read (reverse (show x))

isPalindrome:: Integer -> Bool 
isPalindrome x = x == reverseNum x

main :: IO ()
main = 
    do 
        let result = maximum (filter (\x -> isPalindrome x) [x*y | x <- [100..1000], y <- [x + 1..1000]])
        print result
