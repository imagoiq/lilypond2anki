\version "2.22.0"
\header {
    titleHtml = "Alouette (« et le bec et le bec, Alouette, Alouette »)"
    descriptionHtml = "<h1>Octave descendante</h1><p><a href='https://youtu.be/P2Wbx6gRGS8?feature=shared&t=22'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <c' c,>2 r4
    % Interval
    c4 c,2
    % Music
    \time 6/8
    \tempo 4 = 152
    a'4 g8 f4. c'4 c8
    \override NoteHead.color = #red
    \override Stem.color = #red
    \override Beam.color = #red
    c4. c,4
    \override NoteHead.color = #black
    \override Stem.color = #black
    \override Beam.color = #black
    c8  c4.
    c'4. bes4. a4. g4.
    f4.~f4 g8 a4. a4.
  }

\include "./templates/outputWithEasyHeads.ly"

