\version "2.22.0"
\header {
    titleHtml = "Bach – Minuet in G"
    descriptionHtml = "<h1>Quinte descendante</h1><p><a href='https://www.youtube.com/watch?v=p1gGxpitLO8#t=3s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <d' g,>2 r4
    % Interval
    d4 d,2
    % Music
    \tempo 4 = 100
    d'4 g,8 [a8 b8 c8]
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    d4 g,4
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    g4 e'4 c8 d8 e8 fis8 g4 g,4 g4
  }

\include "./templates/outputWithEasyHeads.ly"

