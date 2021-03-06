-- SYNTAX TEST "source.haskell" "Infix data declarations"


    data A a b = ( T b c ( d e ) f ) `C` '[ A b, C, D [ e, f ] g ]
--  ^^^^ keyword.other.data.haskell
--             ^ keyword.operator.eq.haskell
--               ^                 ^ punctuation.paren.haskell
--                                    ^ constant.other.infix.haskell
--                                   ^ ^ punctuation.backtick.haskell
--                                       ^ keyword.operator.promotion.haskell
--       ^         ^                        ^    ^  ^ storage.type.haskell
--         ^ ^       ^ ^   ^ ^   ^            ^         ^  ^   ^ variable.other.generic-type.haskell
--                                        ^                      ^ punctuation.bracket.haskell


    data A a b = '[ X, y, Z ] `C` D e
--  ^^^^ keyword.other.data.haskell
--             ^ keyword.operator.eq.haskell
--               ^ keyword.operator.promotion.haskell
--                             ^ constant.other.infix.haskell
--                            ^ ^ punctuation.backtick.haskell
--                  ^     ^       ^ storage.type.haskell
--         ^ ^         ^            ^ variable.other.generic-type.haskell

    data A a b = ABC.D `C` GH
--  ^^^^ keyword.other.data.haskell
--             ^ keyword.operator.eq.haskell
--               ^^^^ entity.name.namespace.haskell
--                      ^ constant.other.infix.haskell
--                     ^ ^ punctuation.backtick.haskell
--                   ^     ^^ storage.type.haskell
