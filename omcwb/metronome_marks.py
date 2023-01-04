import abjad

mm01markup = abjad.LilyPondLiteral(r"""
\tempo \markup {
          \huge
          \concat {
              \abjad-metronome-mark-markup #2 #0 #1 #"70"
              \hspace #1
              \upright [
              \abjad-metric-modulation-tuplet-lhs #4 #0 #4 #5 #4 #0 #'(0.6 . 0.6)
              \hspace #0.5
              \upright ]
          }
        }""")
mm01 = mm01markup
