{-# LANGUAGE
    FlexibleContexts,
    ScopedTypeVariables,
    TypeApplications #-}

import Data.Constraint
import Data.Lifted1
import Generics.Constraints

tshow :: forall f a. (Lifted1 Show f, Constraints (f a) Show) => f a -> String
tshow = withDict (lifted1 @Show @f @a) show

main :: IO ()
main = putStrLn (tshow ["Hello", "World"])
