import muda
import abjad
from omcwb.C import materials
from omcwb import functions


def _rewrite_sustained(container):
    lts = abjad.select.logical_ties(container, pitched=True)
    for lt in lts:
        if lt.written_duration >= abjad.Duration(6, 32):
            for item in lt:
                if isinstance(item, abjad.Chord):
                    target = item.note_heads
                else:
                    target = [item.note_head]
                for head in target:
                    abjad.tweak(head, r'\tweak stencil \minima')


def gl(mat: muda.Material):
    markup = abjad.Markup(r'\markup {Tempo de leitura: \italic {poético}}')
    mark = abjad.MetronomeMark(
        reference_duration=(1, 4),
        units_per_minute=(45 - 50),
        custom_markup=markup,
    )
    abjad.attach(mark, mat.container[0])
    abjad.attach(mark, mat.container[7])

    mark = abjad.RehearsalMark(number=1)
    abjad.attach(mark, mat.container[0])

    markup = abjad.Markup(r'\markup {Tempo de leitura: \italic {dramático}}')
    mark = abjad.MetronomeMark(
        reference_duration=(1, 4),
        units_per_minute=(45 - 50),
        custom_markup=markup,
    )
    abjad.attach(mark, mat.container[6])
    abjad.attach(mark, mat.container[11])

    # abjad.attach(
    #     abjad.LilyPondLiteral(r"\pageBreak"),
    #     mat.container[-1]
    # )

    # pass


gl.apply_to = [materials.gl.name]


def fl(mat: muda.Material):
    # mat.write_pitches(["e''''", "eb''''"])

    # notes = abjad.select.notes(mat.container)
    # h = [0, 1, 0, 5, 0, 4, 1, 3, 2, 0, 1, 4, 3, 0]
    # line = [(a, b) for a, b in zip(range(len(h)), h)]

    functions.breath_after_run(mat.container)

    # A
    A = mat.select("A", submaterials=True)
    C = mat.select("C", submaterials=True)
    abjad.attach(
        abjad.Markup(
            r"\markup {(contorno de harmônicos segue o que seria o contorno da fala)}"),
        abjad.select.leaf(mat.container, 0, pitched=True),
        direction=abjad.UP
    )
    for submaterial in A + C:
        abjad.attach(
            abjad.Markup(
                r"\markup W.T."),
            abjad.select.leaf(submaterial, 0, pitched=True),
            direction=abjad.UP
        )
        abjad.slur(submaterial)
        # abjad.attach(
        #     muda.fancy_glissando(
        #         line
        #     ),
        #     abjad.select.note(submaterial, 0))
        # abjad.glissando(
        #     submaterial,
        #     # hide_middle_note_heads=True,
        #     # hide_middle_stems=True
        # )
        for chord in abjad.select.chords(submaterial):
            abjad.tweak(chord.note_heads[0], r"\tweak style #'harmonic")
            abjad.tweak(chord.note_heads[1], r"\tweak no-ledgers ##t")
            abjad.tweak(chord.note_heads[1], r"\tweak transparent ##t")
            abjad.tweak(chord.note_heads[1],
                        r"\tweak Accidental.transparent ##t")

    # C
    _rewrite_sustained(mat.select("C"))

    # D
    for note in abjad.select.notes(mat.select("D")):
        abjad.attach(muda.slap_tongue(), note)

    abjad.attach(
        abjad.Markup(r"\markup {(variar dinâmica conforme intenção da fala)}"),
        abjad.select.note(mat.select("D"), 0),
        direction=abjad.UP
    )

    # C = mat.select("C", submaterials=True)
    # for submaterial in C:
    #     abjad.attach(abjad.Markup(r"\markup W.T. (contorno melódico como a entonação da fala)"), abjad.select.leaf(
    #         submaterial, 0, pitched=True), direction=abjad.UP)


fl.apply_to = [materials.fl.name]


def sync(mat):
    for submaterial in mat.select("B", submaterials=True):
        abjad.attach(
            abjad.BarLine("!"),
            abjad.select.leaf(submaterial, -1)
        )


sync.apply_to = [
    materials.fl.name,
    materials.vlao.name,
    materials.vlao3.name,
    materials.vc.name
]


def fl3(mat: muda.Material):
    for submaterial in mat.select("A", submaterials=True):
        for note in abjad.select.notes(submaterial):
            abjad.tweak(note.note_head, r"\tweak style #'harmonic")
    abjad.attach(abjad.LilyPondLiteral(r"\voiceThree"), mat.container)


# fl3.apply_to = [haterials.fl3.name]


def vlao3_indicators(mat: muda.Material):
    abjad.override(mat.container).Tie.stencil = False
    abjad.glissando(
        mat.container,
    )
    A = mat.select("A", submaterials=True)
    C = mat.select("C", submaterials=True)
    for submaterial in A + C:
        abjad.glissando(
            submaterial,
            hide_middle_note_heads=True,
            hide_middle_stems=True
        )
        chords = abjad.select.chords(submaterial)
        result = [abjad.tweak(_, r"\tweak style #'cross")
                  for _ in chords[0].note_heads]
        result = [abjad.tweak(_, r"\tweak transparent ##t")
                  for _ in chords[-1].note_heads]
        result = [abjad.tweak(_, r"\tweak Accidental.transparent ##t")
                  for _ in chords[-1].note_heads]

    D = mat.select("D", submaterials=True)
    for submaterial in D:
        abjad.glissando(
            submaterial,
        )
        chords = abjad.select.chords(submaterial)
        result = [abjad.tweak(_, r"\tweak transparent ##t")
                  for chord in chords for _ in chord.note_heads]
        result = [abjad.tweak(_, r"\tweak Accidental.transparent ##t")
                  for chord in chords for _ in chord.note_heads]

    # for note in chords[0].note_heads:
        # note.is_parenthesized = True
    abjad.attach(
        abjad.LilyPondLiteral(
            r'''

            \footnote #'(0.5 . 0.5) \markup { "Apenas ruído de corda: para amplificar o efeito, pressionar em silêncio previamente, soltar e mudar a posição com o dedo sobre as cordas." } Stem'''),
        mat.container[0],
        direction=abjad.UP
    )
    # abjad.attach(abjad.Dynamic("f"), chords[0])
    # abjad.hairpin("f > p", chords)
    abjad.ottava(mat.container)

    def string_number(number):
        return abjad.LilyPondLiteral(f"\{number}", "closing")

    # abjad.attach(abjad.StringNumber((6,)), mat.leaves()[0])
    # attach_string_number = [abjad.attach(string_number(n), mat.leaves()[0]) for n in [
        # 6, 5, 4 3]]
    fret = abjad.Markup(
        r'\markup \fret-diagram #"s:1;6-12;5-14;4-13;3-15;2-x;1-x;"')
    abjad.attach(fret, mat.leaves()[0], direction=abjad.UP)

    functions.breath_after_run(mat.leaves())


vlao3_indicators.apply_to = [materials.vlao3.name]


def vlao_indicators(mat: muda.Material):
    # mat.write_pitches([2, -8, -3, 7])
    # omit harmonic
    selection = mat.chords()
    for chord in selection:
        abjad.tweak(chord.note_heads[1], r"\tweak transparent ##t")
        abjad.tweak(chord.note_heads[1], r"\tweak no-ledgers ##t")
        abjad.tweak(chord.note_heads[1], r"\tweak Dots.transparent ##t")
        abjad.tweak(chord.note_heads[0], r"\tweak parenthesized ##t")
    notes = mat.leaves(pitched=True)

    abjad.attach(abjad.Markup(r"\markup {harmônicos ocasionais}"),
                 mat.leaves(pitched=True)[0], direction=abjad.UP)

    functions.breath_after_run(mat.leaves())


vlao_indicators.apply_to = [materials.vlao.name]


def fl_dynamics(mat: muda.Material):

    mat.dynamics(
        [
            (["A", "C"], lambda _: abjad.select.chords(_)[0], "p"),
            (["A", "C"], lambda _: abjad.select.chords(_)[3:4], "< mf"),
            (["A", "C"], lambda _: abjad.select.chords(_)[-3:], "> p"),
        ],
        submaterials=True
    )
    for submaterial in mat.select("D", submaterials=True):
        abjad.attach(muda.p_possibile(), abjad.select.note(submaterial, 0))


fl_dynamics.apply_to = [materials.fl.name]


def vlao_dynamics(mat: muda.Material):

    mat.dynamics(
        [
            (["A"], lambda _: abjad.select.chords(_)[0:6], "pp < mf"),
            (["A"], lambda _: abjad.select.chords(_)[-1], "pp"),
            (["C"], lambda _: abjad.select.chords(_)[0:3], "pp < mf"),
            (["C"], lambda _: abjad.select.chords(_)[4], "pp"),
            (["C"], lambda _: abjad.select.chords(_)[5:7], " < mf"),
            (["C"], lambda _: abjad.select.chords(_)[-1], "pp"),
            (["D"], lambda _: abjad.select.notes(_)[0], "mf"),
            # (["A_0"], lambda _: abjad.select.chords(_)[6:], "f > pp"),
        ],
        submaterials=True
    )


vlao_dynamics.apply_to = [materials.vlao.name]


def vlao3_dynamics(mat: muda.Material):
    A = mat.select("A", submaterials=True)

    mat.dynamics(
        [
            (["A"], lambda _: abjad.select.chords(_)[0], "ff"),
            # (["A"], lambda _: abjad.select.chords(_)[-1], "pp"),
            # (["C"], lambda _: abjad.select.chords(_)[0:3], "pp < mf"),
            # (["C"], lambda _: abjad.select.chords(_)[4], "pp"),
            # (["C"], lambda _: abjad.select.chords(_)[5:7], " < mf"),
            # (["C"], lambda _: abjad.select.chords(_)[-1], "pp"),
            # (["A_0"], lambda _: abjad.select.chords(_)[6:], "f > pp"),
        ],
        submaterials=True
    )


vlao3_dynamics.apply_to = [materials.vlao3.name]


def vc(mat: muda.Material):
    notes = mat.leaves(pitched=True)
    for note in notes:
        abjad.tweak(note.note_head, r"\tweak style #'harmonic")
        abjad.tweak(note.note_head, r"\tweak parenthesized ##t")

    mat.attach(
        abjad.Markup(r'\markup "arco super lento"'),
        lambda _: abjad.select.leaf(_, 0),
        direction=abjad.UP
    )

    abjad.attach(
        abjad.LilyPondLiteral(
            r'''

            \footnote #'(0.5 . 0.5) \markup { "Apenas ruído, sem altura." } TextScript'''),
        mat.container[0],
        direction=abjad.UP
    )

    mat.dynamics(
        [
            (["A"], lambda _: abjad.select.notes(_)[0], "mf"),
            (["C"], lambda _: abjad.select.notes(_)[0], "mf"),
        ],
        submaterials=True
    )
    for submaterial in mat.select("A", submaterials=True) + mat.select("C", submaterials=True):
        abjad.attach(
            abjad.Tie(),
            abjad.select.note(submaterial, -1)
        )
    functions.breath_after_run(mat.container)


vc.apply_to = [materials.vc.name]


def sx(mat: muda.Material):
    mat.attach(
        abjad.Markup(
            r'\markup {"espere pela pausa de pícolo e violão"}'),
        muda.leaf_r1,
        "A_0",
        direction=abjad.UP,
        # submaterials=True
    )
    mat.attach(
        abjad.Markup(r'\markup "M15"'),
        muda.leaf_0,
        "B_0",
        direction=abjad.UP
        # submaterials=True
    )

    mat.attach(
        abjad.Markup(r'\markup "M77"'),
        muda.leaf_0,
        ["B_1", "B_2"],
        direction=abjad.UP
        # submaterials=True
    )
    mat.attach(
        abjad.Markup(r'\markup "M31"'),
        muda.leaf_0,
        "B_3",
        direction=abjad.UP
        # submaterials=True
    )
    mat.dynamics(
        [
            (["B_0"], muda.leaf_0, "ppp"),
            (["B_1"], muda.leaf_0, "pp"),
            (["B_2"], muda.leaf_0, "p"),
            (["B_3"], muda.leaf_0, "p"),
        ],
        # submaterials=True
    )

    _rewrite_sustained(mat.container)
    functions.breath_after_run(mat.select("B"))


sx.apply_to = [materials.sx.name]
