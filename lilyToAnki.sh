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
    # Note: svg backend is different and it will not output otherfile like header so this command is run twice
    lilypond --svg -dpreview -dcrop  -o "$tmpFolder/$deckName/" "$filePath"
    lilypond -H titleHtml -H descriptionHtml --png -dpreview  -o "$tmpFolder/$deckName/" "$filePath"

    # Convert midi to ogg
    timidity "$tmpFolder/$deckName/$fileName.midi" -Ov
done

# Create Anki decks
for d in $tmpFolder/*/ ; do
    deckName=$(basename "$d")
    python3 createAnkiDeck.py "$deckName" "$inputFolder" "$tmpFolder" "$outputFolder"
done

# Clean tmp folder
rm -rf $tmpFolder
