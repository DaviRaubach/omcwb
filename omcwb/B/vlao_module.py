import abjad
import math
import muda
from abjadext import nauert
from omcwb.B import materials


def rhythm(mat: muda.Material):
    mat.write(r"<e b ds' as'>4 s2 <ds' as' c'' g''>4 ", "B1")


rhythm.apply_to = [materials.vlao3.name]


def palavra_rhythm(_input: list):
    perfil = [math.log(abs(_)) for _ in _input]
    perfil = [a * (_ / abs(_)) for a, _ in zip(perfil, _input)]
    print(perfil)
    dur_ms = [round(_*300) for _ in perfil]
    print(dur_ms)

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
    q_event_sequence = nauert.QEventSequence.from_millisecond_durations(dur_ms)
    result = nauert.quantize(q_event_sequence, q_schema)
    return result


def vlao_rhythm(mat: muda.Material):

    _input = [-2, -4, -3, -2, -2, -5, -4, 4, 3, 7, 2]
    result = palavra_rhythm(_input)

    mat.container.extend(result)


vlao_rhythm.apply_to = [materials.vlao.name]


def lyrics_rhythm(mat: muda.Material):

    _input = [2, 4, 3, 2, 2, 5, 4, 4, 3, 7, 2]
    result = palavra_rhythm(_input)
    mat.container.extend(result)


lyrics_rhythm.apply_to = [materials.vlao2.name,
                          materials.fl2.name, materials.vc2.name]


def vlao3_indicators(mat: muda.Material):
    abjad.glissando(mat.container)
    chords = abjad.select.chords(mat.container)
    abjad.override(chords[0]).NoteHead.style = "#'cross"
    # abjad.override(chord[1]).NoteHead.stencil = "##f"
    abjad.attach(abjad.LilyPondLiteral(r"\once \hide NoteHead"), chords[1])
    for note in chords[0].note_heads:
        note.is_parenthesized = True
    abjad.attach(
        abjad.LilyPondLiteral(
            r'''

            \footnote "*" #'(0.5 . 2) \markup { "* Apenas ruído de corda com a mão esquerda: pressionar em silêncio previamente, soltar e mudar a posição com o dedo sobre as cordas." } Stem'''),
        chords[0],
        direction=abjad.UP
    )
    # abjad.attach(abjad.Dynamic("f"), chords[0])
    abjad.hairpin("f > p", chords)


vlao3_indicators.apply_to = [materials.vlao3.name]


def vlao_indicators(mat: muda.Material):
    mat.write_pitches([2, -8, -3, 7])
    notes = abjad.select.notes(mat.container)
    for note, string in zip(notes, [4, 6, 5, 3]):
        abjad.attach(abjad.LilyPondLiteral(r"\once \hide NoteHead"), note)
        abjad.attach(abjad.StringNumber((string,)), note)


vlao_indicators.apply_to = [materials.vlao.name]
