\version "2.22.0"
\header {
    titleHtml = "Duck Ellington – Take the 'A' train"
    descriptionHtml = "<h1>Sixte majeure ascendante</h1><p><a href=''>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <bes' g'>2 r4
    % Interval
    bes4 g'2
    % Music
    \time 4/4
    \tempo 4 = 120
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    bes,1~bes8 g'4.
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    bes,4 ees4 g8 b,8~b2.~b1
  }

\include "./templates/outputWithEasyHeads.ly"

