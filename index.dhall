let MultiClozeSpec = { phrases : List Text, images : List Text }

let VideoSource =
      < LocalVideo : Text
      | YouTubeDL : { url : Text, out : Text, format : Text }
      >

let ExcerptSpec =
      { source : VideoSource
      , subs : Text
      , clipf : Text → Text
      , audiof : Text → Text
      , framef : Text → Text
      }

let VariField = < Empty | Raw : Text | Images : List Text | Audio : Text >

let MinimalReversedSpec = { from : VariField, to : VariField }

let BasicReversedSpec =
      { from : VariField
      , from_extra : VariField
      , to : VariField
      , to_extra : VariField
      }

let Spec =
      < Forvo : { locale : Text, spec : List MultiClozeSpec }
      | Excerpt : List ExcerptSpec
      | MinimalReversed : List MinimalReversedSpec
      | BasicReversed : List BasicReversedSpec
      >

in  { decks =
      [ { mapKey = "en"
        , mapValue =
          { resourceDirs =
            { images = "en/images", audio = "en/audio", video = "en/video" }
          , exportDirs =
            { notes = "out/decks/en/notes"
            , clips = "out/decks/en/clips"
            , audio = "out/decks/en/audio"
            , images = "out/decks/en/images"
            }
          , parts =
            [ { outfile = "excerpts.csv"
              , spec = Spec.Excerpt ./en/excerpts.dhall
              }
            ]
          }
        }
      ]
    }
