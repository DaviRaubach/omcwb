from omcwb.A.materials import *
from omcwb.A import timespans, rhythm, pitch, indicators, override, write_lyrics
from omcwb.score_template import omcwb_score
import abjad
import muda
import os

print(lyrics)


def main():
    A = muda.Segment(
        materials + lyrics,
        [rhythm,  pitch, indicators, write_lyrics, override],
        omcwb_score,
        timespans.timespans(),
        name="A")

    parent_dir = os.path.dirname(os.path.dirname(__file__))
    ly_path = parent_dir + "/segments/omcwb_A.ly"
    pdf_path = parent_dir + "/segments/omcwb_A_illustration.pdf"
    parts_dir = parent_dir + "/segments/parts/"
    # print(parts_dir)
    A.call_by_material(
        [
            "Fl_Voice_1",
            "Fl_Voice_2",
            "Fl_Voice_2_Lyrics",
            "Fl_Voice_3",
            "Vc_Voice_1",
            "Vc_Voice_2",
            "Vc_Voice_2_Lyrics",
            "Vlao_Voice_1",
            "Vlao_Voice_2",
            "Vlao_Voice_2_Lyrics",
            "Vlao_Voice_3",
            "Sx_Voice_1",
            "Sx_Voice_2",
            "Sx_Voice_2_Lyrics",
            "Global_Context"
        ])
    # A()
    A.score.save_ly(ly_path)
    A.score.save_pdf(
        pdf_path,
        r"""
        \include "/Users/Davi/.pyenv/versions/abjad14/lib/python3.10/site-packages/abjad/scm/abjad.ily"
        \include "/Users/Davi/Composição/2023/base-omcwb/omcwb/stylesheet.ily"

        #(set-default-paper-size "a4landscape")

        \paper {
          top-margin = 20
          bottom-margin = 20
          left-margin = 20
          right-margin = 20
        }
        """
    )
    # abjad.io.run_lilypond(ly_path=ly_path)

    # A.make_parts(["Fl_Staff"], [score_template.flute_score], parts_dir)


if __name__ == '__main__':
    main()
