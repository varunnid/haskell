
Mymap      ::  (a -> B) ->[a] -> [b]
mymap f xs = case xs of
               [] -> []
               (x:xs) ->f x :  map f xs


type MyParser a = String -> [(a,String)]

myitem :: MyParser Char
myitem  = \str ->  case str of
                     [] -> []
                     (x:xs) -> [(x,xs)]

myfailure :: MyParser a
myfailure = \inp -> [] 

myreturn   :: a -> MyParser a
myreturn x = \inp ->  [(x,inp)]


mysat :: (Char -> Bool) -> MyParser Char
mysat p = do{ [(x,s)] <- myitem   
            ;  if p x then  myreturn x else myfailure
            }

mylist   :: Integer -> [Integer] 
mylist x = x:mylist(x-1)           
            
            
y        = take(2).filter(\x -> x < 7)
c        = y.mylist
 
myfoldr :: (a -> b -> b) -> b -> [a] -> b
myfoldr f acc [] =  acc
myfoldr f acc (x:xs) = f x (myfoldr f acc xs)

myfoldl :: (b -> a -> b) -> b -> [a] -> b
myfoldl f acc xs = case xs of
                     [] -> acc
                     (x:xs)  -> myfoldl f (f acc x) xs 

                                
myquicksort        :: [Int] -> [Int]
myquicksort []     =  []
myquicksort (x:xs) =  myquicksort rs ++ [x] ++ myquicksort ls
    where ls = [ j | j <- xs , j >= x]
          rs = [ y | y <- xs , y < x ]

data BookInfo = Book Int [String]
                deriving (Show)

data MagazineInfo = Magazine Int [String]
                    deriving (Show)
                           
                         
data MediaInfo = BookInfo | MagazineInfo | NewsInfo String
                 deriving (Show)

                          
                         


myfunc x = 23 + y + u
    where y = 6
          u = 9    
              
             
--myfoldl2        :: (a -> b -> a)  -> [b] -> a
myfoldl2 f xs = foldr step id xs 
    where step p q r = q (f  r p )
              

           
           
          
              
                 







