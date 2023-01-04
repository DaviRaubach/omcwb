import muda
import abjad
from abjadext import rmakers as r


def make_rest(divisions):
    nested_music = r.note(divisions)
    container = abjad.Container(nested_music)
    logical_ties = abjad.select.logical_ties(container)
    r.force_rest(logical_ties)
    music = abjad.mutate.eject_contents(container)
    return music


def gl(glcontext: muda.Material, time_signatures):
    glcontext.make_skips(time_signatures)
    glcontext.write_time_signatures(time_signatures)


# gl.appply_to = ["Global_Context"]

fl_rule_a_counts = \
    [1, 3, 1, -1] + \
    [1, 1, 1, 1, 1, 1] + \
    [1, 1, 2, 1, -1] + \
    [1, 1, 3, 1] + \
    [1, 1, 1, 1, 1, 1, -1]
# palavra
# salta salta salta
# atirada
# contra a água
# leva leva leva


sum_fl_rule_a = sum([abs(_) for _ in fl_rule_a_counts])
fl_a_counts = \
    [1, 3, 1, -1] +  \
    [-1, -1, -1, -1, -1, -1] +  \
    [1, 1, 2, 1, -1] + \
    [1, 1, 3, 1] +  \
    [-1, -1, -1, -1, -1, -1, -1]


rule_salta_salta_voa = [2, 1, 2, 1, 1, 1, -1]
rule_palavra_atirada = [1, 2, 1, -1, 1, 1, 2, 1, -2]
rule_pousa_sobre_as_nuvens = [2, 1, -1, 1, 1, 2, 1, -2]
rule_palavra_contra_agua = [1, 3, 1, -1, 1, 1, 2, 3, -1]

salta_salta_voa = [2, 1, 2, 1, 1, 1, -1]  # salta, salta, voa
palavra_atirada = [4, -1, 1, 4, -2]  # pa(lavra) ati(rada)
pousa_sobre_as_nuvens = [2, 1, -1, 1, 1, 2, 1, -2]  # pousa sobre as nuvens
palavra_contra_agua = [1, 4, -1, 1, 6, -1]  # pa(lavra) contra (a água)

fl_rule_b_counts = rule_salta_salta_voa + rule_palavra_atirada + \
    rule_pousa_sobre_as_nuvens + rule_palavra_contra_agua

sum_fl_rule_b = sum([abs(_) for _ in fl_rule_b_counts])
fl_b_counts = salta_salta_voa + palavra_atirada + \
    pousa_sobre_as_nuvens + palavra_contra_agua

assert sum(
    [abs(_) for _ in fl_rule_b_counts]) == sum([abs(_)
                                                for _ in fl_b_counts])


# C
# mer - _gulha cada vez mais_ fundo
# cada _vez mais alto_

rule_mergulha_cada_vez_mais_fundo = [1, 2, 1, 1, 1, 1, 1, 1, 1, -1]
rule_cada_vez_mais_alto = [1, 1, 2, 1, 2, 2, -1]

mergulha_cada_vez_mais_fundo = [1, 7, 1, 1, -1]
cada_vez_mais_alto = [1, 1, 7, -1]

fl_rule_c_counts = \
    rule_mergulha_cada_vez_mais_fundo + \
    rule_cada_vez_mais_alto


sum_fl_rule_c = sum([abs(_) for _ in fl_rule_c_counts])

fl_c_counts = \
    mergulha_cada_vez_mais_fundo + \
    cada_vez_mais_alto

# D

# a _palavra beija a_ bo _ca e escorre_
# +e escorre+, _e escorre, e escorre_
# _cada vez mais sonhada_
rule_a_palavra_beija_a_boca_e_escorre = [
    1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 2, 1, -1]


a_palavra_beija_a_boca_e_escorre = [1, 6, 3, 6, -1]


fl_rule_d_counts = \
    rule_a_palavra_beija_a_boca_e_escorre

fl_d_counts = \
    a_palavra_beija_a_boca_e_escorre

sum_fl_rule_d = sum([abs(_) for _ in fl_rule_d_counts])

rule_e_escorre_x3 = [1, 1, 2, 1, -1] * 3
rule_cada_vez_mais_sonhada = [1, 1, 2, 2, 1, 1, 2, -2]

e_escorre_x3 = [-6] + [5, -1] * 2
cada_vez_mais_sonhada = [10, -2]

fl_rule_e_counts = \
    rule_e_escorre_x3 + \
    rule_cada_vez_mais_sonhada + \
    rule_cada_vez_mais_sonhada

fl_e_counts = \
    e_escorre_x3 + \
    cada_vez_mais_sonhada + \
    cada_vez_mais_sonhada


sum_fl_rule_e = sum([abs(_) for _ in fl_rule_e_counts])


sum_vlao_rule_a = sum(rule_e_escorre_x3)
sum_vlao_rule_b = sum(rule_cada_vez_mais_sonhada)
sum_vlao_rule_c = sum(rule_palavra_contra_agua)
sum_vlao_rule_d = sum(rule_mergulha_cada_vez_mais_fundo)
sum_vlao_rule_e = sum(rule_e_escorre_x3)


# RMAKERS


def _talea(divisions, counts):
    nested_music = r.talea(
        divisions,
        counts,
        32,
        spelling=r.Spelling(increase_monotonic=False),
    )
    container = abjad.Container(nested_music)
    # r.rewrite_sustained(container)
    # r.beam(container)
    # r.force_repeat_tie(container)
    r.extract_trivial(container)

    music = abjad.mutate.eject_contents(container)
    return music


def fl_rule_a(divisions):
    result = _talea(divisions, fl_rule_a_counts)
    return result


def fl_a(divisions):
    result = _talea(divisions, fl_a_counts)
    return result


def fl_rule_b(divisions):
    result = _talea(divisions, fl_rule_b_counts)
    return result


def fl_b(divisions):
    result = _talea(divisions, fl_b_counts)
    return result


def fl_rule_c(divisions):
    result = _talea(divisions, fl_rule_c_counts)
    return result


def fl_c(divisions):
    result = _talea(divisions, fl_c_counts)
    return result


def fl_rule_d(divisions):
    result = _talea(divisions, fl_rule_d_counts)
    return result


def fl_d(divisions):
    result = _talea(divisions, fl_d_counts)
    return result


def fl_rule_e(divisions):
    result = _talea(divisions, fl_rule_e_counts)
    return result


def fl_e(divisions):
    result = _talea(divisions, fl_e_counts)
    return result

# CELLO


def vc_rule_a(divisions):
    result = _talea(divisions, fl_rule_e_counts)
    return result


def vc_a(divisions):
    result = _talea(divisions, fl_e_counts)
    return result


def vc_rule_b(divisions):
    result = _talea(divisions, fl_rule_d_counts)
    return result


def vc_b(divisions):
    result = _talea(divisions, fl_d_counts)
    return result


def vc_rule_c(divisions):
    result = _talea(divisions, fl_rule_c_counts)
    return result


def vc_c(divisions):
    result = _talea(divisions, fl_c_counts)
    return result


def vc_rule_d(divisions):
    result = _talea(divisions, fl_rule_b_counts)
    return result


def vc_d(divisions):
    result = _talea(divisions, fl_b_counts)
    return result


def vc_rule_e(divisions):
    result = _talea(divisions, fl_rule_a_counts)
    return result


def vc_e(divisions):
    result = _talea(divisions, fl_a_counts)
    return result


# VIOLÃO


def vlao_a(divisions):
    result = _talea(
        divisions,
        rule_e_escorre_x3
    )
    return result


def vlao_b(divisions):
    result = _talea(
        divisions,
        rule_cada_vez_mais_sonhada,
    )
    return result


def vlao_c(divisions):
    result = _talea(
        divisions,
        rule_palavra_contra_agua)
    return result


def vlao_d(divisions):
    result = _talea(
        divisions,
        rule_mergulha_cada_vez_mais_fundo)
    return result


def vlao_e(divisions):
    result = _talea(
        divisions,
        rule_e_escorre_x3)
    return result

# def fl2_b(divisions):
#     nested_music = r.tuplet(divisions, [(1, 1, 1)])
#     container = abjad.Container(nested_music)
#     r.extract_trivial(container)
#     music = abjad.mutate.eject_contents(container)

#     return music


# def fl_b(divisions):
#     nested_music = r.tuplet(divisions, [(1, 1, 1)])
#     container = abjad.Container(nested_music)
#     tuplets = abjad.select.tuplets(container)
#     notes = [abjad.select.notes(_) for _ in tuplets]
#     notes = [abjad.select.exclude(_, [0, 1]) for _ in notes]
#     r.before_grace_container(notes, [3])
#     r.extract_trivial(container)
#     music = abjad.mutate.eject_contents(container)

#     return music


# def fl2_c(divisions):
#     nested_music = r.tuplet(divisions, [(1, 1, 1, 1, 2, 1, 1, 1, 2, 1)])
#     # nested_music = r.talea(
#     #     divisions, [1, 1], 8, extra_counts=[1, 0, 0]
#     # )
#     container = abjad.Container(nested_music)
#     # logical_ties = abjad.select.logical_ties(container)
#     # rests = abjad.select.get(logical_ties, [0, -1])
#     # r.force_rest(rests)
#     # r.denominator(container, (1, 8))
#     # r.beam(container)
#     r.extract_trivial(container)
#     music = abjad.mutate.eject_contents(container)
#     return music


# def fl_c_old(divisions):
#     nested_music = r.tuplet(divisions, [(-4, 4, -4)])
#     # nested_music = r.talea(
#     #     divisions, [1, 1], 8, extra_counts=[1, 0, 0]
#     # )
#     container = abjad.Container(nested_music)
#     # logical_ties = abjad.select.logical_ties(container)
#     # rests = abjad.select.get(logical_ties, [0, -1])
#     # r.force_rest(rests)
#     # r.denominator(container, (1, 8))
#     # r.beam(container)
#     r.extract_trivial(container)
#     music = abjad.mutate.eject_contents(container)
#     return music


# def vlao_rule_a(divisions):
#     nested_music = r.talea(
#         divisions,
#         [1, 1, 1, 3, 1, -1, 1, 1, 2, 2, 1, 1, 3, 1, -2],
#         32,
#         spelling=r.Spelling(increase_monotonic=False),
#     )
#     container = abjad.Container(nested_music)
#     # r.beam(container)
#     r.extract_trivial(container)
#     music = abjad.mutate.eject_contents(container)
#     return music


# def vlao_a(divisions):
#     nested_music = r.talea(
#         divisions,
#         [1, 1, 1, 5, -1, 1, 4, 1, 1, 3, 1, -2],
#         # [1, 3, 1, -1, 1, 1, 2, 2, 1, 1, 3, 1, -2],
#         32,
#         spelling=r.Spelling(increase_monotonic=False),
#     )
#     container = abjad.Container(nested_music)
#     # r.beam(container)
#     r.extract_trivial(container)
#     music = abjad.mutate.eject_contents(container)
#     return music


# def vc_a(divisions):
#     nested_music = r.talea(
#         divisions,
#         [12],
#         # [1, 3, 1, -1, 1, 1, 2, 2, 1, 1, 3, 1, -2],
#         32,
#         spelling=r.Spelling(increase_monotonic=False),
#     )
#     container = abjad.Container(nested_music)
#     # r.beam(container)
#     r.extract_trivial(container)
#     music = abjad.mutate.eject_contents(container)
#     return music


def sx_a(divisions):
    nested_music = r.note(divisions)
    container = abjad.Container(nested_music)
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def sx_b(divisions):
    nested_music = r.talea(
        divisions,
        [8],
        # [1, 3, 1, -1, 1, 1, 2, 2, 1, 1, 3, 1, -2],
        32,
        spelling=r.Spelling(increase_monotonic=False),
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music
