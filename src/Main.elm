module Main exposing (..)

import Html.App exposing (program)
import Types exposing (..)
import View exposing (view)
import Update exposing (update)
import Images exposing (getRandomGif)


init : (Model, Cmd Msg)
init = (Model [] "waiting.gif", getRandomGif)


main : Program Never
main =
  program
    { init = init
    , view = view
    , update = update
    , subscriptions = \_ -> Sub.none
    }
