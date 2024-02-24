\version "2.22.0"
\header {
    titleHtml = "Les Dents de la mer"
    descriptionHtml = "<h1>Seconde mineure (demi-ton) ascendante</h1><p><a href='https://www.youtube.com/watch?v=ZvCI-gNK_y4#t=0s'>Lien YouTube</a></p>"
}

scoreToInclude = \relative c' {
    \clef bass
    \numericTimeSignature
    \time 3/4
    % Interval
    <e,, f>2 r4
    % Interval
    e4 f2.
    % Music
    \time 4/4
    e4 f8-.
    r8 r2
    e4 f4 e8-. r8 r4
    e4 f8-. r8 e4 f8-. r8
    e4 f8-. r8 e4 f8-. r8
  }

\include "./templates/outputWithEasyHeads.ly"

