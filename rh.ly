rh = \relative c'' {
  \global
  \clef treble

  %m1
  R1*4/4 |

  %m2
  %
  % Motive (P)
  %
  \tempo 4=#tempoI
  \tupletUp
  \tuplet 5/4 { c16 \f [ b f e' dis ~ ] } dis4
  %
  % P transposed to a
  %
  \tuplet 5/4 { a'16 [ gis d des' c! ~] }
  \once \omit Score.MetronomeMark
  \tempo 4 = #(round (/ tempoI 2))
  c4 \fermata
  |

  %m3
  \ottava 1
  \once \omit Score.MetronomeMark
  \tempo 4=#tempoI

  \tupletDown
  \tuplet 3/2 4 {
    %
    % Retrograde inversion
    %
    r8 ^\markup \italic "accel." c ( des-. )
    \accel \once \omit Score.MetronomeMark \tempo 4=#curtemp
    r8 g ( aes-. )
    \accel \once \omit Score.MetronomeMark \tempo 4=#curtemp
    r8 a ( bes-. )
    \accel \once \omit Score.MetronomeMark \tempo 4=#curtemp
    r8 a ( ees-. )
  }
  |

  %m4
  \break
  #(set! curtemp (inexact->exact (round (* tempoI 0.75))))
  \once \omit Score.MetronomeMark
  \tempo 4=#curtemp
  \tupletUp
  
  \tuplet 6/4 {
    r16  ^\markup \italic "a tempo" <f f'>16 <e e'>16
    <ais, ais'>16 <a' a'>16 <gis gis'>16 ~
  }
  \tuplet 6/4 {
    <gis gis'>16 <a a'>16 <b, b'>16
    <c c'>16 <b b'>16 <f f'>16 ~
  }
  \tuplet 6/4 {
    <f f'>16 <e' e'>16 <dis dis'>16 ~
    <dis dis'>16 ~ q8 ~
  }
  <dis dis'>4 ~
  |

  \barNumberCheck #5
  \mark \default

  %m5
  \time 2/4
  q2 |

  \break
  
  %m6
  \time 6/4
  \tempo 4=#(inexact->exact (round (* tempoI 1.25)))
  R1*6/4
  |

  %m7
  \bar "||"
  \time 3/8
  \ottava #0
  \tempo 4=#(* tempoI 2)
  r8 <bes, f' bes> \omit \ff
  <e bes' e>8
  |

  %m8
  \time 4/8
  r8 <bes f' bes> [ <e bes' e> <bes f' bes> ]
  |

  %m9
  \time 3/8
  <a' a'>8-> [ ( <gis gis'>8-. ) ] r8
  |

  \barNumberCheck #10
  \mark \default

  %m10
  \time 4/8
  r8 <bes, f' bes> [ <e bes' e> <bes f' bes> ]
  |

  %m11
  \time 3/8
  <a' a'>8-> ( [ <gis gis'>-. ] ) r8
  |

  %m12
  \time 3/8
  \clef bass
  r8 <g,,, cis g'>4->
  |

  %m13
  \time 4/8
  <fis c' fis>4-> r4
  |

  %m14
  \time 3/8
  \clef treble
  r8 <bes'' f' bes> \omit \ff <e bes' e>
  |

  \barNumberCheck #15
  \mark \default

  %m15
  \time 4/8
  r8 <bes f' bes> [ <e bes' e> <bes f' bes> ]
  |

  %m16
  \time 3/8
  <a' a'>8->
  [ ( <gis gis'>8-. ) ]
  r8
  |

  %m17
  <a a'>8->
  [ ( <gis gis'>8-. ) ]
  r8
  |

  %m18
  <g g'>8-> ( <fis fis'> <f f'> |

  %m19
  \time 2/4
  \tempo 4=#tempoI
  <e e'>2 ) |

  \barNumberCheck #20
  \mark \default

  %m20
  \time 4/4
  \override TextSpanner.bound-details.left.text = "rit."
  \tupletDown
  %
  % Retrograde inversion
  %
  #(set! curtemp tempoI)

  \tuplet 3/2 4 {
    \once \omit Score.MetronomeMark
    \tempo 4=#curtemp
    r8 ees,8 ( a )

    \decel
    \once \omit Score.MetronomeMark
    \tempo 4=#curtemp
    r8 bes8 ( a )

    \decel
    \once \omit Score.MetronomeMark
    \tempo 4=#curtemp
    r8 aes ( g )

    \decel
    \once \omit Score.MetronomeMark
    \tempo 4=#curtemp
    r8 des ( c )
  }
  |

  \break
  
  %m21
  \tupletUp
  \tuplet 6/4 {
    r16 dis e
    a,16 b c ~
  }
  \tuplet 6/4 {
    c16 b g'
    gis16 a ais, ~
  }
  \tuplet 6/4 {
    ais16 e'16 f16 ~
    f16 ~ f8 ~
  }
  f4 ~
  
  |

  %m22
  \time 5/4
  %\once \omit Score.MetronomeMark
  \tempo 4=#(inexact->exact (round (/ tempoI 1.6)))
  f4 r1
  |
  \bar "||"
  
  %m23
  
  \time 4/4
  \tempo 4=#tempoII
  R1*4/4
  |
  <<
    \new Voice \relative c'' {
      \voiceOne
      %m24
      %
      % Fractal expansion of motive
      %
      \time 3/4
      \circle c'4 \(
      ^\markup {
        \column {
          \vspace #-1
          \line {
            \concat { \italic "Out of the depths have I cried unto thee, O "
                      \smallCaps "LORD."
            }
          }
        }
      }
      _\markup \small \italic "(Fractal expansion of the motive, canon at the octave)"
      b4 f4
      |
  
      \barNumberCheck #25
      \mark \default
  
      %m25
      e2. ~ |
  
      %m26
      e4 f4 \circle b |
  
      %m27
      ais4 e dis |
  
      %m28
      d2 \circle f4 |
  
      %m29
      e2. |
  
      \barNumberCheck #30
      \mark \default
  
      %m30
      ais4 a4 gis |
  
      %m31
      \circle e2. ~ |
  
      %m32
      e4 dis a' |
  
      %m33
      gis4 g4 \circle dis |
  
      %m34
      d2 gis4 |
  
      \barNumberCheck #35
      \mark \default
  
      %m35
      g4 \) fis2 ~ |
  
      %m36
      fis2. ~ |
  
      %m37
      fis4 b,2\rest |
    }
    \new Voice \relative c'' {
      \voiceTwo
      
      \barNumberCheck #24
      %m24
      s1*3/4 |
      
      %m25
      c4 \omit \mf b f |
      
      %m26
      e2. ~ |
      
      %m27
      e4 f b |
      
      %m28
      ais4 e dis' |
      
      %m29
      d2 f4 |
      
      \barNumberCheck #30
      
      %m30
      e2. |
      
      %m31
      ais,4 a gis |
      
      %m32
      e2. ~ |
      
      %m33
      e4 dis' a |
      
      %m34
      gis g dis' |
      
      \barNumberCheck #35
      
      %m35
      d2 gis,4 |
      
      %m36
      g4 fis2 ~ |
      
      %m37
      fis4 s2 |
    }
  >>
  
  \bar "||"
  \pageBreak

  %m38
  \time 2/2
  \key bes \major
  \once \omit Score.MetronomeMark
  \tempo 4=#tempoII
  R1 \f ^\markup \bold "più mosso"
 
  <<
    \new Voice \relative c'' {
      \voiceOne
      \accidentalStyle default
      <>
      ^\markup {
        \column {
          \vspace #-1
          \line {
            \italic "Be it unto me according to thy word."
          }
        }
      }
      _\markup \small \italic
      "(Pentatonic transformation of the motive)"
      
      %m39
      c4 ( bes f ees' |

      \barNumberCheck #40
      \mark \default
      
      %m40
      d1 ) ~ |
  
      %m41
      d4 c ( bes f' |
      
      %m42
      ees4 d c2 ~ )
      %
      % Retrograde
      %
      
      \break
      
      %m43
      c2
      ^\markup \small \italic "(Retrograde)"
      d4 ( ees4 |
      
      %m44
      f4 bes, ) c2 ~
      
      \barNumberCheck #45
      \mark \default
      
      %m45
      c1 |
      
      %m46
      c4 ( bes f ees' |
      
      %m47
      d1 ) ~ |
      \break
      
      %m48
      d4 c ( bes f' |
      
      %m49
      ees4 d c2 ~ )
      %
      % Retrograde
      %
      
      \barNumberCheck #50
      \mark \default
      
      %m50
      c2 d4 ( ees4 |
      
      %m51
      f4 bes, ) c2 ~ |
      
      %m52
      c2 d4 ees |
    }
    \new Voice \relative c' {
      \voiceTwo
      \accidentalStyle default
      
      %m39
      s1 |
      
      \barNumberCheck #40
      
      %m40
      r4 g' \omit \mp ( f g |
      
      %m41
      a2 g4 f |
      
      %m42
      g4 f a ) g (
      
      %m43
      f4 g f g |
      
      %m44
      a g f g |
      
      \barNumberCheck #45
      
      %m45
      f4 g a g )|
      
      %m46
      f ( d c f |
      
      %m47
      <f a> <g bes> <f a> <g bes> |
      
      %m48
      a2 <g bes>4 <f a> |
      
      %m49
      <g bes>4 <f a> a ) <g bes> (
      
      \barNumberCheck #50
      
      %m50
      <f a>4 <g bes> <f a> <g bes> |
      
      %m51
      a g ) f2 ~ |
      
      %m52
      f2 bes4 c4 |
    }
  >>
  \break
  \bar "||"
  
  %m53
  \key bes \minor
  \override TextSpanner.bound-details.left.text = "rit."
  \override TextSpanner.Y-offset = #5
  
  #(set! curtemp tempoII)
  
  \decel \once \omit Score.MetronomeMark \tempo 4=#curtemp
  <des' f>4 ( \startTextSpan
  \decel \once \omit Score.MetronomeMark \tempo 4=#curtemp
  q4
  \decel \once \omit Score.MetronomeMark \tempo 4=#curtemp
  q4
  q4
  |
  
  %m54
  <des f>4
  q4
  q4
  q4 \stopTextSpan
  |
  
  \barNumberCheck #55
  \mark \default
  
  %m55
  q1 ) \fermata |
  
  \bar "|."
}
