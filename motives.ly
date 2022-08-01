\version "2.20.0"

#(ly:set-option 'midi-extension "mid")

\header {
  title = "Motive and transformations"
  composer = \markup {
    \column {
      \line { " " }
      \line { " " }
    }
  }
}

\paper {
  #(set-paper-size "letter")
  indent = 0
  top-margin = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  ragged-right = ##f
  system-system-spacing.basic-distance = #20
  score-system-spacing =
  #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 1)
     (stretchability . 10))
  %system-separator-markup = \slashSeparator
  print-page-number = ##f

}

tempoI = #120

settings = {
  \override Score.MetronomeMark.padding = #5
  %\hide Staff.Stem
  \time 3/4
  \hide Staff.TimeSignature
}

P = \relative c'' {
  c!8 [ b!8 f!8 e'!8 ] dis!4
}

INV = \relative c'' {
  s4 c!8 [ des!8 g!8 gis,!8 ] a!4
}

RET = \relative c'' {
  s4 \retrograde \P s4
}

RI = \relative c'' {
  s4 \retrograde \INV
}

\score {
  \new Staff {
    \settings
    \cadenzaOn
    
    \relative c'' {
      <> ^\markup \raise #2 \bold "Motive"
      \P
      \bar "||"
    }
    
    \relative c'' {
      <> ^\markup \raise #2 \bold "Inversion"
      \INV
      \bar "||"
    }
    
    \break
    
    \relative c'' {
      <> ^\markup \raise #2 \bold "Retrograde"
      \RET
      \bar "||"
    }
    
    \relative c'' {
      <> ^\markup \raise #2 \bold "Retrograde inversion"
      \RI
      \bar "||"
    }
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner.shortest-duration-space = #4
    }
  }
  \midi {
  }
}