import System.IO
import Data.Char(toUpper)



y  = map toUpper
       
x = y . (++) "Your data, in uppercase, is:\n\n"

main :: IO ()
main = do
  inh <- openFile "input.txt" ReadMode
  outh <- openFile "output.txt" WriteMode
  mainloop inh outh
  hClose inh
  hClose outh

mainloop        :: Handle -> Handle -> IO ()
mainloop inh oh =
    do eof <- hIsEOF inh
       if eof
          then return ()
          else do inputStr <- hGetLine inh
                  hPutStrLn oh (x inputStr)
                  mainloop inh oh 
 

    
    
     


             
