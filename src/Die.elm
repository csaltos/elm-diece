module Die exposing (DieFace(..), svgDieFace)

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)


type DieFace
    = One
    | Two
    | Three
    | Four
    | Five
    | Six


svgDieFace : DieFace -> Html msg
svgDieFace dieFace =
    case dieFace of
        One ->
            svgDieOne

        Two ->
            svgDieTwo

        Three ->
            svgDieThree

        Four ->
            svgDieFour

        Five ->
            svgDieFive

        Six ->
            svgDieSix


svgDieOne : Html msg
svgDieOne =
    svg
        [ width "120"
        , height "120"
        , viewBox "0 0 120 120"
        ]
        [ rect
            [ x "10"
            , y "10"
            , width "100"
            , height "100"
            , rx "10"
            , ry "10"
            , stroke "black"
            , fill "white"
            ]
            []
        , circle
            [ cx "60"
            , cy "60"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        ]


svgDieTwo : Html msg
svgDieTwo =
    svg
        [ width "120"
        , height "120"
        , viewBox "0 0 120 120"
        ]
        [ rect
            [ x "10"
            , y "10"
            , width "100"
            , height "100"
            , rx "10"
            , ry "10"
            , stroke "black"
            , fill "white"
            ]
            []
        , circle
            [ cx "40"
            , cy "80"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "40"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        ]


svgDieThree : Html msg
svgDieThree =
    svg
        [ width "120"
        , height "120"
        , viewBox "0 0 120 120"
        ]
        [ rect
            [ x "10"
            , y "10"
            , width "100"
            , height "100"
            , rx "10"
            , ry "10"
            , stroke "black"
            , fill "white"
            ]
            []
        , circle
            [ cx "40"
            , cy "80"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "60"
            , cy "60"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "40"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        ]


svgDieFour : Html msg
svgDieFour =
    svg
        [ width "120"
        , height "120"
        , viewBox "0 0 120 120"
        ]
        [ rect
            [ x "10"
            , y "10"
            , width "100"
            , height "100"
            , rx "10"
            , ry "10"
            , stroke "black"
            , fill "white"
            ]
            []
        , circle
            [ cx "40"
            , cy "80"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "40"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "40"
            , cy "40"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "80"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        ]


svgDieFive : Html msg
svgDieFive =
    svg
        [ width "120"
        , height "120"
        , viewBox "0 0 120 120"
        ]
        [ rect
            [ x "10"
            , y "10"
            , width "100"
            , height "100"
            , rx "10"
            , ry "10"
            , stroke "black"
            , fill "white"
            ]
            []
        , circle
            [ cx "40"
            , cy "80"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "40"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "40"
            , cy "40"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "80"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "60"
            , cy "60"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        ]


svgDieSix : Html msg
svgDieSix =
    svg
        [ width "120"
        , height "120"
        , viewBox "0 0 120 120"
        ]
        [ rect
            [ x "10"
            , y "10"
            , width "100"
            , height "100"
            , rx "10"
            , ry "10"
            , stroke "black"
            , fill "white"
            ]
            []
        , circle
            [ cx "40"
            , cy "40"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "40"
            , cy "60"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "40"
            , cy "80"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "40"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "60"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        , circle
            [ cx "80"
            , cy "80"
            , r "5"
            , stroke "red"
            , fill "red"
            ]
            []
        ]
