import os
import muda
import abjad
from omcwb.score_template import omcwb_score
from omcwb.A import timespans, rhythm, pitch, indicators, override, write_lyrics
from omcwb.A.materials import *


def main():
    A = muda.Segment(
        materials + lyrics,
        [rhythm,  pitch, indicators, write_lyrics, override],
        omcwb_score,
        timespans.timespans(),
        name="A")

    parent_dir = os.path.dirname(os.path.dirname(__file__))
    ly_path = parent_dir + "/segments/omcwb_A.ly"
    pdf_path = parent_dir + "/segments/omcwb_A.pdf"
    parts_dir = parent_dir + "/segments/parts/"
    # print(parts_dir)
    A.call_by_material(
        [
            "Fl_Voice_1",
            "Fl_Voice_2",
            "Fl_Voice_2_Lyrics",
            "Vc_Voice_1",
            "Vc_Voice_2",
            "Vc_Voice_2_Lyrics",
            "Vlao_Voice_1",
            "Vlao_Voice_2",
            "Vlao_Voice_2_Lyrics",
            "Global_Context"
        ])  # "Sx_Voice_1", "Vlao_Voice_1", "Vc_Voice_1"])
    # A()
    A.score.save_ly(ly_path)
    A.score.save_pdf(pdf_path)

    # A.make_parts(["Fl_Staff"], [score_template.flute_score], parts_dir)


if __name__ == '__main__':
    main()
