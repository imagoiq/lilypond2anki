\version "2.22.0"
\header {
    titleHtml = "Boléro de Ravel"
    descriptionHtml = "<h1>Seconde mineure (demi-ton) descendante</h1><p><a href='https://www.youtube.com/watch?v=3-4J5j74VPw#t=11s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <c' b>2 r4
    % Interval
    c4 b2
    % Music
    \tempo 4 = 60
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    c4~c8 b16
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    c16 d16
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    c16 b16
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    a16 c8 c16 a16 c4
  }

\include "./templates/outputWithEasyHeads.ly"

