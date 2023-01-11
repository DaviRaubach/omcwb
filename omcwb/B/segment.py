import os
import muda
import abjad
from omcwb import score_template
from omcwb.B import fl_module, vlao_module, vc_module, override, sx_module, gl_module, lyrics_module
from omcwb.B.materials import *


def main():

    B = muda.Segment(
        materials + lyrics,
        [fl_module, vlao_module, vc_module, sx_module,
            gl_module, lyrics_module, override],
        score_template.omcwb_score,
    )

    parent_dir = os.path.dirname(os.path.dirname(__file__))
    ly_path = parent_dir + "/segments/omcwb_B.ly"
    pdf_path = parent_dir + "/segments/omcwb_B_illustration.pdf"
    png_path = parent_dir + "/segments/omcwb_B_illustration.png"
    parts_dir = parent_dir + "/segments/parts/"
    # print(parts_dir)
    B.call_by_material(
        [
            "Fl_Voice_1",
            "Fl_Voice_2",
            "Fl_Voice_2_Lyrics",
            "Vc_Voice_1",
            # "Vc_Voice_2",
            # "Vc_Voice_2_Lyrics",
            "Vlao_Voice_1",
            "Vlao_Voice_2",
            "Vlao_Voice_2_Lyrics",
            "Vlao_Voice_3",
            "Sx_Voice_1",
            # "Sx_Voice_2",
            # "Sx_Voice_2_Lyrics",
            "Global_Context"
        ])  # "Sx_Voice_1", "Vlao_Voice_1", "Vc_Voice_1"])
    # A()
    B.score.save_ly(ly_path)
    B.score.save_pdf(
        pdf_path,
        r"""
        \include "/Users/Davi/.pyenv/versions/abjad14/lib/python3.10/site-packages/abjad/scm/abjad.ily"
        \include "/Users/Davi/Composição/2023/base-omcwb/omcwb/stylesheet.ily"

        #(set-default-paper-size "a5landscape")
        

        \paper {
          %page-breaking = #ly:one-line-auto-height-breaking

          top-margin = 20
          bottom-margin = 20
          left-margin = 20
          right-margin = 20
        }
        """
    )
    lf = abjad.LilyPondFile(
        items=[
            r"""
            \include "/Users/Davi/.pyenv/versions/abjad14/lib/python3.10/site-packages/abjad/scm/abjad.ily"
            \include "/Users/Davi/Composição/2023/base-omcwb/omcwb/stylesheet.ily"

            #(set-default-paper-size "a5landscape")
        

            \paper {
            %page-breaking = #ly:one-line-auto-height-breaking

            top-margin = 20
            bottom-margin = 20
            left-margin = 20
            right-margin = 20
            }
            """,
            B.score.score
        ]
    )
    abjad.persist.as_png(lf, png_path)

    # A.make_parts(["Fl_Staff"], [score_template.flute_score], parts_dir)


if __name__ == '__main__':
    main()
