import abjad
import os
import muda
import orchijad
from abjadext import nauert
from omcwb.orchijad_seg import materials

#
# ORCHIDEA
#
current_dir = os.path.dirname(__file__)
pitches_connection = current_dir + "/connection.txt"
_file = open(pitches_connection, "r")
orchestration = orchijad.Orchestration(_file)
# orch_dict = orchestration.

# beatspan = abjad.Duration(4, 4)
# search_tree = nauert.UnweightedSearchTree(definition={3: {3: None}, 5: None})
# tempo = abjad.MetronomeMark((1, 4), 54)
# qschema = nauert.BeatwiseQSchema(
#     beatspan=beatspan,
#     search_tree=search_tree,
#     tempo=tempo,
# )

pitches = orchestration.get_pitches()
pitches = [abjad.NumberedPitch(_) for _ in pitches[0] if _ is not None]
pitches.sort()

pitches = list(dict.fromkeys(pitches))

# durations = [(1, 8)]*len(pitches)
# print(durations)
notes = abjad.makers.make_notes(pitches, [(1, 8)])
print(notes)
score = abjad.illustrators.make_piano_score(notes)
abjad.show(score)

search_tree = nauert.UnweightedSearchTree(definition={
    2: {
        2: {2: {2: None}, 3: None},
        3: None,
        5: None,
        7: None},
    3: {2: {2: None}, 3: None, 5: None},
    5: {2: None, 3: None}, 7: {2: None},
    11: None,
    13: None})
time_signature = abjad.TimeSignature((4, 4))
tempo = abjad.MetronomeMark((1, 4), 54)
use_full_measure = True
q_schema = nauert.MeasurewiseQSchema(
    search_tree=search_tree,
    tempo=tempo,
    time_signature=time_signature,
    use_full_measure=use_full_measure,
)

# orchestration.round_pitch_deviation()
containers = orchestration.get_containers(q_schema)
# print(orchestration.containers_dict)
# orchestration.illustrate()


def write_orchestrations(mat: muda.Material):
    mapping = {
        "Fl": materials.fl.name,
        "ASax": materials.sx.name,
        "Gtr": materials.vlao.name,
        "Vc": materials.vc.name
    }
    for key in mapping.keys():
        if mapping[key] == mat.name:
            mat.append(containers[key])


write_orchestrations.apply_to = [
    materials.fl.name,
    materials.sx.name,
    materials.vlao.name,
    materials.vc.name
]
