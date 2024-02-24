\version "2.22.0"
\header {
    titleHtml = "Thème de Love Story"
    descriptionHtml = "<h1>Sixte mineure descendante</h1><p><a href='https://www.youtube.com/watch?v=Y4cmPh2peBY#t=24s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \clef bass
    \time 3/4
    % Interval
    <f a,>2 r4
    % Interval
    f4 a,2
    % Music
    \time 4/4
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    f'8 a,8
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    a8 f'8 f2 f8 a,8 a8 f'8 f8 a,8 bes8 a8 g8 g8 g8 e'8 e2
  }

\include "./templates/outputWithEasyHeads.ly"

