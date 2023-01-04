import muda
import abjad
from omcwb.sketch import materials, rmakers, orch
from abjadext import nauert


def write_pitches(selected_material, outline_indices, pitches):
    def lts(_): return abjad.select.logical_ties(_, pitched=True)
    for container in selected_material:
        for lt, index in zip(lts(container), outline_indices):
            for leaf in lt:
                leaf.written_pitch = pitches[index]


# beatspan = abjad.Duration(4, 4)
# search_tree = nauert.UnweightedSearchTree(definition={2: {2: None}, 3: None})
# tempo = abjad.MetronomeMark((1, 4), 54)
# qschema = nauert.BeatwiseQSchema(
#     beatspan=beatspan,
#     search_tree=search_tree,
#     tempo=tempo,
# )

orchestration = orch.orchestration
orchestration.round_pitch_deviation()
# orchestration.get_containers(qschema)
# orchestration.illustrate()
orch_dict = orchestration.get_dictionary()


def macro_pitches(mat, pitches, outline, pitch_range, constante=0.8):
    pitches_ = [abjad.NamedPitch(_).number for _ in pitches]
    pitches_ = list(dict.fromkeys(pitches_))
    pitches_.sort()
    print(pitches_)
    # pitches_ = muda.ring_modulation(
    #     abjad.PitchSegment(pitches_), pitch_range
    # )
    pitches_.sort()
    print(pitches_)

    outline = [_ / max(outline) for _ in outline]

    _max = round(len(pitches_) * constante)
    pitches = pitches_[:_max]
    outline_indices = [int(_ * (len(pitches) - 1))
                       for _ in outline]

    write_pitches(mat.container, outline_indices, pitches)


def fl_pitch(mat: muda.Material):
    pitches_ = orch_dict["Fl"]["pitches"]
    # print("picc pitches:", pitches_)
    # mat.write_pitches(pitches_)
    macro_pitches(
        mat,
        pitches_,
        [4, 2, 3, 8, 7, 0, 1, 6, 4],
        pitch_range=abjad.Piccolo().pitch_range
    )


fl_pitch.apply_to = [materials.fl.name]


def sx_pitch(mat: muda.Material):
    pitches_ = orch_dict["ASax"]["pitches"]
    pitches_ = muda.filter_pitches(
        pitches_, abjad.SopranoSaxophone().pitch_range)
    mat.write_pitches(pitches_)
    # print("sax pitches:", pitches_)
    # macro_pitches(mat, pitches_, [4, 7, 3, 8, 2, 0, 1, 6, 4],
    #               pitch_range=abjad.SopranoSaxophone().pitch_range)


sx_pitch.apply_to = [materials.sx.name]


def vlao_pitch(mat: muda.Material):
    pitches_ = orch_dict["Gtr"]["pitches"]
    pitches_ = muda.filter_pitches(
        pitches_, abjad.Guitar().pitch_range)
    mat.write_pitches(pitches_)
    pitches_ = [abjad.NamedPitch(_).number for _ in pitches_]
    pitches_ = list(dict.fromkeys(pitches_))
    pitches_.sort()
    # pitches_ = muda.ring_modulation(
    #     abjad.PitchSegment(pitches_), pitch_range=abjad.Guitar().pitch_range, quarter_tone=False
    # )
    pitches_.sort()
    outline = [4, 2, 3, 8, 7, 0, 1, 6, 4]
    outline = [_ / max(outline) for _ in outline]

    _max = round(len(pitches_) * 1)
    pitches = pitches_[:_max]
    outline_indices = [int(_ * (len(pitches) - 1))
                       for _ in outline]

    # write_pitches(mat.container, outline_indices, pitches)
    # print("sax pitches:", pitches_)
    # macro_pitches(mat, pitches_, [4, 2, 3, 8, 7, 0, 1, 6, 4])


# vlao_pitch.apply_to = [materials.vlao.name]


def vc_pitch(mat: muda.Material):
    pitches_ = orch_dict["Vc"]["pitches"]
    # print("sax pitches:", pitches_)
    # mat.write_pitches(pitches_)
    macro_pitches(mat, pitches_,
                  [0, 10, 1, 3, 1, 2, 3, 4, 5],
                  abjad.Cello().pitch_range,
                  1)

    # mat.write_pitches(pitches_)


vc_pitch.apply_to = [materials.vc.name]
