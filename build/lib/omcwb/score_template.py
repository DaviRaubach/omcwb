"""
Score template

Template de partitura para Oficina Curitiba

"""

import muda
import abjad


def omcwb_score():
    flauta = muda.Instrument(
        abjad.Piccolo(),
        "Fl", 1, [3],
        lyrics_target="Fl_Voice_1",
        markup="Piccolo"
    )
    sax = muda.Instrument(
        abjad.SopranoSaxophone(),
        "Sx", 1, [3],
        lyrics_target="Sx_Voice_1",
        markup="Saxophone Soprano"
    )

    violao = muda.Instrument(
        abjad.Guitar(),
        "Vlao", 1, [2],
        clefs=["treble_8"],
        lyrics_target="Vlao_Voice_1",
        markup="Violão"
    )
    cello = muda.Instrument(
        abjad.Cello(), "Vc",
        1, [2],
        clefs=["bass"],
        lyrics_target="Vc_Voice_1",
        markup="Violoncelo"
    )

    score = muda.Score()
    score.append([flauta, sax, violao, cello])
    instruments = [flauta, sax, violao, cello]
    score.instruments = instruments
    scheme = "#format-mark-box-alphabet"
    abjad.setting(score.score).markFormatter = scheme
    # print(abjad.lilypond(score.score))
    return score


if __name__ == "__main__":
    score = pluri_score()
    mat = muda.Material("Fl_Voice_1")
    mat.write(r"c'4 d'4 e'4", 'a')
    lyr = muda.Lyrics("Fl_Voice_1")
    lyr.write_lyrics("a -- ba -- ca")
    score.write_materials([mat, lyr])
    score.pluri_lyrics()
    print(abjad.lilypond(score.score))
    score.show()
