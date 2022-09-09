
main :: IO ()
main = do 
    content <- readFile "LineSumText.txt"
    let listOfLines = lines content
    let sumOfStrings = sum (map read listOfLines)
    let result = take 10 (show sumOfStrings)
    print result
