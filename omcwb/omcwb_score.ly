\version "2.23.6"
\language "english"

        \include "/Users/Davi/.pyenv/versions/abjad14/lib/python3.10/site-packages/abjad/scm/abjad.ily"
        \include "/Users/Davi/Composição/2023/base-omcwb/omcwb/stylesheet.ily"


        \paper {
          top-margin = 20
          bottom-margin = 20
          left-margin = 20
          right-margin = 20
        }


        \score {
           \header {
              % piece = "As Vozes das Páginas"
              composer = "Davi Raubach"
            }
          {
            % \include "segments/omcwb_midi.ly"
            \include "segments/omcwb_A.ly"
            % \include "segments/omcwb_orchijad_seg.ly"
          }
          \layout { }
          \midi { }
        }

