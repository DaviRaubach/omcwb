import abjad
from sketch import sketch

includes = r"""
    \include "/Users/Davi/.pyenv/versions/abjad14/lib/python3.10/site-packages/abjad/scm/abjad.ily"
    \include "/Users/Davi/Composição/2023/base-omcwb/omcwb/stylesheet.ily"
"""
paper = r"""
    \paper {
      top-margin = 20
      bottom-margin = 20
      left-margin = 40
      right-margin = 40
    }
"""

score = r"""
    \score {
       \header {
          % piece = "As Vozes das Páginas"
          composer = "Davi Raubach"
        }
      {
        \include "segments/omcwb_sketch.ly"
      }
      \layout { }
      \midi { }
    }
"""

ly = abjad.LilyPondFile(
    items=[
        includes,
        paper,
        score,
    ]
)

abjad.persist.as_pdf(ly, "omcwb_score.pdf")
