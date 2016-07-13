module Main exposing (..)

import Html.App exposing (program)
import Types exposing (..)
import View exposing (view)
import Update exposing (update)


init : (Model, Cmd Msg)
init = (Model 50 [], Cmd.none)


main : Program Never
main =
  program
    { init = init
    , view = view
    , update = update
    , subscriptions = \_ -> Sub.none
    }
