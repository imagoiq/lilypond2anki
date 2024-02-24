\version "2.22.0"
\header {
    titleHtml = "La mer de Charles Trenet"
    descriptionHtml = "<h1>Quarte juste ascendante</h1><p><a href=''>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <g' c>2 r4
    % Interval
    g4 c2.
    % Music
    \time 4/4
    \tempo 4 = 120
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    g4 c2.
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    b4 c4 d4 e2. c4 d2 b4 a4 g4 e'2
  }

\include "./templates/outputWithEasyHeads.ly"

