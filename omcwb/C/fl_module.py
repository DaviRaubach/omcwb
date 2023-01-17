import muda
import abjad
import math
from omcwb.B import materials, vlao_module
from abjadext import nauert


# palavra_rhythm.apply_to = [materials.fl2.name]
def fl3_rhythm(mat: muda.Material):
    note = abjad.Note("e''1")
    abjad.override(note).NoteHead.style = r"#'harmonic"
    mat.write([note], "B1")
    mat.transpose_instrument(abjad.Piccolo())


fl3_rhythm.apply_to = [materials.fl3.name]


whistle = [15, 2, 1, 8, 20]
perfil = [math.log(_ + 2) for _ in whistle]
dur_ms = [round(_*550) for _ in perfil]
# dur_ms.append(4000)


p = [(round((_ * -8) * 2) / 2) + 48 for _ in perfil]
print(p)
# p.append(None)


def whistle_maker(mat: muda.Material):
    mat.write(r"g'''4 s4 s4 g'''4", "B1")


whistle_maker.apply_to = [materials.fl.name]


def indicators(mat: muda.Material):
    notes = abjad.select.notes(mat.container)
    h = [0, 1, 0, 5, 0, 4, 1, 3, 2, 0, 1, 4, 3, 0]
    line = [(a, b) for a, b in zip(range(len(h)), h)]
    abjad.attach(
        muda.fancy_glissando(
            line
        ),
        mat.container[0])
    abjad.glissando(notes)
    abjad.attach(abjad.Markup(r"\markup W.T."), notes[0], direction=abjad.UP)
    abjad.override(mat.container).NoteHead.no_ledgers = "##t"
    abjad.override(mat.container).NoteHead.transparent = "##t"
    mat.transpose_instrument(abjad.Piccolo())


indicators.apply_to = [materials.fl.name]


def old_palavra_rhythm(mat: muda.Material):
    palavra_atirada_contra_agua = [0, 3, 2, 1, 0, 4, 3, 3, 2, 6, 0]
    perfil = [math.log(_ + 2) for _ in palavra_atirada_contra_agua]
    dur_ms = [round(_*257) for _ in perfil]
    dur_ms.append(4000)

    p = [round((_ * 8) * 2) / 2 for _ in perfil]
    p.append(None)
    pairs = tuple(zip(dur_ms, p))
    print(pairs)

    search_tree = nauert.UnweightedSearchTree(definition={
        2: {
            2: {2: {2: None}, 3: None},
            3: None,
            5: None,
            7: None},
        3: {2: {2: None}, 3: None, 5: None},
        5: {2: None, 3: None}, 7: {2: None},
        11: None,
        13: None})
    time_signature = abjad.TimeSignature((4, 4))
    tempo = abjad.MetronomeMark((1, 4), 54)
    use_full_measure = True
    q_schema = nauert.MeasurewiseQSchema(
        search_tree=search_tree,
        tempo=tempo,
        time_signature=time_signature,
        use_full_measure=use_full_measure,
    )
    q_event_sequence = nauert.QEventSequence.from_millisecond_pitch_pairs(
        pairs)
    print(q_event_sequence.duration_in_ms)
    result = nauert.quantize(q_event_sequence, q_schema)
    mat.container.extend(result)
    # mat.print()
