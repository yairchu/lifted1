{-# LANGUAGE
    PolyKinds,
    MultiParamTypeClasses #-}

module Data.Lifted1
    ( Lifted1(..)
    ) where

import Data.Constraint (Dict(..))
import Generics.Constraints (Constraints)

class Lifted1 c f where
    lifted1 :: Constraints (f a) c => Dict (c (f a))

-- Equivalents of Eq1, Ord1, Read1, and Show1
instance Lifted1 Eq   [] where lifted1 = Dict
instance Lifted1 Ord  [] where lifted1 = Dict
instance Lifted1 Read [] where lifted1 = Dict
instance Lifted1 Show [] where lifted1 = Dict
instance Lifted1 Eq   Maybe where lifted1 = Dict
instance Lifted1 Ord  Maybe where lifted1 = Dict
instance Lifted1 Read Maybe where lifted1 = Dict
instance Lifted1 Show Maybe where lifted1 = Dict
instance Lifted1 Eq   ((,) a) where lifted1 = Dict
instance Lifted1 Ord  ((,) a) where lifted1 = Dict
instance Lifted1 Read ((,) a) where lifted1 = Dict
instance Lifted1 Show ((,) a) where lifted1 = Dict
instance Lifted1 Eq   (Either a) where lifted1 = Dict
instance Lifted1 Ord  (Either a) where lifted1 = Dict
instance Lifted1 Read (Either a) where lifted1 = Dict
instance Lifted1 Show (Either a) where lifted1 = Dict

-- More instances
instance Lifted1 Monoid Maybe      where lifted1 = Dict
instance Lifted1 Monoid ((,) a)    where lifted1 = Dict
instance Lifted1 Semigroup Maybe      where lifted1 = Dict
instance Lifted1 Semigroup ((,) a)    where lifted1 = Dict
instance Lifted1 Semigroup (Either a) where lifted1 = Dict
