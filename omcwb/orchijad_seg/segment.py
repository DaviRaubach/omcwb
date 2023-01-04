import os
import muda
import abjad
from omcwb.score_template import omcwb_score
# timespans, rhythm, pitch, indicators, override
from omcwb.orchijad_seg import orch
from omcwb.orchijad_seg.materials import *


def main():
    sketch = muda.Segment(
        materials + lyrics,
        [orch],
        omcwb_score,
        # timespans.timespans(),
        name="orchijad_seg")

    parent_dir = os.path.dirname(os.path.dirname(__file__))
    ly_path = parent_dir + "/segments/omcwb_orchijad_seg.ly"
    pdf_path = parent_dir + "/segments/omcwb_orchijad_seg.pdf"
    parts_dir = parent_dir + "/segments/parts/"
    # print(parts_dir)
    sketch.call_by_material(
        ["Fl_Voice_1", "Sx_Voice_1", "Vlao_Voice_1", "Vc_Voice_1"])
    # sketch()
    sketch.score.save_ly(ly_path)
    sketch.score.save_pdf(pdf_path)
    # A.make_parts(["Fl_Staff"], [score_template.flute_score], parts_dir)


if __name__ == '__main__':
    main()
