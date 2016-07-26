module Images exposing (getRandomGif)

import Json.Decode as Json
import Task
import Http
import Types exposing (..)

getRandomGif : Cmd Msg
getRandomGif =
  let
    url = "https://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC"
  in
    Task.perform FetchFail FetchSucceed <| Http.get decodeGifUrl url

decodeGifUrl : Json.Decoder String
decodeGifUrl =
  Json.at ["data", "image_url"] Json.string
