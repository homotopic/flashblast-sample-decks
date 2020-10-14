let
  VideoSource = < LocalVideo : Text | YouTubeDL : { url : Text, out : Text, format : Text } >
in

[
  {
    source  = VideoSource.YouTubeDL {
      url   = "https://www.youtube.com/watch?v=Y-rmzh0PI3c"
    ,  out   = "Cosmos Laundromat.mp4"
    , format = "mp4"
    }
  , subs    = (./"Cosmos Laundromat.srt" as Text)
  , clipf   = \(n : Text) -> "Cosmos Laundromat-${n}.mkv"
  , audiof  = \(n : Text) -> "Cosmos Laundromat-${n}.mp3"
  , framef  = \(n : Text) -> "Cosmos Laundromat-${n}.bmp"
  }
]
