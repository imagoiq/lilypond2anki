\version "2.22.0"
\header {
    titleHtml = "Blue Seven de Sonny Rollins"
    descriptionHtml = "<h1>Quarte augmentée (triton) descendante</h1><p><a href='https://www.youtube.com/watch?v=kPTBuxw0vdQ#t=12s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <d' aes>2 r4
    % Interval
    d4 aes2.
    % Music
    \time 4/4
    \tempo 4 = 100
    d4 aes2.
    r2 aes8 e8 f8 g8 aes8 e8 r4 e4 r4
  }

\include "./templates/outputWithEasyHeads.ly"

