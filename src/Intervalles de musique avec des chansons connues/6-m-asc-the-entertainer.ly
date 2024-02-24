\version "2.22.0"
\header {
    titleHtml = "Scott Joplin – The Entertainer"
    descriptionHtml = "<h1>Sixte mineure ascendante</h1><p><a href='https://www.youtube.com/watch?v=PbA8CAacNZ4#t=8s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <e c'>2 r4
    % Interval
    e4 c'2
    % Music
    \time 2/4
    \tempo 4 = 120
    d,16 dis16
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    e16 [c'8
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    e,16] c'8 [e,16 c'16]~c4
  }

\include "./templates/outputWithEasyHeads.ly"

