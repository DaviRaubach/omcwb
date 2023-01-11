import muda
import abjad
from omcwb.A import materials, multi_pitches
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

# orchestration = orch.orchestration
# orchestration.round_pitch_deviation()
# orchestration.get_containers(qschema)
# orchestration.illustrate()
# orch_dict = orchestration.get_dictionary()


def macro_pitches(pitches, outline, pitch_range=False, select_range=[0, 1]):
    _pitches = [abjad.NamedPitch(_).number for _ in pitches]
    _pitches = list(dict.fromkeys(_pitches))
    _pitches.sort()
    # print("sorted pitches:", _pitches)
    # pitches_ = muda.ring_modulation(
    #     abjad.PitchSegment(pitches_), pitch_range
    # )
    # pitches_.sort()
    if pitch_range:
        _pitches = muda.filter_pitches(_pitches, pitch_range)
    # print(pitches_)

    outline = [_ / max(outline) for _ in outline]

    # _max = round(len(pitches_) * constante)
    _max = round(len(_pitches) * select_range[1])
    _min = round(len(_pitches) * select_range[0])
    # print("min max", _min, _max)

    _pitches = _pitches[_min:_max]
    # print("selected_pitches:", _pitches)
    outline_indices = [int(_ * (len(_pitches) - 1))
                       for _ in outline]
    _pitches = [_pitches[_] for _ in outline_indices]

    if pitch_range:
        toprint = [_.number for _ in _pitches]
    else:
        toprint = _pitches
    # print("used pitches:", toprint)
    # muda.see_pitches(pitches_)

    return _pitches

    # write_pitches(mat.container, outline_indices, pitches)
    # mat.write_pitches(pitches_)


# palavra (salta, salta, voa) atirada contra a água (leve, leve, leve)
frase1 = [2, 5, 4, 2, 1, 4, 3, 2, 1, 3, 0]
# salta, salta, voa pa(lavra) ati(rada)
frase2 = [3, 2, 5, 2, 3, 1, 2, 3, 4]
# pousa sobre as nuvens
frase3 = [3, 2, 1, 0, 4, 3]
# pala(vra) contra água
frase4 = [2, 3, 1, 2, 0, 5, 0]
# mer - _gulha cada vez mais_ fundo
frase5 = [0, 3, 5, 1]
# cada _vez mais alto_
frase6 = [2, 0, 4]

# a _palavra beija_ a _boca e escorre_
frase7 = [3, 0, 1]
# +e escorre+, _e escorre, e escorre
frase8 = [1]
# _cada vez mais sonhada_
# _cada vez mais sonhada_


def transpose_neiborgh_octaves(pitches, pitch_range):
    def get_hipr_lopr(pr):
        letters = [_ for _ in pr.range_string if _.isalpha()]
        numbers = [int(_) for _ in pr.range_string if _ in [str(_)
                                                            for _ in range(10)]]

        lopr = abjad.PitchRange(
            "[" + letters[0] + str(numbers[0] - 1) + ", " + letters[1] + str(numbers[1] - 1) + "]")
        hipr = abjad.PitchRange(
            "[" + letters[0] + str(numbers[0] + 1) + ", " + letters[1] + str(numbers[1] + 1) + "]")
        return lopr, hipr

    lopr, hipr = get_hipr_lopr(pitch_range)
    hipitches = muda.filter_pitches(pitches, hipr)
    lopitches = muda.filter_pitches(pitches, lopr)
    pitches = muda.filter_pitches(pitches, pitch_range) + \
        [_ - 12 for _ in hipitches] + [_ + 12 for _ in lopitches]
    return [_ for _ in pitches if _ in pitch_range]


def fl_pitch(mat: muda.Material):
    pa = transpose_neiborgh_octaves(
        multi_pitches.multi_77_mod,
        abjad.PitchRange("[C5, G6]"),

    )

    pa = muda.filter_pitches(pa, abjad.PitchRange("[E5, G6]"))

    pb = multi_pitches.multi_77_mod + multi_pitches.multi_1
    pb = muda.filter_pitches(pb, abjad.PitchRange("[E5, G6]"))

    pc = transpose_neiborgh_octaves(
        multi_pitches.multi_1_mod,
        abjad.PitchRange("[C5, G6]"),
    )
    pc = muda.filter_pitches(pc, abjad.PitchRange("[E5, G6]"))

    pd = transpose_neiborgh_octaves(
        multi_pitches.multi_77_mod,
        abjad.PitchRange("[C5, G6]")
    )
    pd = muda.filter_pitches(pd, abjad.PitchRange("[E5, G6]"))

    pitchesA = macro_pitches(
        pa,
        frase1 + frase2,
    )

    pitchesB = macro_pitches(
        pb,
        frase3 + frase4,
    )
    pitchesC = macro_pitches(
        pc,
        frase5 + frase6,
        # constante=0.5

    )

    pitchesD = macro_pitches(
        pd,
        [0, 5],
        select_range=[0, 0.4]
        # aqui optei por usar a mesmas frases, já que são notas longas
        # não precisava dos perfis
    )

    mat.write_pitches_by_name(
        {
            "A": pitchesA,
            "B": pitchesB,
            "C": pitchesC,
            "D": pitchesC,
            "E": pitchesD,
        })

    # comment to listen real pitches in MIDI
    mat.transpose_instrument(abjad.Piccolo())

    # first_note = abjad.select.note(mat.container, 0)

    # mat.attach(abjad.Ottava(n=1), lambda _: first_note)
    # mat.attach(abjad.Ottava(n=0, site="after"),
    #            lambda _: abjad.select.note(mat.container, -1))


fl_pitch.apply_to = [materials.fl.name]


def fl2_pitch(mat: muda.Material):
    mat.write_pitches(["c'"])
    abjad.attach(abjad.LilyPondLiteral(r"\stemDown"), mat.container[0])


# fl2_pitch.apply_to = [materials.fl2.name]


def sx_pitch(mat: muda.Material):
    p = multi_pitches.multi_77
    # mat.write_chords_pitches(tuple(p))

    first_note = abjad.select.note(mat.container, 0)
    replace_note_by_chord(first_note)
    write_chord_pitches([p], mat.container)

    # write_pitches(mat.container,

    # mat.write_pitches(p)
    # print("sax pitches:", pitches_)
    # macro_pitches(mat, p, [5, 4, 5, 4, 5, 4, 3],
    # pitch_range=abjad.SopranoSaxophone().pitch_range)
    mat.write_pitches_by_name(
        {
            "B": p[2:]
        }
    )

    first_note = abjad.select.chord(mat.container, 0)
    abjad.attach(abjad.Dynamic("p"), first_note)

    abjad.glissando(mat.container[1:])


# sx_pitch.apply_to = [materials.sx.name]


def vlao_pitch(mat: muda.Material):
    pa = multi_pitches.multi_77_mod
    # pa = transpose_neiborgh_octaves(
    #     multi_pitches.multi_77_mod,
    #     abjad.PitchRange("[G5, G6]"),

    # )

    pa = muda.filter_pitches(pa, abjad.PitchRange("[C5, G6]"))

    pb = multi_pitches.multi_77_mod + multi_pitches.multi_1
    pb = muda.filter_pitches(pb, abjad.PitchRange("[G5, G6]"))

    pc = transpose_neiborgh_octaves(
        multi_pitches.multi_1_mod,
        abjad.PitchRange("[G5, G6]"),
    )
    # pc = muda.filter_pitches(pc, abjad.PitchRange("[C5, G6]"))

    pd = transpose_neiborgh_octaves(
        multi_pitches.multi_77_mod,
        abjad.PitchRange("[G5, G6]")
    )
    # pd = muda.filter_pitches(pd, abjad.PitchRange("[E5, G6]"))
    e_escorre = [2, 1, 3, 0]
    e_escorre = \
        [(_ + 2) for _ in e_escorre] + \
        e_escorre + \
        [(_ - 1) for _ in e_escorre] + \
        [(_ + 1) for _ in e_escorre]

    pitchesA = macro_pitches(
        pa,
        e_escorre,
        select_range=[0.4, 1]
    )

    pitchesB = macro_pitches(
        pb,
        [3, 2, 4, 2, 1, 3, 0] * 8,
        select_range=[0.3, 1]
    )
    pitchesC = macro_pitches(
        pc,
        [0, 3, 2, 1, 1, 2, 0] * 8,  # multiplicação para ter sobrando
        # constante=0.5

    )

    pitchesD = macro_pitches(
        pd,
        [0, 3, 2, 1, 1, 2, 1, 4, 3] * 8,  # multiplicação para ter sobrando
        select_range=[0.2, 0.7]
        # aqui optei por usar a mesmas frases, já que são notas longas
        # não precisava dos perfis
    )
    pitchesE = macro_pitches(
        pd,
        [2, 1, 3, 0] * 8,  # e escorre
        select_range=[0.2, 0.8]
        # aqui optei por usar a mesmas frases, já que são notas longas
        # não precisava dos perfis
    )

    mat.write_pitches_by_name(
        {
            "A": pitchesA,
            "B": pitchesB,
            "C": pitchesC,
            "D": pitchesD,
            "E": pitchesE,
        })

    # mat.transpose_instrument(abjad.Guitar())
    # pitches_ = [29, 30.5, 31]
    # pitches_ = muda.ring_modulation(pitches_, abjad.PitchRange("[C5, G6]"))
    # mat.write_pitches(pitches_)

    first_note = abjad.select.note(mat.container, 0)
    abjad.attach(
        abjad.Markup(
            r'\markup "com slide"'
        ),
        first_note,
        direction=abjad.UP)

    abjad.glissando(mat.container)
    mat.attach(abjad.Ottava(n=2), lambda _: first_note)
    mat.attach(abjad.Ottava(n=0, site="after"),
               lambda _: abjad.select.note(mat.container, -1))

    abjad.attach(abjad.Dynamic("f"), first_note)


vlao_pitch.apply_to = [materials.vlao.name]


def vc_pitch(mat: muda.Material):

    pa = transpose_neiborgh_octaves(
        multi_pitches.multi_77_mod,
        abjad.PitchRange("[C5, G6]"),

    )

    # pa = muda.filter_pitches(pa, abjad.PitchRange("[C5, G6]"))

    pb = multi_pitches.multi_77_mod + multi_pitches.multi_1
    pb = muda.filter_pitches(pb, abjad.PitchRange("[C5, G6]"))

    pc = transpose_neiborgh_octaves(
        multi_pitches.multi_1_mod,
        abjad.PitchRange("[C5, G6]"),
    )
    # pc = muda.filter_pitches(pc, abjad.PitchRange("[C5, G6]"))

    pd = transpose_neiborgh_octaves(
        multi_pitches.multi_77_mod,
        abjad.PitchRange("[C5, G6]")
    )
    # pd = muda.filter_pitches(pd, abjad.PitchRange("[E5, G6]"))

    pitchesA = macro_pitches(
        pa,
        frase1 + frase2,
    )

    pitchesB = macro_pitches(
        pb,
        frase3 + frase4,
    )
    pitchesC = macro_pitches(
        pc,
        frase5 + frase6,
        # constante=0.5

    )

    pitchesD = macro_pitches(
        pd,
        [0, 5, 4],
        select_range=[0.5, 1]
        # aqui optei por usar a mesmas frases, já que são notas longas
        # não precisava dos perfis
    )

    mat.write_pitches_by_name(
        {
            "A": pitchesA,
            "B": pitchesB,
            "C": pitchesC,
            "D": pitchesC,
            "E": pitchesD,
        })

    selection = abjad.select.logical_ties(mat.container, pitched=True)
    selection = [lt for lt in selection if lt.written_duration >=
                 abjad.Duration(4, 32)]
    for lt in selection:
        for leaf in lt:
            new_chord = abjad.Chord("<c' e'>4")
            chord_notes = []
            note = leaf.written_pitch - 24
            chord_notes.append(note)
            new_note = note + 5
            chord_notes.append(new_note)
            new_chord.written_pitches = chord_notes
            dur = leaf.written_duration
            new_chord.written_duration = dur
            abjad.mutate.replace(leaf, new_chord, wrappers=True)

    selection = abjad.select.chords(mat.container)
    selection = [lt for lt in selection if lt.written_duration >=
                 abjad.Duration(4, 32)]

    # write_chord_pitches(pitches_, selection)

    selection = abjad.select.logical_ties(selection, pitched=True)
    for lt in selection:
        if isinstance(lt[0], abjad.Chord):
            for chord in lt:
                harmonic_note_head = chord.note_heads[1]
                abjad.tweak(chord.note_heads[0], r"\tweak stencil \minima")
                abjad.tweak(harmonic_note_head, r"\tweak style #'harmonic")

    # transpose neiborgh to harmonic
    selection = abjad.select.logical_ties(mat.container, pitched=True)
    for lt1, lt2 in zip(selection, selection[1:]):
        # print(lt1, lt2)
        if isinstance(lt1[0], abjad.Note) and isinstance(lt2[0], abjad.Chord):
            difference = abs(lt1[0].written_pitch - lt2[0].written_pitches[0])
            if difference > 12:
                t = -12
            if difference < -12:
                t = +12
            while difference > abjad.NamedInterval(7):
                abjad.mutate.transpose(lt1, t)
                difference = abs(lt1[0].written_pitch -
                                 lt2[0].written_pitches[0])
                if difference > 12:
                    t = -12
                if difference < -12:
                    t = +12
                # print(difference)

    # transpose neiborgh notes
    for lt1, lt2 in zip(selection[::-1], selection[::-1][1:]):
        if isinstance(lt1[0], abjad.Note) and isinstance(lt2[0], abjad.Note):
            difference = lt1[0].written_pitch - lt2[0].written_pitch
            if difference > 12:
                t = -12
            if difference < -12:
                t = +12

            while difference > abjad.NamedInterval(11):
                abjad.mutate.transpose(lt2, t)
                difference = lt1[0].written_pitch - lt2[0].written_pitch
                if difference > 12:
                    t = -12
                if difference < -12:
                    t = +12
    chords = abjad.select.chords(mat.container)

    # Test MIDI
    # for chord in chords:
    # chord.written_pitches = [chord.written_pitches[0] + 24]

    first_note = abjad.select.chord(mat.container, 0)
    abjad.attach(abjad.Dynamic("p"), first_note)
    # abjad.attach(abjad.Clef("treble"), first_note)
    mat.automatic_clefs()


vc_pitch.apply_to = [materials.vc.name]


def vc2_pitch(mat: muda.Material):
    mat.write_pitches(["c''''"])


vc2_pitch.apply_to = [materials.vc2.name]


def make_harmonic_from_target(note) -> list:
    if not isinstance(note, abjad.Pitch):
        note = abjad.NamedPitch(note)

    chord_notes = []
    note = note - 24
    chord_notes.append(note)
    new_note = note + 5
    chord_notes.append(new_note)
    return chord_notes


def replace_note_by_chord(container):
    lts = abjad.select.logical_ties(container, pitched=True)
    for lt in lts:
        for leaf in lt:
            new_chord = abjad.Chord("<c' e'>4")
            dur = leaf.written_duration
            new_chord.written_duration = dur
            abjad.mutate.replace(leaf, new_chord, wrappers=True)


def write_chord_pitches(pitches, container):
    for i, logical_tie in enumerate(abjad.select.logical_ties(container, pitched=True)):
        index = i % len(pitches)
        # print(index)
        ps = pitches[index]
        for chord in logical_tie:
            # print(chord, ps)
            if isinstance(chord, abjad.Chord):
                try:
                    chord.written_pitches = ps
                except:
                    print("write_chords_pitches() ",
                          chord, "has no written_pitches")
