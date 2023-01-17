import abjad


def breath_after_run(selection):
    runs = abjad.select.runs(selection)
    result = [abjad.attach(abjad.BreathMark(), _[-1]) for _ in runs]


def rewrite_sustained(container):
    lts = abjad.select.logical_ties(container, pitched=True)
    for lt in lts:
        if lt.written_duration >= abjad.Duration(4, 32):
            for note in lt:
                abjad.tweak(note.note_head, r'\tweak stencil \minima')


def write_pitches(selected_material, outline_indices, pitches):
    def lts(_): return abjad.select.logical_ties(_, pitched=True)
    for container in selected_material:
        for lt, index in zip(lts(container), outline_indices):
            for leaf in lt:
                leaf.written_pitch = pitches[index]


def macro_pitches(pitches, outline, pitch_range=False, select_range=[0, 1]):
    _pitches = [abjad.NamedPitch(_).number for _ in pitches]
    _pitches = list(dict.fromkeys(_pitches))
    _pitches.sort()
    # print("sorted pitches:", _pitches)
    # pitches_ = muda.ring_modulation(
    #     abjad.PitchSegment(pitches_), pitch_range
    # )
    # pitches_.sort()
    if pitch_range:
        _pitches = muda.filter_pitches(_pitches, pitch_range)
    # print(pitches_)

    outline = [_ / max(outline) for _ in outline]

    # _max = round(len(pitches_) * constante)
    _max = round(len(_pitches) * select_range[1])
    _min = round(len(_pitches) * select_range[0])
    # print("min max", _min, _max)

    _pitches = _pitches[_min:_max]
    # print("selected_pitches:", _pitches)
    outline_indices = [int(_ * (len(_pitches) - 1))
                       for _ in outline]
    _pitches = [_pitches[_] for _ in outline_indices]

    if pitch_range:
        toprint = [_.number for _ in _pitches]
    else:
        toprint = _pitches
    # print("used pitches:", toprint)
    # muda.see_pitches(pitches_)

    return _pitches
