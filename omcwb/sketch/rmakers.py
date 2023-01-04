import muda
import abjad
from abjadext import rmakers as r
from omcwb.sketch import materials


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

# RMAKERS
def fl2_a(divisions):
    nested_music = r.tuplet(divisions, [(1, 1, 1, -2, 1, 1, -1)])
    # nested_music = r.talea(
    #     divisions, [1, 1], 8, extra_counts=[1, 0, 0]
    # )
    container = abjad.Container(nested_music)
    logical_ties = abjad.select.logical_ties(container)
    rests = abjad.select.get(logical_ties, [0, -1])
    # r.force_rest(rests)
    # r.denominator(container, (1, 8))
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def fl_a(divisions):
    nested_music = r.tuplet(divisions, [(1, 4, 1, 2)])
    # nested_music = r.talea(
    #     divisions, [1, 1], 8, extra_counts=[1, 0, 0]
    # )
    container = abjad.Container(nested_music)
    logical_ties = abjad.select.logical_ties(container)
    rests = abjad.select.get(logical_ties, [0, -1])
    r.force_rest(rests)
    # r.denominator(container, (1, 8))
    r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def fl2_b(divisions):
    nested_music = r.tuplet(divisions, [(1, 1, 1)])
    container = abjad.Container(nested_music)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)

    return music


def fl_b(divisions):
    nested_music = r.tuplet(divisions, [(1, 1, 1)])
    container = abjad.Container(nested_music)
    tuplets = abjad.select.tuplets(container)
    notes = [abjad.select.notes(_) for _ in tuplets]
    notes = [abjad.select.exclude(_, [0, 1]) for _ in notes]
    r.before_grace_container(notes, [3])
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)

    return music


def fl2_c(divisions):
    nested_music = r.tuplet(divisions, [(1, 1, 1, 1, 2, 1, 1, 1, 2, 1)])
    # nested_music = r.talea(
    #     divisions, [1, 1], 8, extra_counts=[1, 0, 0]
    # )
    container = abjad.Container(nested_music)
    logical_ties = abjad.select.logical_ties(container)
    # rests = abjad.select.get(logical_ties, [0, -1])
    # r.force_rest(rests)
    # r.denominator(container, (1, 8))
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music


def fl_c(divisions):
    nested_music = r.tuplet(divisions, [(-4, 4, -4)])
    # nested_music = r.talea(
    #     divisions, [1, 1], 8, extra_counts=[1, 0, 0]
    # )
    container = abjad.Container(nested_music)
    logical_ties = abjad.select.logical_ties(container)
    # rests = abjad.select.get(logical_ties, [0, -1])
    # r.force_rest(rests)
    # r.denominator(container, (1, 8))
    # r.beam(container)
    r.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    return music
