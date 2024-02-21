Fork of https://github.com/dunstad/lilypond

This lets you write converts your .ly files into an Anki deck with images of sheet music and generated audio.

# Usage

1. Create a folder under `./src` with the desired deck name
2. Put your `.ly` files inside
1. Add header "info" to your files
1. Run the following command:

```
./lilyToAnki.sh
```

The output when run is a .apkg file you can import into Anki.

# Requirements
Lilypond, Timidity, and the python3 modules genanki and natsort.
