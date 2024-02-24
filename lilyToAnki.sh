#!/bin/bash
tmpFolder=tmp
inputFolder=src
outputFolder=output

# Generate output from lilypond files to be use inside genanki
find ./$inputFolder -name '*.ly' -print0 |
while IFS= read -r -d '' filePath; do
    deckName=$(basename "${filePath%/*}")
    fileName=$(echo "$(basename "$filePath")" | cut -f 1 -d '.')

    # Create temporary folder for given deck (if it doesn't exist)
    mkdir -p "$tmpFolder/$deckName"

    # Create outputs for every lilypond file inside given deck
    lilypond -H titleHtml -H descriptionHtml --png -dpreview  -dcrop -o "$tmpFolder/$deckName/" "$filePath"

    # Convert midi to ogg
    timidity "$tmpFolder/$deckName/$fileName.midi" -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 128k "$tmpFolder/$deckName/$fileName.mp3"
done

# Create Anki decks
for d in $tmpFolder/*/ ; do
    deckName=$(basename "$d")
    python3 createAnkiDeck.py "$deckName" "$inputFolder" "$tmpFolder" "$outputFolder"
done

# Clean tmp folder
rm -rf $tmpFolder
