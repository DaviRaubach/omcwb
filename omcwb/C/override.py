import muda
import abjad
from omcwb.C import materials


def voz_override(mat: muda.Material):
    # ab = mat.select("A") + mat.select("B")
    # muda.replace_rest_by_skip(mat.container)
    muda.hide_engravers_for_text(mat.container)
    A = mat.select("A", submaterials=True)
    C = mat.select("C", submaterials=True)
    D = mat.select("D", submaterials=True)
    for submaterial in A + C + D:
        muda.hide_bar_line(abjad.select.leaves(submaterial))


voz_override.apply_to = [
    materials.fl.name,
    # materials.fl3.name,
    materials.sx.name,
    materials.vlao.name,
    materials.vlao3.name,
    materials.vc.name
]


def test(mat):
    mat.write_pitches(["c'''"])


test.apply_to = [materials.vlao2.name]


def voz2_override(mat: muda.Material):
    muda.text_rule_override(mat.container)
    # ab = mat.select("A") + mat.select("B")
    # d = mat.select("D")
    # muda.hide_bar_line(ab)
    # muda.hide_bar_line(d)
    # pass


voz2_override.apply_to = [
    # materials.fl2.name,
    # materials.sx2.name,
    materials.vlao2.name,
    # materials.vc2.name
]
