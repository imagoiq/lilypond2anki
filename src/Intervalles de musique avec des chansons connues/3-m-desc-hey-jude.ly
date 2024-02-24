\version "2.22.0"
\header {
    titleHtml = "The Beatles – Hey jude"
    descriptionHtml = "<h1>Tierce mineure ascendante</h1><p><a href='https://www.youtube.com/watch?v=A_MjCqQoLLA#t=52s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <c' a>2 r4
    % Interval
    c4 a2
    % Music
    \tempo 4 = 78
    \time 4/4
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    c4  a2
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    r8 a8 [c8 d8] g,2
  }

\include "./templates/outputWithEasyHeads.ly"

