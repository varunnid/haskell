  
data CellState = Live | Dead
                 deriving(Show, Eq)
--instance Eq CellState where
--    Live == Live = True
--    Dead == Dead = True
--    _ == _ = False
                         
data Cell = Cell Int Int CellState
            deriving(Show)

type Board = [Cell]
                    
neighbours           ::  (Cell -> Cell -> Bool) -> Cell -> [Cell] -> [Cell]
neighbours f cell xs  = filter (f cell) xs  

isNeighbour :: Cell  ->  Cell -> Bool
isNeighbour (Cell x y _) (Cell x' y' _)  =  (abs (x-x'))==1 && (abs (y -y')) ==1
                                                                  
myneighbours = neighbours isNeighbour

               
newState                         :: Cell ->[Cell] -> Cell
newState cell@(Cell x y Live) xs = if length (filter (\(Cell _ _ state)-> state == Live) xs) == 2
                              then (Cell x y Dead) else cell
newState cell@(Cell x y Dead) xs = if length (filter (\(Cell _ _ state)-> state == Dead) xs) == 2 
                              then (Cell x y Live) else cell


                                   
acc            :: [Cell]->Cell-> [Cell] -> [Cell]
acc xs cell ys =  h xs:ys
    where h = f.g
          f = newState cell 
          g = myneighbours cell 
 

tick xs = foldr (acc xs) [] xs


     

                                   
            

               

                                     
