module AOC_2022 exposing (..)

import Browser
import Html exposing (Html, div, h1, img, text)
import AOC_1 exposing (aoc1)
import AOC_1_part_2 exposing (sumOf3ElvesCalories)
import AOC_2 exposing (xxx, entryData, andTheWinnerIs)
import AOC_2_part_2



---- MODEL ----


type alias Model =
    {}


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ div [] [text "day 1 part.1 - sum of calories for Elve with the highest no of Cal  " , aoc1]
        , div [] [ Html.text  "day 1 part.2 - sum of calories for 3 Elves with the highest no of Cal ", text sumOf3ElvesCalories  ]
        , div [] [text xxx, text andTheWinnerIs]
        ]



---- PROGRAM ----




main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = init
        , update = update
        , subscriptions = subscriptions
        }

subscriptions : model -> Sub Msg
subscriptions _ = Sub.none




