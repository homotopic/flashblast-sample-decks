let FB = ./fb.dhall

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
              , spec = FB.Spec.Excerpt ./en/excerpts.dhall
              }
            ]
          }
        }
      ],
      forvoApiKey = None Text
    }
