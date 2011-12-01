{-# LANGUAGE TypeFamilies, TypeOperators, EmptyDataDecls #-}
{-# OPTIONS_GHC -Wall #-}
----------------------------------------------------------------------
-- |
-- Module      :  TypeUnary.TyNat
-- Copyright   :  (c) Conal Elliott 2009
-- License     :  BSD3
-- 
-- Maintainer  :  conal@conal.net
-- Stability   :  experimental
-- 
-- Type-level unary natural numbers
----------------------------------------------------------------------

module TypeUnary.TyNat
  (
    -- * Type-level natural numbers
    Z, S, (:+:)
  , N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16
  ) where


-- | Type-level representation of zero
data Z
-- | Type-level representation of successor
data S n

-- INSTANCE_TYPEABLE0(Z,zTC ,"Z")
-- INSTANCE_TYPEABLE1(S,sTC ,"S")

infixl 6 :+:

-- | Sum of type-level numbers
type family a :+: b

type instance Z   :+: b = b
type instance S a :+: b = S (a :+: b)

-- Generated code
-- 
--   putStrLn $ unlines ["type N" ++ show (n+1) ++ " = S N" ++ show n | n <- [0..15]]

type N0  = Z
type N1  = S N0
type N2  = S N1
type N3  = S N2
type N4  = S N3
type N5  = S N4
type N6  = S N5
type N7  = S N6
type N8  = S N7
type N9  = S N8
type N10 = S N9
type N11 = S N10
type N12 = S N11
type N13 = S N12
type N14 = S N13
type N15 = S N14
type N16 = S N15
