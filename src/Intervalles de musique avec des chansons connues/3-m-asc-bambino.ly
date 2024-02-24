\version "2.22.0"
\header {
    titleHtml = "Bambino"
    descriptionHtml = "<h1>Tierce mineure ascendante</h1><p><a href='https://www.youtube.com/watch?v=SE6jppsjo9E#t=66s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <b' d>2 r4
    % Interval
    b4 d2.
    % Music
    \time 4/4
    \tempo 4 = 120
    b8 [
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    b8 d8
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    d8] b8 [b8 ais] r8
    cis,8 [d8 cis8] r8 cis8 [d8 cis8] r8
  }

\include "./templates/outputWithEasyHeads.ly"

