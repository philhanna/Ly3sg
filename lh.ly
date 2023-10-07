lh = \relative c {
  \global
  \clef bass

  %m1
  %
  % Fragment (first three notes of P)
  % as chord
  %
  %\once \omit Score.MetronomeMark
  \tempo 4=#tempoI

  \ottava #-1
  <b,, c fis>1-> ~ \fff |

  %m2
  q1 |

  %m3
  %
  % Inversion transposed to b
  %
  \ottava #0
  b'4 ^\markup \small \italic {"(Inversion)"}
  \sustainOn \( c fis g |

  %m4
  gis2 ~ gis8 \) \sustainOff
  r8 r4
  |

  \barNumberCheck #5

  %m5
  R2 |

  %m6
  \ottava #-1
  <b,, c fis>4 q q q q q->
  |

  %m7
  \ottava #0
  <b' f' b>4-> r8
  |

  %m8
  q4-> r4 |

  %m9
  <bes bes'>8-> ( [ <ces ces'>8-. ] ) r8 |

  \barNumberCheck #10

  %m10
  <b f' b>4-> r4 |

  %m11
  <bes bes'>8-> ( [ <ces ces'>8 ] ) r8 |

  %m12
  <b c>4. |

  %m13
  q4 r4 |

  %m14
  <b f' b>4-> r8
  |

  \barNumberCheck #15

  %m15
  q4-> r |

  %m16
  <bes bes'>8-> ( [ <ces ces'>8-. ] ) r8 |

  %m17
  <c c'>8-> ( [ <des des'>8-. ] ) r8 |

  %m18
  <e e'>8-> ( [ <f f'>8 <fis fis'>8 ] ) |

  %m19
  <g g'>2 |

  \barNumberCheck #20

  %m20
  \ottava #0
  gis4
  _\markup \small \italic "(Retrograde inversion)"
  ( g fis c
  |

  %m21
  b2 ~ b8 ) r8 r4
  |

  %m22
  \time 5/4
  \ottava #-1
  <b, c fis>4 ^\markup \italic "rall."
  q q q
  \once \omit Score.MetronomeMark
  \tempo 4=#(inexact->exact (round (/ tempoI 3)))
  q ~
  |

  %m23
  \tempo 4=#tempoII
  q1 \omit \mf
  \ottava #0
  |
  
  %m24
  R1*3/4 |
  
  \barNumberCheck #25
  %m25
  r2 r8 \ottava #-1 <b c fis>8 \p ~ |
  
  %m26
  q2. ~ |
  
  %m27
  q4 \ottava #0 r2 |
  
  %m28
  \ottava #-1
  q2. ~ |
  
  %m29
  q2. \ottava #0 |
  
  %m30
  r4 r8 \ottava #-1 q4. ~ |
  
  %m31
  q2. \ottava #0 |
  
  %m32
  R1*3/4 |
  
  %m33
  R1*3/4 |
  
  %m34
  r8 \ottava #-1 q8 ~ q2 ~ |
  
  \barNumberCheck #35
  %m35
  q2. |
  
  %m36
  \ottava #0
  R1*3/4 |
  
  %m37
  R1*3/4 |
  
  %m38
  \accidentalStyle default
  \key bes \major
  \ottava #-1
  <f' f'>1 \mp |
  
  %m39
  <bes, bes'>1 |
  
  \barNumberCheck #40
  %m40
  <f' f'>1 |
  
  %m41
  <bes bes'>1 |
  
  %m42
  <f f'>1 |
  
  %m43
  <bes, bes'>1 |
  
  %m44
  <f' f'>2 <bes bes'>2 ~ |
  
  \barNumberCheck #45
  
  %m45
  q2 <f f'>2 |
  
  %m46
  \ottava #0
  <bes bes'>1 |
  
  %m47
  <f' f'>1 |
  
  %m48
  <bes bes'>1 |
  
  %m49
  <f f'>1 |
  
  \barNumberCheck #50
  
  %m50
  <bes, bes'>1 ~ |
  
  %m51
  q1 ~ |
  
  %m52
  q2. r4 |
  
  %m53
  \key bes \minor
  \phrasingSlurDown
  bes'1 \( |
  
  %m54
  <<
    \new Voice \relative c {
      \voiceOne
      des2 aes'2	 _\tenuto \omit \mf (	| %m54
      g1	 ) \fermata	| %m55
    }
    \context Voice \relative c, {
      \voiceTwo
      <bes f'>1		| %m54
      <ees bes'>1 \) 	| %m55
    }
  >>  
  
}
