\version "2.20.0"

#(ly:set-option 'midi-extension "mid")

\header {
  title = "Three Stages of Grief"
  composer = "Phil Hanna"
}

\paper {
  ragged-right = ##t
  ragged-last = ##t
  indent = 0
}

\score {
  {
    \override Score.MetronomeMark.padding = #5
    \tempo 4=168
    \cadenzaOn
    \set Staff.printKeyCancellation = ##f 
    \hide Staff.Stem
    
    \omit Staff.TimeSignature

    \relative c'' {
      c!4 ^\markup \bold \small "Motive"
      b! f! e'! dis2 
      \bar "||"
    }
    
    \relative c'' {
      c!4 ^\markup \bold \small "Pentatonic motive"
      bes! f! ees'! d!2
      \bar "||"
    }
    
    \break
    
    \relative c'' {
      c!4 ^\markup \bold \small "Inversion (exact)"
      des! g! gis,! a!2
      \bar "||"
    }
    
    \relative c'' {
      c!4 ^\markup \small \bold "Inversion (modal)"
      d! g! a,! bes!2
      \bar "||"
    }
    
    \break
    
    \relative c'' {
      dis!4 ^\markup \small \bold "Retrograde (exact)"
      e! f,! b! c!2
      \bar "||"    
    }
    
    \relative c'' {
      d!4 ^\markup \small \bold "Retrograde"
      ees! f,! bes! c!2
      \bar "||"
    }
    
    \break
    
    \relative c'' {
      a!4 ^\markup \small \bold "Retrograde inversion (exact)"
      gis! g'! des! c!2
      \bar "||"
    }
    
    \relative c'' {
      bes!4 ^\markup \small \bold "Retrograde inversion"
      a! g'! d! c!2
      \bar "||"
    }

  }

  \layout {
    \context {
      \Score
      \override SpacingSpanner.shortest-duration-space = #6
    }
  }
  \midi{}
}
