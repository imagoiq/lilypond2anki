\version "2.22.0"
\header {
    titleHtml = "Il était un petit navire"
    descriptionHtml = "<h1>Sixte majeure descendante</h1><p><a href='https://www.youtube.com/watch?v=b8XdcG9VRg0#t=27s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 100
    \time 3/4
    % Interval
    <a' c,>2 r4
    % Interval
    a4 c,2
    % Music
    \time 3/4
    a'8 a8
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    a8 c,4
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    a'4 bes8 a8 a4 g8
  }

\include "./templates/outputWithEasyHeads.ly"

