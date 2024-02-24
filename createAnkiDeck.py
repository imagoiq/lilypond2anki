import genanki, os, sys
from natsort import natsorted

deckName = sys.argv[1]
inputFolderName = sys.argv[2]
tmpFolderName = sys.argv[3]
outputFolderName = sys.argv[4]

print('\ncreating anki package file...')

my_model = genanki.Model(
  1091735104,
  'Sheet Music',
  fields=[
    {'name': 'Score'},
    {'name': 'TitleHtml' },
    {'name': 'DescriptionHtml' },
    {'name': 'Music'},
  ],
  templates=[
    {
      'name': 'Card 1',
      'qfmt': '{{Music}}<p>{{TitleHtml}}</p>',
      'afmt': '{{FrontSide}}<hr id="answer"><br>{{Score}}<br>{{DescriptionHtml}}',
    },
  ])

my_deck = genanki.Deck(
  2059400110,
  deckName)
my_package = genanki.Package(my_deck)

my_package.media_files = []


# Get all the different music sheet
musicSheetFiles = natsorted(filter(lambda s: '.ly' in s, os.listdir(inputFolderName + "/" + deckName)))

# Create cards and embed medias
for musicSheetFile in musicSheetFiles:
  fileName = musicSheetFile.split('.')[0]

  imgScoreFile = fileName + '.cropped.png'
  audioFile = fileName + '.mp3'
  titleHtmlFile = fileName + '.titleHtml'
  descriptionHtmlFile = fileName + '.descriptionHtml'
  imgTag = '<img src="{0}" style="min-width:500px"/>'

  with open('./{0}/{1}/{2}'.format(tmpFolderName, deckName, titleHtmlFile)) as f:
    titleHtml = f.read()

  with open('./{0}/{1}/{2}'.format(tmpFolderName, deckName, descriptionHtmlFile)) as f:
    descriptionHtml = f.read()

  my_note = genanki.Note(
    model=my_model,
    fields=[
      imgTag.format(imgScoreFile),
      titleHtml,
      descriptionHtml,
      '[sound:{0}]'.format(audioFile),
    ]
  )
  my_deck.add_note(my_note)

  my_package.media_files.extend([
    '{0}/{1}/{2}'.format(tmpFolderName, deckName, imgScoreFile),
    '{0}/{1}/{2}'.format(tmpFolderName, deckName, audioFile),
  ])

# Create package
# TODO : we might need more sanitization for the deckname
deckFileName = deckName.replace(" ", "_").lower()

print('{0}.apkg created.'.format(deckFileName))

my_package.write_to_file('{0}/{1}.apkg'.format(outputFolderName, deckFileName))
