\version "2.22.0"
\header {
    titleHtml = "A-Ha – Take on Me"
    descriptionHtml = "<h1>Septième majeure ascendante</h1><p><a href='https://www.youtube.com/watch?v=djV11Xbc914#t=53s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 100
    \time 3/4
    % Interval
    <c' b'>2 r4
    % Interval
    c4 b'2
    % Music
    \time 4/4
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    c,1 b'2
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    c4
  }

\include "./templates/outputWithEasyHeads.ly"

