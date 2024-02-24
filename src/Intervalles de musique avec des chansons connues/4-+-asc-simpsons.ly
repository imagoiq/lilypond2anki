\version "2.22.0"
\header {
    titleHtml = "Début du thème des Simpsons"
    descriptionHtml = "<h1>Quarte augmentée (triton) ascendante</h1><p><a href='https://www.youtube.com/watch?v=aPzS3QYb868#t=11s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \numericTimeSignature
    \tempo 4 = 80
    \time 3/4
    % Interval
    <c fis>2 r4
    % Interval
    c4 fis2
    % Music
    \time 4/4
    \tempo 4 = 120
    c2 fis4 g4
  }

\include "./templates/outputWithEasyHeads.ly"

