#
# ORCHIDEA 
#
import orchijad
import os
current_dir = os.path.dirname(__file__)
pitches_connection = current_dir + "/connection.txt"
_file = open(pitches_connection, "r")
orchestration = orchijad.Orchestration(_file)
# orch_dict = orchestration.
