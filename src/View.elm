module View exposing (view)

import Html exposing (Html, div, button, text, span)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Types exposing (..)

getColour : Float -> (String, String)
getColour amount = if amount > 100 then ("color", "red") else ("color", "green")

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [style [getColour model.count]] [ text (toString model.count) ]
    , button [ onClick Increment ] [ text "+" ]
    , button [ onClick Double] [ text "Double" ]
    , button [ onClick Half] [ text "Halve" ]
    , halfDiv model.previous
    ]

displayPrevious : Float -> Html Msg
displayPrevious f = div [style [getColour f]] [text (toString f)]

halfDiv : List Float ->  Html Msg
halfDiv list = div [] (List.map displayPrevious list)
