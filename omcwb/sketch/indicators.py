import muda
import abjad
from omcwb.sketch import materials


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


def voz_indicators(mat: muda.Material):
    b = mat.select("B")
    slash_on_grace(b)

    c = mat.select("C")
    breath_after_run(c)

    abjad.attach(abjad.LaissezVibrer(), abjad.select.note(mat.container, 0))
    result = [abjad.attach(abjad.LaissezVibrer(), _[0])
              for _ in abjad.select.runs(c)]


def repeat(mat: muda.Material):
    c = mat.select("C")
    abjad.attach(abjad.Repeat(), c[0])

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
        r'\markup \column {"Repetir até o sinal da/o violoncelista" "leitura mais lenta a cada repetição"}',)
    abjad.attach(instruction, abjad.select.note(c, 0), direction=abjad.UP)


def cello_sinal(mat):
    c = mat.select("C")
    abjad.attach(abjad.Repeat(), c[0])

    instruction = abjad.Markup(
        r'\markup \column {"Dar sinal para o fim da seção"}',)
    abjad.attach(instruction, abjad.select.leaf(c, -1), direction=abjad.UP)


cello_sinal.apply_to = [materials.vc2.name]


voz_indicators.apply_to = [
    materials.fl.name,
    materials.sx.name,
    materials.vlao.name,
    materials.vc.name
]

repeat.apply_to = [
    materials.fl2.name,
    materials.sx2.name,
    materials.vlao2.name,
]

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


def lyrics(lyr: muda.Lyrics):
    lyr.write_lyrics(
        r"""
        es -- pe -- ro tu -- as pa -- la -- vras
        com a gra -- vi -- dez do meu si -- lên -- cio
        """)
    # lyr.align = "LEFT"


lyrics.apply_to = [
    "Fl_Voice_2_Lyrics",
    "Sx_Voice_2_Lyrics",
    "Vlao_Voice_2_Lyrics",
    "Vc_Voice_2_Lyrics"

]


# https://lilypond.org/doc/v2.22/Documentation/notation/outside-the-staff#grid-lines

def global_grid_override(mat: muda.Material):
    global_grid_override = abjad.LilyPondLiteral(
        [
            # r"\override Score.GridLine.extra-offset = #'(0.0 . 1.0)",
            r"\override Score.GridLine.stencil = ##f",
        ]
    )
    abjad.attach(global_grid_override, abjad.select.leaf(mat.container, 0))


global_grid_override.apply_to = [
    "Fl_Voice_1",
    "Sx_Voice_1",
    "Vlao_Voice_1",
    "Vc_Voice_1"

]


def grid_lines(mat: muda.Material):

    grid_line = abjad.LilyPondLiteral(
        [
            r"\once \override Score.GridLine.thickness = #1.0",
        ]
    )

    selection = abjad.select.logical_ties(mat.container)[0::2]
    result = [abjad.attach(grid_line, _[0]) for _ in selection]


grid_lines.apply_to = [
    # "Fl_Voice_1",
    # "Sx_Voice_1",
    # "Vlao_Voice_1",
    # "Vc_Voice_1"

]
