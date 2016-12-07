myfilter :: [Int] -> [(Int,Int)]
myfilter xs = do i <- [1,2]
                 j <- [1..4]
                 return (i,j)

mymet    :: [Int] -> [Int]
mymet xs =  do y <- xs
               return y



                        
