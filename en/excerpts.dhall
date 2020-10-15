let VideoSource =
      < LocalVideo : Text
      | YouTubeDL : { url : Text, out : Text, format : Text }
      >

in  [ { source =
          VideoSource.YouTubeDL
            { url = "https://www.youtube.com/watch?v=Y-rmzh0PI3c"
            , out = "Cosmos Laundromat.mp4"
            , format = "mp4"
            }
      , subs = ./"Cosmos Laundromat.srt" as Text
      , clipf = λ(n : Text) → "Cosmos Laundromat-${n}.mkv"
      , audiof = λ(n : Text) → "Cosmos Laundromat-${n}.mp3"
      , framef = λ(n : Text) → "Cosmos Laundromat-${n}.bmp"
      }
    , { source =
          VideoSource.YouTubeDL
            { url = "https://www.youtube.com/watch?v=eRsGyueVLvQ"
            , out = "Sintel.mp4"
            , format = "mp4"
            }
      , subs = ./Sintel.srt as Text
      , clipf = λ(n : Text) → "Sintel-${n}.mkv"
      , audiof = λ(n : Text) → "Sintel-${n}.mp3"
      , framef = λ(n : Text) → "Sintel-${n}.bmp"
      }
    ]
