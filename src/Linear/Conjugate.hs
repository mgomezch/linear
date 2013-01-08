-----------------------------------------------------------------------------
-- |
-- Module      :  Linear.Conjugate
-- Copyright   :  (C) 2012-2013 Edward Kmett,
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  Edward Kmett <ekmett@gmail.com>
-- Stability   :  experimental
-- Portability :  non-portable
--
-- Involutive rings
----------------------------------------------------------------------------
module Linear.Conjugate
  ( Conjugate(..)
  ) where

import Data.Complex hiding (conjugate)

-- | An involutive ring
class Num a => Conjugate a where
  -- | Conjugate a value. This defaults to the trivial involution.
  conjugate :: a -> a
  conjugate = id

instance Conjugate Double
instance Conjugate Float
instance (Conjugate a, RealFloat a) => Conjugate (Complex a) where
  {-# SPECIALIZE instance Conjugate (Complex Float) #-}
  {-# SPECIALIZE instance Conjugate (Complex Double) #-}
  conjugate (a :+ b) = conjugate a :+ negate b
