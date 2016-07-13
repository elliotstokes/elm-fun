import Html exposing (div, button, text, span)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (onClick)


main =
  beginnerProgram { model = 0, view = view, update = update }


view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    , button [ onClick Double] [ text "D" ]
    , halfDiv
    ]

halfDiv = div []
  [ button [ onClick Half] [ text "H" ] ]

type Msg = Increment | Decrement | Double | Half


update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Double ->
      model * 2

    Half ->
      model / 2
