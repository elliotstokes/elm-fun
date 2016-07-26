module Types exposing (..)

import Http

type alias Model =
  { previousImages : List String
  , currentImage : String
  }

type Msg = Fetch
         | FetchSucceed String
         | FetchFail Http.Error
