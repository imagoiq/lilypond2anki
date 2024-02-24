\version "2.22.0"
\header {
    titleHtml = "Thème de Star Wars – La Guerre des étoiles"
    descriptionHtml = "<h1>Quinte ascendante</h1><p><a href='https://www.youtube.com/watch?v=C2wcqRWbdHs#t=9s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <g' d'>2 r4
    % Interval
    g4 d'2.
    % Music
    \time 4/4
    \tempo 4 = 120
    \tuplet 3/2 {d,8 d8 d8}
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    g'2 d'2
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    \tuplet 3/2 {c8 b8 a8} g'2 d4
  }

\include "./templates/outputWithEasyHeads.ly"

