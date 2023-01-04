import muda
import abjad
from omcwb.sketch import materials


def voz_override(mat: muda.Material):
    ab = mat.select("A") + mat.select("B")
    muda.replace_rest_by_skip(mat.container)
    muda.hide_engravers_for_text(mat.container)
    muda.hide_bar_line(ab)


voz_override.apply_to = [
    materials.fl.name,
    materials.sx.name,
    materials.vlao.name,
    materials.vc.name
]


def voz2_override(mat: muda.Material):
    muda.text_rule_override(mat.container)
    ab = mat.select("A") + mat.select("B")
    d = mat.select("D")
    muda.hide_bar_line(ab)
    muda.hide_bar_line(d)
    # pass


voz2_override.apply_to = [
    materials.fl2.name,
    materials.sx2.name,
    materials.vlao2.name,
    materials.vc2.name
]


# def sx_override(mat: muda.Material):
#     ab = mat.select("A") + mat.select("B")
#     muda.replace_rest_by_skip(mat.container)
#     muda.hide_engravers_for_text(mat.container)
#     muda.hide_bar_line(ab)


# sx_override.apply_to = [materials.sx.name]
