\version "2.22.0"
\header {
    titleHtml = "Stevie Wonder – Sire Duke"
    descriptionHtml = "<h1>Tierce majeure ascendante</h1><p><a href='https://www.youtube.com/watch?v=EnNgASBdCeo'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    \clef bass
    % Interval
    <d, fis>2 r4
    % Interval
    d,4 fis2.
    % Music
    \time 4/4
    \tempo 4 = 108
    b4
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    d4 fis8. [
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    b16] r4
    gis8 gis8 b16 [ais16 b8] d16 d16 dis16 gis16
  }

\include "./templates/outputWithEasyHeads.ly"

