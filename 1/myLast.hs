main :: [a] -> IO ()
main [a]  = do print(myLast [a])

myLast :: [b] -> b
myLast = last
