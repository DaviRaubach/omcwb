import muda
import abjad

gtr_strings = {
    82.41: [],
    110: [],
    146.83: [],
    196.00: [],
}
pitches = []

for key in gtr_strings.keys():
    gtr_strings[key] = [key * i for i in range(7, 14)]
    pitches.extend([abjad.NumberedPitch.from_hertz(_)
                   for _ in gtr_strings[key]])

pitches.sort()
print(pitches)

pitches_in_staff = muda.pitches_in_staff(pitches)
print(abjad.lilypond(pitches_in_staff))
