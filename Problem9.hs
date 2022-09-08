import Numeric

main :: IO ()
main = 
    do 
        let result = head [x*y*z | x <- [1..1000], y <- [(x + 1)..1000], z <- [(y + 1)..1000],
                        x + y + z == 1000, x**2 + y**2 == z**2]

        putStrLn (showFFloat Nothing result "")
