module View exposing (view)

import Html exposing (Html, div, img, button, text, span)
import Html.Attributes exposing (style, src)
import Html.Events exposing (onClick)
import Types exposing (..)

view : Model -> Html Msg
view model =
  div []
    [ getPhotoDiv model.currentImage 
    , previousDiv model.previousImages
    ]

getPhotoDiv : String -> Html Msg
getPhotoDiv isrc =
  div [] [ img [src isrc] []
         , button [ onClick Fetch] [text "Moar"]]

displayPrevious : String -> Html Msg
displayPrevious f = div [] [text <| toString f]

previousDiv : List String ->  Html Msg
previousDiv list = div [] <| List.map displayPrevious list
