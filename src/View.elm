module View exposing (view)

import Html exposing (Html, ul, li, div, img, button, text, span)
import Html.Attributes exposing (class, style, src)
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
displayPrevious link = li [] [img [src link] []]

previousDiv : List String ->  Html Msg
previousDiv list = ul [class "previous"] <| List.map displayPrevious list
