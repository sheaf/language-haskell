-- SYNTAX TEST "source.haskell" "Bug with wildcard export consuming a single parenthesis"

module M
  ( S1(..), S2 (..)
--     ^^       ^^ variable.other.member.wildcard.haskell
  , T
    ( .. , ( ..! ), ( :.. ), P, Q )
--    ^^ variable.other.member.wildcard.haskell
--           ^^        ^^ - variable.other.member.wildcard.haskell
  , foo
--  ^^^ entity.name.function.haskell
--  ^^^ - invalid
  )
  where
