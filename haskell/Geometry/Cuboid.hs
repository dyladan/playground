module Geometry.Cuboid
( volume
, area
) where

volume :: Float -> Float -> Float -> Float
volume x y z = rectArea a b * c

area :: Float -> Float -> Float -> Float
area x y z = rectArea x y * 2 + rectArea x z * 2 + rectArea y z * 2

rectArea :: Float -> Float -> Float
rectArea x y = x * y
