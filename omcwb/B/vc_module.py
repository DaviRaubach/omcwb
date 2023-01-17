import abjad
import muda
from omcwb.B import materials


def rhythm(mat: muda.Material):
    mat.write(r"a1",  "B1")


rhythm.apply_to = [materials.vc.name]


def indicators(mat: muda.Material):
    notes = abjad.select.notes(mat.container)
    for note in notes:
        note.note_head.is_parenthesized = True

    abjad.attach(
        abjad.LilyPondLiteral(
            r'''\footnote "*" #'(0.5 . -1) \markup {italic " * Abafando com a mão direita, sem harmônicos."}'''
        ),
        notes[0],
        direction=abjad.UP
    )

    abjad.attach(
        abjad.Markup(r'\markup "abaf."'),
        notes[0],
        direction=abjad.UP
    )
    abjad.attach(abjad.Dynamic("pp"), notes[0])


indicators.apply_to = [materials.vc.name]
