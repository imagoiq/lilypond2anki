\version "2.22.0"
\header {
    titleHtml = "Queen – Under pressure"
    descriptionHtml = "<h1>Quarte juste descendante</h1><p><a href='https://www.youtube.com/watch?v=a01QQZyl-_I#t=6s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \key bes \major
    %\tempo 4 = 80
    \time 3/4
    % Interval
    <bes f>2 r4
    % Interval
    bes4 f2.
    % Music
    \time 4/4
    \tempo 4 = 120
    bes8 bes8 bes8 bes16 bes16
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    bes8 [f8] r4
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    bes8 bes8 bes8 bes16 bes16 bes8 [f8] r4
  }

\include "./templates/outputWithEasyHeads.ly"

