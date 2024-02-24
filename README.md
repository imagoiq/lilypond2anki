This lets you write converts your .ly files into an Anki deck with images of sheet music and generated audio.
Fork of https://github.com/dunstad/lilypond

# Installation

* Lilypond (2.22.0, probably should work with older versions)
* Timidity
* python3 modules genanki and natsort

# Usage

1. Create a folder under `./src` with the desired deck name
2. Put your `.ly` files inside
1. Add header "info" to your files (and remove all others)
1. Run the following command:

```
./lilyToAnki.sh
```

The output when run is a .apkg file you can import into Anki.

# Differences with the original version

* It works with files and directory instead of a single file containing multiple score in a lilypond scheme list (which is make it then easier to reuse your existing files). Directories are used to name the deck.
* There is only one output for the score (on the original version you had the easy score and the standard score)
* The logic is done trough `include` and templating which is more flexible if you want different output for certain files.
