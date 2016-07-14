module Update exposing (update)

import Types exposing (..)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  let
    updatedModel = {model | previous = model.count :: model.previous}
  in
    case msg of
      Increment ->
        (modifyModel updatedModel (\x -> x + 1)) ! []
      Decrement ->
        (modifyModel updatedModel (\x -> x - 1)) ! []
      Double ->
        (modifyModel updatedModel (\x -> x * 2)) ! []
      Half ->
        (modifyModel updatedModel (\x -> x / 2)) ! []

modifyModel: Model -> (Float -> Float) -> Model
modifyModel m f = { m | count = f m.count }
