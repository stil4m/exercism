module Bob exposing (hey)


hey : String -> String
hey remark =
    if String.trim remark == "" then
        "Fine. Be that way!"
    else
        case ( isShout remark, isQuestion remark ) of
            ( True, True ) ->
                "Calm down, I know what I'm doing!"

            ( True, False ) ->
                "Whoa, chill out!"

            ( False, True ) ->
                "Sure."

            ( False, False ) ->
                "Whatever."


isShout : String -> Bool
isShout input =
    String.toUpper input == input && String.toLower input /= input


isQuestion : String -> Bool
isQuestion =
    String.endsWith "?"
