module Update exposing (update)

import Types exposing (..)
import Images exposing (getRandomGif)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Fetch ->
       (model, getRandomGif)
    FetchSucceed newUrl ->
      { model | currentImage = newUrl, previousImages = model.currentImage :: model.previousImages } ! []
    FetchFail _ ->
      { model | currentImage = "error.gif" } ! []
