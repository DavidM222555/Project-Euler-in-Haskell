import Numeric

main :: IO ()
main = 
    do 
        let sumOfSquares = sum (map (\x -> x**2) [1..100])
        let squareOfSums = (sum [1..100]) ** 2
        let result = squareOfSums - sumOfSquares

        -- To convert the number from scientific notation
        putStrLn (showFFloat Nothing result "")
