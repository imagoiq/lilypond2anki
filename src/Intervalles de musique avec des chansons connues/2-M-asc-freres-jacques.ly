\version "2.22.0"

\header {
    titleHtml = "Frères Jacques"
    descriptionHtml = "<h1>Seconde majeure (ton) ascendante</h1><p><a href='https://www.youtube.com/watch?v=qrBvBhzHTFM#t=1s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \time 3/4
    % Interval
    <c' d>2 r4
    % Interval
    c4 d2.
    % Music
    \time 4/4
    c4
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    d4 e4
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    c4 c4 d4 e4 c4
    e4 f4 g2
  }

\include "./templates/outputWithEasyHeads.ly"

