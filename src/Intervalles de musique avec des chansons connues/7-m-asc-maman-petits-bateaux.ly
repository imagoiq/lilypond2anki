\version "2.22.0"
\header {
    titleHtml = "Maman les petits bateaux"
    descriptionHtml = "<h1>Septième mineure ascendante</h1><p><a href='https://www.youtube.com/watch?v=CZgQj2lFirs#t=24s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 100
    \time 3/4
    % Interval
    <d c'>2 r4
    % Interval
    d4 c'2
    % Music
    \time 4/4
    d,8
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    d8
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    c'8 b8 a8 g8 b,8 d8 g8 fis8 d8 e8 fis8
  }

\include "./templates/outputWithEasyHeads.ly"

