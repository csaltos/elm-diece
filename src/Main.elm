module Main exposing (main)

-- Press a button to generate a random number between 1 and 6.
--
-- Read how it works:
--   https://guide.elm-lang.org/effects/random.html
--

import Browser
import Die exposing (..)
import Html exposing (..)
import Html.Events exposing (..)
import Process
import Random
import Task exposing (succeed)



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- MODEL


type alias Model =
    ( DieFace, DieFace )


init : () -> ( Model, Cmd Msg )
init _ =
    ( ( One, One )
    , Cmd.none
    )



-- UPDATE


type Msg
    = Roll
    | NewFace ( DieFace, DieFace )
    | RunDeiceCmd (Cmd Msg)


rollDie : Random.Generator DieFace
rollDie =
    Random.weighted ( 10, One ) [ ( 10, Two ), ( 10, Three ), ( 10, Four ), ( 15, Five ), ( 25, Six ) ]


rollDiece : Random.Generator ( DieFace, DieFace )
rollDiece =
    Random.map2
        (\x y -> ( x, y ))
        rollDie
        rollDie


rollDieceSlowly : Float -> Task.Task x (Cmd Msg)
rollDieceSlowly sleep =
    Process.sleep sleep
        |> Task.andThen (\_ -> succeed (Random.generate NewFace rollDiece))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Roll ->
            ( model
            , Cmd.batch
                [ Task.perform RunDeiceCmd (rollDieceSlowly 10)
                , Task.perform RunDeiceCmd (rollDieceSlowly 60)
                , Task.perform RunDeiceCmd (rollDieceSlowly 160)
                , Task.perform RunDeiceCmd (rollDieceSlowly 310)
                , Task.perform RunDeiceCmd (rollDieceSlowly 500)
                ]
            )

        NewFace newFace ->
            ( newFace
            , Cmd.none
            )

        RunDeiceCmd cmd ->
            ( model, cmd )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ viewDieFace model ]
        , button [ onClick Roll ] [ text "Roll" ]
        ]


viewDieFace : Model -> Html Msg
viewDieFace ( dieFace1, dieFace2 ) =
    div []
        [ svgDieFace dieFace1
        , svgDieFace dieFace2
        ]
