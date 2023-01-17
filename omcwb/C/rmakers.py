import abjad
import muda
from itertools import cycle
import math
from abjadext import rmakers as r
from abjadext import nauert


def fl_a_rmaker(divisions):
    pass


def make_rest(divisions):
    nested_music = r.note(divisions)
    container = abjad.Container(nested_music)
    logical_ties = abjad.select.logical_ties(container)
    r.force_rest(logical_ties)
    music = abjad.mutate.eject_contents(container)
    return music


palavra_atirada_contra_agua_a = [-2, -4, -3, -2, -2, 5, 4, 4, 3, 4, 2]
cada_vez_mais_sonhada_b = [2, 1, 2, 1, 1, 3, 2]
palavra_atirada_contra_agua_c = [-2, -4, -3, 2, 2, 5, 4, 4, 3, 4, 2]
mergulha_cada_vez_mais_fundo_d = [1, 1, 1, -1, 1, 1, 2, 3, 1, 1]

# print(sum([abs(_) for _ in palavra_atirada_contra_agua_a]))
# print(sum([abs(_) for _ in cada_vez_mais_sonhada_b]))
# print(sum([abs(_) for _ in palavra_atirada_contra_agua_c]))
# print(sum([abs(_) for _ in mergulha_cada_vez_mais_fundo_d]))


def fl_a(divisions):
    # nested_music = r.incised(
    #     divisions,
    #     prefix_talea=[-1],
    #     prefix_counts=[1],
    #     # suffix_talea=[-1],
    #     # suffix_counts=[1],
    #     talea_denominator=16,
    #     body_ratio=abjad.Ratio((15, 2)),
    # )

    t = [-2, -4, -3, -2, -2, 5, 4, 4, 3, 4, 2]
    talea = [13, 5, 4, 4, 3, 4, 2]
    nested_music = r.talea(
        divisions, talea, 32,
    )
    container = abjad.Container(nested_music)
    # r.beam(container)

    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def fl_c(divisions):
    t = [11, 2, 5, 4, 4, 3, 4, 2]

    nested_music = r.talea(
        divisions, t, 32,
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def fl_d(divisions):
    t = mergulha_cada_vez_mais_fundo_d
    t = [1, 1, 1, -1, 1, 1, 2, 3, 1, 1]
    t = [1, 1, 1, -1, 1, 1, 2, 3, 1, 1]
    nested_music = r.talea(
        divisions, t, 32,
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao_a(divisions):
    nested_music = r.talea(
        divisions, palavra_atirada_contra_agua_a, 32,
        # extra_counts=[4]
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao_b(divisions):
    nested_music = r.talea(
        divisions,
        [_ * -1 for _ in cada_vez_mais_sonhada_b],
        32,
        # extra_counts=[3]
    )

    container = abjad.Container(nested_music)
    # r.beam(container)

    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao_c(divisions):
    nested_music = r.talea(
        divisions, palavra_atirada_contra_agua_c, 32,
        # extra_counts=[3]
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao_d(divisions):
    nested_music = r.talea(
        divisions, mergulha_cada_vez_mais_fundo_d, 32,
        # extra_counts=[3]
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music

# vlao_rhythm.apply_to = [materials.vlao.name]


def vlao2_a(divisions):
    nested_music = r.talea(
        divisions, [abs(_) for _ in palavra_atirada_contra_agua_a], 32,
        # extra_counts=[4]
    )

    container = abjad.Container(nested_music)
    # r.beam(container)
    # r.invisible_music(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao2_b(divisions):
    nested_music = r.talea(
        divisions,
        cada_vez_mais_sonhada_b,
        32,
        # extra_counts=[3]
    )

    container = abjad.Container(nested_music)
    # r.beam(container)

    # r.invisible_music(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao2_c(divisions):
    nested_music = r.talea(
        divisions,
        [abs(_) for _ in palavra_atirada_contra_agua_c],
        32,
        # extra_counts=[3]
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    # r.invisible_music(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao2_d(divisions):
    nested_music = r.talea(
        divisions,
        mergulha_cada_vez_mais_fundo_d,
        32,
        # extra_counts=[3]
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    # r.invisible_music(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao3_a(divisions):
    nested_music = r.incised(
        divisions,
        # prefix_talea=[-1],
        # prefix_counts=[0, 1],
        # suffix_talea=[-1],
        # suffix_counts=[1],
        talea_denominator=8,
        body_ratio=abjad.Ratio((1, 7, 1)),
    )
    container = abjad.Container(nested_music)
    # r.beam(container)

    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def vlao3_d(divisions):
    nested_music = r.incised(
        divisions,
        # prefix_talea=[-1],
        # prefix_counts=[0, 1],
        # suffix_talea=[-1],
        # suffix_counts=[1],
        talea_denominator=8,
        body_ratio=abjad.Ratio((1, 1, 1)),
    )
    container = abjad.Container(nested_music)
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def make_log_rhythm(divisions, _input: list):
    perfil = [math.log(abs(_)) for _ in _input]
    perfil = [a * (_ / abs(_)) for a, _ in zip(perfil, _input)]
    dur_ms = [round(_ * 300) for _ in perfil]

    search_tree = nauert.UnweightedSearchTree(
        definition={
            2: {2: {2: {2: None}, 3: None}, 3: None, 5: None, 7: None},
            3: {2: {2: None}, 3: None, 5: None},
            5: {2: None, 3: None},
            7: {2: None},
            11: None,
            13: None,
        }
    )
    # time_signature = abjad.TimeSignature((4, 4))
    # tempo = abjad.MetronomeMark((1, 4), 54)
    # use_full_measure = True
    q_schema = nauert.MeasurewiseQSchema(
        search_tree=search_tree,
        # tempo=tempo,
        # time_signature=time_signature,
        # use_full_measure=use_full_measure,
    )
    q_event_sequence = nauert.QEventSequence.from_millisecond_durations(dur_ms)
    result_nauert = nauert.quantize(q_event_sequence, q_schema)
    # print(abjad.lilypond(result_nauert))
    # print("shards:", shards)

    leaves = abjad.select.leaves(result_nauert)
    shards = abjad.select.partition_by_durations(
        leaves,
        # [abjad.Duration(_) for _ in divisions],
        divisions,
        cyclic=True,
        fill=abjad.EXACT,
        in_seconds=False,
        overhang=True,
    )
    print(divisions)
    for shard in shards:
        print("shards:", shard)

    shards = cycle(shards)
    container = abjad.Container()
    for i in divisions:
        # print("next:", next(shards))
        container.extend(next(shards))

    music = abjad.mutate.eject_contents(container)
    return music
