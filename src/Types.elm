module Types exposing (..)

type alias Model =
  { count : Float
  , previous : List Float
  }

type Msg = Increment
         | Decrement
         | Double
         | Half
