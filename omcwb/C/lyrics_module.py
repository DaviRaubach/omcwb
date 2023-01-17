import abjad
from omcwb.A import materials
import muda
# from omcwb.A import rmakers
from itertools import cycle


def scratched(string_lines):
    new_string_lines = r""
    for line in string_lines.splitlines():
        new_string_lines = new_string_lines + \
            (r" \markup \scratched " + line + "\n")
    return new_string_lines


palavra_salta = r"""Pa --
la --
vra
(sal --
ta,
sal --
ta,
vo --
a)
"""

atirada_contra_agua_leve = r"""A --
ti --
ra --
da
con --
tra
a‿á --
gua
(le --
ve,
le --
ve,
le --
ve)
"""

palavra_atirada_contra_agua = r""" Pa --
la --
vra
a --
ti --
ra --
da
con --
tra
a‿á --
gua
"""

salta_salta_voa = r""" Sal --
ta,
sal --
ta,
vo --
a...
"""

palavra_atirada = r"""Pa --
la --
vra
a --
ti --
ra --
da
"""

pousaa_sobre_as_nuvens = r"""Pou --
sa
so --
bre‿as
nu --
vens...
"""

palavra_contra_agua = r"""Pa --
la --
vra
con --
tra
á --
gua
"""
cada_vez_mais_fundo_mais_alto = r"""Ca --
da
vez
mais
fun --
do...
ca --
da
vez
mais
al --
to...
"""

seduz_a_lingua_escoa = r"""Seduz
a
lín --
gua
e
es --
co --
a,
e
es --
co --
a,
"""

e_escoa = r""" E
es --
co --
a,"""

cada_vez_mais_sonhada = r""" ca --
da 
vez 
mais
so --
nha --
da"""

palavra_contra_agua = """ Pa --
la --
vra
con --
tra
a‿á --
gua."""

mergulha_cada_vez_mais_fundo = """ mer --
gu --
lha
ca --
da
vez
mais
fun --
do
ca --
da
vez
mais
al --
to"""

palavra_contra_agua_voa = """ pa --
la --
vra
con --
tra
a‿á --
gua
vo --
a"""


def write_lyrics(text, syllable_counts):
    lyrics = r" "
    lines = cycle(text.splitlines())
    for i in range(syllable_counts):
        t = next(lines)
        if i == syllable_counts - 1:
            if "--" in t:
                t = "e…"
            elif t.endswith(" "):
                t = t[:-1] + "…"
            else:
                t = t + "…"
            # print(i, t)
        lyrics += t + " " + "\n"
    # print(lyrics)

    # scratched_string_lines = r""
    # for line in lyrics.splitlines():
    # scratched_string_lines += (r" \markup \scratched " + line)
    return lyrics


def lyr_by_material(mat: muda.Material, lyr_dict):
    selection = abjad.select.components(mat.container, abjad.Container)
    lyrics = ""
    for container in selection:
        if container.name is not None and container.name[0] in lyr_dict.keys():
            alts = abjad.select.logical_ties(container, pitched=True)
            lyrics += write_lyrics(
                lyr_dict[container.name[0]],
                len(alts)
            )
    lyrics = scratched(lyrics)
    # print(lyrics)
    return lyrics


# def fl(lyr: muda.Lyrics):
#     lyr_dict = {"A": atirada_contra_agua_leve,
#                 "B": cada_vez_mais_sonhada,
#                 "C": palavra_contra_agua,
#                 "D": mergulha_cada_vez_mais_fundo,
#                 }
#     fl_lyrics = lyr_by_material(mat, lyr_dict)
#     lyr.write_lyrics(fl_lyrics)
#     # lyr.align = "LEFT


# fl.apply_to = [
#     "Fl_Voice_2_Lyrics",
# ]


# def sx(lyr: muda.Lyrics):
#     lyr.write_lyrics(fl_lyrics)

#     # lyr.align = "LEFT"


# sx.apply_to = [
#     "Sx_Voice_2_Lyrics",
# ]


def make_vlao_lyrics(mat):
    lyr_dict = {"A": palavra_atirada_contra_agua,
                "B": cada_vez_mais_sonhada,
                "C": palavra_atirada_contra_agua,
                "D": mergulha_cada_vez_mais_fundo,
                }
    global vlao_lyrics
    vlao_lyrics = lyr_by_material(mat, lyr_dict)


make_vlao_lyrics.apply_to = [materials.vlao2.name]


def vlao(lyr: muda.Lyrics):
    lyr.write_lyrics(vlao_lyrics)


vlao.apply_to = [materials.vlao_lyr.name]


def make_fl_lyrics(mat):
    lyr_dict = {"A": mergulha_cada_vez_mais_fundo,
                "B": cada_vez_mais_sonhada,
                "C": palavra_atirada_contra_agua,
                "D": palavra_contra_agua_voa,
                }
    global fl_lyrics
    fl_lyrics = lyr_by_material(mat, lyr_dict)


make_fl_lyrics.apply_to = [materials.fl2.name]


def fl(lyr: muda.Lyrics):
    lyr.write_lyrics(fl_lyrics)


fl.apply_to = [materials.fl_lyr.name]


def vc(lyr: muda.Lyrics):
    lyr.write_lyrics(fl_lyrics)

    # lyr.align = "LEFT"


vc.apply_to = [
    materials.vc_lyr.name]


# fl_lyrics = scratched(fl_lyrics)
# sx_lyrics = scratched(fl_lyrics)
# vc_lyrics = scratched(vc_lyrics)
