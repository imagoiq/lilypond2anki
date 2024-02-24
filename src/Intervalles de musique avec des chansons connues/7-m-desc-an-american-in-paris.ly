\version "2.22.0"
\header {
    titleHtml = "Gerhswin – An american in Paris"
    descriptionHtml = "<h1>Septième mineure descendante</h1><p><a href='https://www.youtube.com/watch?v=MWzlivSzpJM#t=0s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <c' d,>2 r4
    % Interval
    c4 d,2
    % Music
    \time 2/4
    \tempo 4 = 100
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    c'8 d,8
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    e4
    c''8 d,8 e4
    c8 d,8 e8 d'8
    c8 c,16 d16 e4
  }

\include "./templates/outputWithEasyHeads.ly"

