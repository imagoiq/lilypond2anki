\version "2.22.0"
\header {
    titleHtml = "Have yourself a little merry christmas (à la fin 'So have YOURself a little merry christmas now')"
    descriptionHtml = "<h1>Septième majeure descendante</h1><p><a href='https://youtu.be/5SqHbABhDdk?feature=shared&t=156'>Lien YouTube</a></p>"
}

scoreToInclude = <<
  \new Voice = "melody" \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <e' f,>2 r4
    % Interval
    e4 f,2
    % Music
    \time 4/4
    \partial 2
    r4 e'4
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    e4 f,4
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    a4 c4 e8 [d8 c8 b8] a4 b4 c1
  }
  \new Lyrics \lyricmode {
  2. 2. 4 So4 have4 your4-self4 a4 merry4 lit-tle Christmas2 now.1
  }
>>

\include "./templates/outputWithEasyHeads.ly"

