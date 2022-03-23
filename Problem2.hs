main = do 
  let fibNums = 1 : 1 : zipWith (+) fibNums (tail fibNums)  -- https://wiki.haskell.org/The_Fibonacci_sequence

  let answer = sum [x | x <- takeWhile (<= 4000000) fibNums, x `mod` 2 == 0]

  print answer

  return 0
