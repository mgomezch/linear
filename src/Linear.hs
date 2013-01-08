-----------------------------------------------------------------------------
-- |
-- Module      :  Linear
-- Copyright   :  (C) 2012-2013 Edward Kmett,
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  Edward Kmett <ekmett@gmail.com>
-- Stability   :  experimental
-- Portability :  non-portable
--
-- This module simply re-exports everything from the various modules
-- that make up the linear package.
----------------------------------------------------------------------------
module Linear
  ( module Linear.Conjugate
  , module Linear.Epsilon
  , module Linear.Matrix
  , module Linear.Metric
  , module Linear.Plucker
  , module Linear.Quaternion
  , module Linear.V2
  , module Linear.V3
  , module Linear.V4
  , module Linear.Vector
  )  where

import Linear.Conjugate
import Linear.Epsilon
import Linear.Matrix
import Linear.Metric
import Linear.Plucker
import Linear.Quaternion
import Linear.V2
import Linear.V3
import Linear.V4
import Linear.Vector
