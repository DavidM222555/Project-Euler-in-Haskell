divisibleByN :: Integer -> Integer -> Bool
divisibleByN valueToTest n = rem valueToTest n == 0

divisibleUpTo20 :: Integer -> Bool
divisibleUpTo20 n = and [divisibleByN n x | x <- [1..20]]

main :: IO ()
main = 
    do 
        let result = head (filter (\x -> divisibleUpTo20 x) [x*20 | x <- [1..]])
        print result
