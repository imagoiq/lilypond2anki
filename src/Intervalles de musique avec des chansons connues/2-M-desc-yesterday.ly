\version "2.22.0"
\header {
    titleHtml = "The Beatles – Yesterday"
    descriptionHtml = "<h1>Seconde majeure (ton) descendante</h1><p><a href='https://www.youtube.com/watch?v=ONXp-vpE9eU#t=10s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <g' f>2 r4
    % Interval
    g4 f2.
    % Music
    \tempo 4 = 100
    \time 4/4
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    g8 f16
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    f16~f2. r4 a8 b8 cis16 d8. e8 f8 e4 d8 d8~d2
  }

\include "./templates/outputWithEasyHeads.ly"

