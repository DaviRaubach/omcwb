import muda
import abjad
from omcwb.A import materials
from omcwb.A import write_lyrics


def slash_on_grace(selection):
    containers = abjad.select.components(selection, abjad.BeforeGraceContainer)
    result = [abjad.beam(_) for _ in containers]
    groups = [abjad.select.with_next_leaf(_) for _ in containers]
    result = [abjad.slur(_) for _ in groups]
    slash = abjad.LilyPondLiteral(r"\slash \undo \hide Voice.Beam")
    result = [abjad.attach(slash, _[0]) for _ in containers]
    hide_beam = abjad.LilyPondLiteral(r" \hide Voice.Beam", "after")
    result = [abjad.attach(hide_beam, _[-1]) for _ in containers]


def breath_after_run(selection):
    runs = abjad.select.runs(selection)
    result = [abjad.attach(abjad.BreathMark(), _[-1]) for _ in runs]


def articulation_beggining_end(container, articulation):
    runs = abjad.select.runs(container)
    lts = [abjad.select.logical_ties(run) for run in runs if len(run) > 3]
    sel = [abjad.select.get(_, [0, -1]) for _ in lts]
    for run in sel:
        for lt in run:
            abjad.attach(articulation, lt[0])


def articulation_tonica(container, articulation):
    runs = abjad.select.runs(container)
    selection = []
    for run in runs:
        lts = abjad.select.logical_ties(run)
        if len(lts) >= 3:
            selection.append(lts[-2])
    # lts = [abjad.select.logical_ties(run)[-2] for run in runs]
    # sel = [abjad.select.get(_, [-2]) for _ in lts]
    for lt in selection:
        abjad.attach(articulation, lt[0])


def remove_stacc_long_notes(container):
    selection = abjad.select.notes(container)
    selection = [
        note for note in selection if note.written_duration >= abjad.Duration(4, 32)]
    # for note in selection:
    # if not abjad.get.indicator(note, abjad.Tie) and note.written_duration >= abjad.Duration(4, 32):
    # abjad.attach(abjad.BendAfter(0), note)

    # lts = abjad.select.logical_ties(container)

    stacs = [abjad.get.indicator(note, abjad.Articulation("."))
             for note in selection]

    for art, note in zip(stacs, selection):
        if art:
            # print("ART")
            abjad.detach(abjad.Articulation("."), note)

    # for a in art:
    # if a:
    # abjad.detach(abjad.Articulation("."), a)


def gl(mat: muda.Material):
    markup = abjad.Markup(r'\markup {Tempo de leitura: \italic {poético}}')
    mark = abjad.MetronomeMark(
        reference_duration=(1, 4),
        units_per_minute=(45 - 50),
        custom_markup=markup,
    )

    abjad.attach(mark, mat.container[0])

    mark = abjad.RehearsalMark(number=2)
    abjad.attach(mark, mat.container[0])

    # pass


gl.apply_to = [materials.gl.name]


def fl(mat: muda.Material):
    breath_after_run(mat.container)
    articulation_beggining_end(mat.container, abjad.Articulation("."))
    articulation_tonica(mat.container, abjad.Articulation(">"))
    remove_stacc_long_notes(mat.container)
    mat.dynamics(
        [
            (["A"], lambda _: abjad.select.notes(_)[0], "mf"),
        ]
    )

    # dur_line(mat.container)
    # mat.annotate_material_names(
    # material_name=["A", "B"],
    # path="/Users/davi/Composição/2023/base-omcwb/omcwb")


fl.apply_to = [materials.fl.name]


def sx(mat: muda.Material):
    breath_after_run(mat.container)
    remove_stacc_long_notes(mat.container)

    abjad.attach(
        abjad.Markup(
            r'\markup "M15"'
        ),
        mat.leaves(pitched=True)[0],
        direction=abjad.UP
    )
    abjad.attach(
        abjad.Markup(
            r'\markup "M77"'
        ),
        mat.leaves(pitched=True)[2],
        direction=abjad.UP
    )
    abjad.attach(
        abjad.Markup(
            r'\markup "M77"'
        ),
        mat.leaves(pitched=True)[4],
        direction=abjad.UP
    )
    abjad.attach(
        abjad.Markup(
            r'\markup "M31"'
        ),
        mat.leaves(pitched=True)[6],
        direction=abjad.UP
    )
    abjad.attach(
        abjad.Markup(
            r'\markup "M15"'
        ),
        mat.leaves(pitched=True)[8],
        direction=abjad.UP
    )
    abjad.attach(
        abjad.Markup(
            r'\markup "M77"'
        ),
        mat.leaves(pitched=True)[10],
        direction=abjad.UP
    )
    abjad.attach(
        abjad.Markup(
            r'\markup "M77"'
        ),
        mat.leaves(pitched=True)[12],
        direction=abjad.UP
    )
    abjad.attach(
        abjad.Markup(
            r'\markup "M31"'
        ),
        mat.leaves(pitched=True)[14],
        direction=abjad.UP
    )
    abjad.attach(
        abjad.Dynamic('p'),
        mat.leaves(pitched=True)[0],
    )


sx.apply_to = [materials.sx.name]


def vc(mat: muda.Material):
    breath_after_run(mat.container)
    articulation_tonica(mat.container, abjad.Articulation(">"))
    remove_stacc_long_notes(mat.container)


vc.apply_to = [materials.vc.name]


def vlao(mat: muda.Material):
    breath_after_run(mat.container)


vlao.apply_to = [materials.vlao.name]


def voz_indicators(mat: muda.Material):
    b = mat.select("B")
    slash_on_grace(b)

    c = mat.select("C")
    breath_after_run(c)

    abjad.attach(abjad.LaissezVibrer(), abjad.select.note(mat.container, 0))
    result = [abjad.attach(abjad.LaissezVibrer(), _[0])
              for _ in abjad.select.runs(c)]


def cello_sinal(mat):
    c = mat.select("C")
    abjad.attach(abjad.Repeat(), c[0])

    instruction = abjad.Markup(
        r'\markup \column {"Dar sinal para o fim da seção"}',
    )
    abjad.attach(instruction, abjad.select.leaf(c, -1), direction=abjad.UP)

# cello_sinal.apply_to = [materials.vc2.name]


# def sx_indicators(mat: muda.Material):
#     sx_b = mat.select("sx_B")
#     slash_on_grace(sx_b)

#     sx_c = mat.select("sx_C")
#     breath_after_run(sx_c)

#     abjad.attach(abjad.LaissezVibrer(), abjad.select.note(mat.container, 0))
#     result = [abjad.attach(abjad.LaissezVibrer(), _[0])
#               for _ in abjad.select.runs(sx_c)]

#     abjad.attach(abjad.Repeat(), sx_c[0])


# sx_indicators.apply_to = [materials.sx.name]


# https://lilypond.org/doc/v2.22/Documentation/notation/outside-the-staff#grid-lines

def repeat(mat: muda.Material):
    e = mat.select("E")
    container = abjad.Container()
    abjad.mutate.swap(e, container)
    abjad.attach(abjad.Repeat(), container)

    # note = abjad.LilyPondLiteral(
    #     [
    #         r"""\footnote "**" #'(0 . 1) \markup""",
    #         r"\magnify #0.9",
    #         r"\column {\override #'(line-width . 108)",
    #         r" \null",
    #         r'\justify-string #"**) Repetir até o fim da seção, leitura mais lenta a cada repetição"'
    #     ],
    #     "after"
    # )
    instruction = abjad.Markup(
        r'\markup \column {"Repetir até que todos cheguem ao fim da seção" "leitura mais lenta a cada repetição"}',
    )

    # abjad.attach(instruction, abjad.select.note(d, 0), direction=abjad.UP)


repeat.apply_to = [materials.fl.name, materials.vc.name,
                   materials.sx.name, materials.vlao.name]
