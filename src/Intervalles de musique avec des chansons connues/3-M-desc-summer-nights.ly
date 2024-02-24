\version "2.22.0"
\header {
    titleHtml = "Grease – Summer Nights"
    descriptionHtml = "<h1>Tierce majeure ascendante</h1><p><a href='https://www.youtube.com/watch?v=ZW0DfsCzfq4#t=35s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 100
    \time 3/4
    % Interval
    <fis d>2 r4
    % Interval
    fis4 d2
    % Music
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    fis8  d8
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    g8 e8 r4 a8 fis8 a8 a8~a8 g8.
  }

\include "./templates/outputWithEasyHeads.ly"

