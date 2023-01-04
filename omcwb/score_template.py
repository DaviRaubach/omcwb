"""
Score template

Template de partitura para Oficina Curitiba

"""

import muda
import abjad


def omcwb_score():
    flauta = muda.Instrument(
        abjad.Piccolo(),
        "Fl", 1, [2],
        lyrics_target="Fl_Voice_2",
        markup="Piccolo"
    )
    sax = muda.Instrument(
        abjad.SopranoSaxophone(),
        "Sx", 1, [2],
        lyrics_target="Sx_Voice_2",
        markup="Sax Soprano"
    )

    violao = muda.Instrument(
        abjad.Guitar(),
        "Vlao", 1, [2],
        clefs=["treble_8"],
        lyrics_target="Vlao_Voice_2",
        markup="Violão"
    )
    cello = muda.Instrument(
        abjad.Cello(),
        "Vc", 1, [2],
        clefs=["bass"],
        lyrics_target="Vc_Voice_2",
        markup="Violoncelo"
    )

    score = muda.Score()
    instruments = [flauta, sax, violao, cello]
    group = muda.make_group(instruments, "group")
    # score.append([flauta, sax, violao, cello])
    score.append(group)
    score.instruments = instruments
    # scheme = "#format-mark-box-alphabet"
    # abjad.setting(score.score).markFormatter = scheme
    fl = score.score["Fl_Staff"]
    abjad.setting(fl).midiInstrument = r'"Piccolo"'
    sx = score.score["Sx_Staff"]
    abjad.setting(sx).midiInstrument = r'"Alto Sax"'
    vlao = score.score["Vlao_Staff"]
    abjad.setting(vlao).midiInstrument = r'"acoustic guitar (nylon)"'
    vc = score.score["Vc_Staff"]
    abjad.setting(vc).midiInstrument = r'"Cello"'
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
