# Flashblast Sample Deck

This is the sample deck for [flashblast](https://gitlab.com/homotopic-tech/flashblast)

To use it you will need `anki`, `danki`, `youtube-dl` and `ffmpeg`.

Download the example video from youtube and place it where the config expects.

```
mkdir -p en/video
```

Then run
```
flashblast
```

And it will output the deck in `out/`. Make your own cards by following the provided examples.

You should manually copy all of the media files that you need to your user profile in `~/.local/share/Ani2/<profile>/collection.media`, but this will be automatic at some point.
