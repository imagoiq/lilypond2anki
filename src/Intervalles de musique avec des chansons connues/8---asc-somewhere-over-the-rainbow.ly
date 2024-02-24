\version "2.22.0"
\header {
    titleHtml = "Somewhere over the rainbow"
    descriptionHtml = "<h1>Octave ascendante</h1><p><a href='https://www.youtube.com/watch?v=-V2yTD1FV4Y#t=40s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \clef bass
    \tempo 4 = 80
    \time 3/4
    % Interval
    <c, c'>2 r4
    % Interval
    c4 c'2
    % Music
    \time 2/4
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    c,2 c'2
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    b4 g8 a8 b4 c4 c,2 a'2 g1
  }

\include "./templates/outputWithEasyHeads.ly"

