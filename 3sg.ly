\version "2.20.0"

\pointAndClickOff
%\include "event-listener.ly"

#(ly:set-option 'midi-extension "mid")

\header {
  title = "Three Stages of Grief"
  subtitle = "Anger - Depression - Acceptance"
  composer = "Phil Hanna"
}

\paper {
  #(set-paper-size "letter")
  top-margin = 1\cm
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t
  ragged-last = ##t
  ragged-last-bottom = ##t
  system-system-spacing.basic-distance = #22
  score-system-spacing =
  #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 1)
     (stretchability . 10))
  system-separator-markup = \slashSeparator
  %print-page-number = ##f
}

tempoI = 80
curtemp = #tempoI
tempoII = #(inexact->exact (round (* tempoI 1.25)))

circle =
\once \override NoteHead.stencil =
#(lambda (grob)
   (let* ((note (ly:note-head::print grob))
          (combo-stencil (ly:stencil-add
                          note
                          (circle-stencil note 0.1 0.8))))
     (ly:make-stencil (ly:stencil-expr combo-stencil)
       (ly:stencil-extent note X)
       (ly:stencil-extent note Y))))

#(define (my-dynamic-absolute-volume-function dynamic-name)
   (assoc-get dynamic-name
     '(
        ; Adjust these values to get what you would like.
        ; You can add other dynamics.
        ; If an dynamic name is not found, the default dynamic values are used.
        ("ppp" . 0.125)
        ("pp"  . 0.250)
        ("p"   . 0.375)
        ("mp"  . 0.500)
        ("mf"  . 0.625)
        ("f"   . 0.750)
        ("ff"  . 0.875)
        ("fff" . 1.000)
        )
     (default-dynamic-absolute-volume dynamic-name)))

accel =
#(define-void-function () ()
   (set! curtemp
         (inexact->exact
          (round
           (* curtemp 1.2)
           )
          )
         )
   )

decel =
#(define-void-function () ()
   (set! curtemp
         (inexact->exact
          (round
           (/ curtemp 1.1)
           )
          )
         )
   )

settings = {
  \accidentalStyle dodecaphonic-first
  \override Score.MetronomeMark.padding = #2
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.RehearsalMark.font-size = #3
  \override Beam.breakable = ##t
  \override TupletBracket.bracket-visibility = ##t
  \tupletUp
}

barsplit = { \bar "!" }

global = {
  \settings
  \time 4/4
}

\markup {
  \fill-line {
    \center-column  {
      \vspace #1
      \line \italic { "And I will strike down upon thee with great vengeance and furious anger" }
      \vspace #-0.3
      \line \italic { "those who attempt to poison and destroy my brothers, and you will" }
      \vspace #-0.3
      \line {
        \concat {\italic "know my name is the "
                 \smallCaps "Lord"
                 \italic " when I lay my vengeance upon thee!"
        }
      }
      \vspace #1
    }
  }
}

\include "dynamics.ly"
\include "rh.ly"
\include "lh.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Printed score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \new Staff = "up" \rh
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "down" \lh
  >>
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Midi score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \new PianoStaff \with {
    midiInstrument = "acoustic grand"
    midiMinimumVolume = 0.1
    midiMaximumVolume = 1.0
  }
  <<
    \new Staff = "up" << \rh \dynamics >>
    \new Staff = "down" << \lh \dynamics >>
  >>
  \midi {
    \context {
      \Staff
      \consists "Dynamic_performer"
    }
    \context {
      \Score
      dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume-function
    }
  }
}
