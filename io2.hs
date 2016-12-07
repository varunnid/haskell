import Control.Monad ( filterM, forM)
import System.Directory (Permissions(..), getModificationTime, getPermissions)
import System.Time (ClockTime(..))
import System.FilePath (takeExtension)
import Control.Exception (bracket, handle)
import System.IO (forM, IOMode(..), hClose, hFileSize, openFile, </>)



type Predicate = FilePath -- path to directory entry
               -> Permissions -- permissions
               -> Maybe Integer -- file size (Nothing if not file)
               -> ClockTime -- last modified
               -> Bool


handle

getPermissions

getModificationTime
  
f   :: int -> Maybe int
f a = Just a


handle
mapM
liftM
forM
