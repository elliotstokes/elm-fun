module Update exposing (update)

import Types exposing (..)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  let
    updatedModel = {model | previous = model.count :: model.previous}
  in
    case msg of
      Increment ->
        { updatedModel | count = updatedModel.count + 1 } ! []
      Decrement ->
        { updatedModel | count = updatedModel.count - 1 } ! []
      Double ->
        { updatedModel | count = updatedModel.count * 2 } ! []
      Half ->
        { updatedModel | count = updatedModel.count / 2 } ! []
