import muda
import abjad
from omcwb.C import materials
from omcwb.A import multi_pitches
from omcwb import functions

gtr_strings = {
    82.41: [],
    110: [],
    146.83: [],
    196.00: [],
}
gtr_str_partials = {}

for key in gtr_strings.keys():
    gtr_strings[key] = [key * i for i in range(6, 14)]
    gtr_str_partials[key] = ([abjad.NumberedPitch.from_hertz(_)
                              for _ in gtr_strings[key]])

# gtr_str_partials.sort()
# print(pitches)

# pitches_in_staff = muda.pitches_in_staff(pitches)
# print(abjad.lilypond(pitches_in_staff))


def fl(mat: muda.Material):

    # A

    pitches = [4, 3.5, 4, 9, 2.5, 4.5]
    pitches = [[_ + 12, _ + 36] for _ in pitches]
    mat.write_chords_pitches(pitches, mat.select("A"))
    mat.write_chords_pitches(pitches, mat.select("C"))

    pitches1 = [
        a for _ in gtr_str_partials for a in gtr_str_partials[_]
    ]
    pitches2 = [_ for _ in gtr_str_partials[82.41]] + multi_pitches.multi_1_mod
    pitches3 = [_ for _ in gtr_str_partials[110]] + \
        multi_pitches.multi_1_mod + multi_pitches.multi_31_mod
    pitches4 = multi_pitches.multi_31_mod
    pitches5 = multi_pitches.multi_1_mod + multi_pitches.multi_77_mod

    # print(pitches)

    # pitches = muda.filter_pitches(pitches, abjad.PitchRange("[D5, F6]"))
    pitches1 = muda.ring_modulation(pitches1, abjad.PitchRange("[D5, E6]"))
    pitches2 = muda.ring_modulation(pitches2, abjad.PitchRange("[D5, E6]"))
    pitches3 = muda.ring_modulation(pitches3, abjad.PitchRange("[D5, E6]"))
    pitches4 = muda.ring_modulation(pitches4, abjad.PitchRange("[D5, E6]"))
    pitches5 = muda.ring_modulation(pitches5, abjad.PitchRange("[D5, E6]"))

    # print([_.number for _ in pitches])
    # pitches = muda.ring_modulation(pitches, abjad.PitchRange("[D4, F6]"))

    base = [2, 4, 3, 1, 0, 5, 1, 4, 0]
    # base = [_ + 2 for _ in base]
    # outline = base + [_ - 1 for _ in base]
    # outline += [_ - 1 for _ in outline]

    pitches1 = functions.macro_pitches(pitches1, base, select_range=[0, 0.5])
    pitches2 = functions.macro_pitches(pitches2, base, select_range=[0, 0.5])
    pitches3 = functions.macro_pitches(pitches3, base)
    pitches4a = functions.macro_pitches(pitches4, base)
    pitches4b = functions.macro_pitches(pitches4, base, select_range=[0, 0.5])
    pitches5 = functions.macro_pitches(pitches5, base, select_range=[0, 0.4])

    pitches = pitches2 + pitches3 + pitches4a + pitches4
    newpitches = pitches2 + pitches4b + pitches3 + pitches5
    # newpitches = pitches3 + pitches2 + pitches4 + pitches5

    mat.write_pitches_by_name(
        {
            "D_0": pitches,
            "D_1": newpitches
        }
    )

    mat.transpose_instrument(abjad.Piccolo())


fl.apply_to = [materials.fl.name]


def vlao(mat: muda.Material):
    pitches = [[2, 26], [-8, 16], [-3, 21], [2, 26], [7, 31], [-3, 21]]
    new_pitches = []
    for pair in pitches:
        new_pair = []
        for p in pair:
            np = p - 12
            new_pair.append(np)
        new_pitches.append(new_pair)

    pitches = new_pitches
    mat.write_chords_pitches(pitches)

    # h_head = chord.note_heads[-1]
    # abjad.tweak(h_head).NoteHead.stencil = "##f"


vlao.apply_to = [materials.vlao.name]


def vlao3(mat: muda.Material):

    one = ["e", "b", "ds'", "as'"]
    two = ["b", "f'", "as'", "f''"]
    three = ["ds'", "as'", "c''", "g''"]
    A = mat.select("A")
    C = mat.select("C")
    mat.write_chords_pitches([one, two, three, three, two, one], A)
    mat.write_chords_pitches([one, two, three, three, two, one], C)
    D = mat.select("D")
    mat.write_chords_pitches([one, three, one], D)


vlao3.apply_to = [materials.vlao3.name]


def vc(mat: muda.Material):
    mat.write_pitches(["c,"])


vc.apply_to = [materials.vc.name]


def sx(mat: muda.Material):
    mat.write_chords_pitches(
        [multi_pitches.multi_15, multi_pitches.multi_77,
            multi_pitches.multi_77, multi_pitches.multi_31]
    )


sx.apply_to = [materials.sx.name]
