module Vintage.Types where

import Control.Monad.Reader (ReaderT)
import Data.Binary (Binary)
import GHC.Generics
import System.IO (Handle)

type Session a = ReaderT Handle IO a

class (Binary a) => Request a

class (Binary a) => Response a
