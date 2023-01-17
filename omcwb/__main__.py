"""This module serves as the entry point of omcwb."""

import os
import abjad
import time
# from omcwb.sketch import sketch
from omcwb.A import segment as A
from omcwb.B import segment as B
from omcwb.C import segment as C
# from omcwb.orchijad_seg import segment
startTime = time.time()


def main():
    A.main()
    # B.main()
    C.main()
    # segment.main()

    includes = r"""
        \include "/Users/Davi/.pyenv/versions/abjad14/lib/python3.10/site-packages/abjad/scm/abjad.ily"
        \include "/Users/Davi/Composição/2023/base-omcwb/omcwb/stylesheet.ily"
    """
    paper = r"""
        #(set-default-paper-size "a4")

        \paper {
          top-margin = 20
          bottom-margin = 20
          left-margin = 20
          right-margin = 20
        }
    """

    score = r"""
        \score {
           \header {
              % piece = "As Vozes das Páginas"
              composer = "Davi Raubach"
            }
          {
            % \include "segments/omcwb_midi.ly"
            % \include "segments/omcwb_B.ly"
            \include "segments/omcwb_C.ly"
            %\include "segments/omcwb_A.ly"
            % \include "segments/omcwb_orchijad_seg.ly"
          }
          \layout { }
          \midi { }
        }
    """
    score2 = r"""
        \score {
           \header {
              % piece = "As Vozes das Páginas"
              composer = "Davi Raubach"
            }
          {
            % \include "segments/omcwb_midi.ly"
            % \include "segments/omcwb_B.ly"
            %\include "segments/omcwb_C.ly"
            \include "segments/omcwb_A.ly"
            % \include "segments/omcwb_orchijad_seg.ly"
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
            score2
        ]
    )

    abjad.persist.as_ly(
        ly, "/Users/davi/Composição/2023/base-omcwb/omcwb/omcwb_score.ly")
    abjad.persist.as_pdf(
        ly, "/Users/davi/Composição/2023/base-omcwb/omcwb/omcwb_score.pdf")
    abjad.persist.as_png(
        ly, "/Users/davi/Composição/2023/base-omcwb/omcwb/omcwb_score.png")
    print("Current working directory: {0}".format(os.getcwd()))
    print(
        '\033[92m',
        "Time:",
        round(time.time() - startTime),
        "seconds\033[0;0m")


if __name__ == '__main__':
    main()
    # fl()
    # pass
