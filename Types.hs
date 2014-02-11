{-# LANGUAGE GADTs #-}
module Types (
    Bucket(..)
    , Doc(..)
) where

data Bucket = BA | BB | BC
data (a ~ Bucket, b ~ Bucket) => Doc a b = Doc a b
--data Doc a b = forall a b. (a ~ Bucket, b ~ Bucket) => Doc a b
