module Raindrops exposing (raindrops)


raindrops : Int -> String
raindrops number =
    let
        values =
            List.filterMap identity <|
                [ whenDivides number 3 "Pling"
                , whenDivides number 5 "Plang"
                , whenDivides number 7 "Plong"
                ]
    in
    if List.isEmpty values then
        toString number
    else
        String.concat values


whenDivides : Int -> Int -> a -> Maybe a
whenDivides x y text =
    if x % y == 0 then
        Just text
    else
        Nothing
