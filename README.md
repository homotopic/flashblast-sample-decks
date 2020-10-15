# Flashblast Sample Deck

This is the sample deck for [flashblast](https://gitlab.com/homotopic-tech/flashblast)

## Setup

To use it you will need `anki`, `flashblast`, `youtube-dl` and `ffmpeg`.

Use the anki GUI to load the `Flashblast Template Deck.apkg` into your user
profile. This will provide the note types that flashblast uses.

## Usage

cd to the repository root and run

```
flashblast
```

This will output the decks in `out/`. You can view the clips in
`/out/decks/<deck>/clips` to verify your subtitles align correctly.

Use the anki GUI to import the notes file in `out/decks/en/excerpts.csv`. Make sure to tick `enable HTML` and

Copy the generated stills and audio to your user profile.

```
export ANKI_PROFILE=myusername
cp out/decks/en/images/* "~/.local/share/Ani2/$ANKI_PROFILE/collection.media/"
cp out/decks/en/audio/* "~/.local/share/Ani2/$ANKI_PROFILE/collection.media/"
```

That should be it! Set your frequency settings and enjoy your cards.
