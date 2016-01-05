import Stack
main = do
   let stackA = (pop (push 1 empty))
   let stackB = (push 10 (push 5 empty))
   putStrLn stackA == stackB