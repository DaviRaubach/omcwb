import abjad
import muda
from omcwb.A import rmakers


def test_timespans_durations(
        alternations: list[list[int]],
        denominator: int,
        annotations: list[str],
        subdivision=(2, 4),
        subdivisions: dict = None) -> list[muda.rhythm.AnnotatedDuration]:

    timespans = muda.alternating_timespans(
        alternations=alternations,
        denominator=denominator,
        annotations=annotations,
    )
    # for item in timespans:
    # print(item)
    # print(timespans)
    if subdivisions:
        ts = muda.TimespanList()
        ts.extend(timespans.subdivide(subdivisions))
        durs = ts.pure_annotated_durations()


def timespans_durations(
        alternations: list[list[int]],
        denominator: int,
        annotations: list[str],
        subdivision=(2, 4)) -> list[muda.rhythm.AnnotatedDuration]:

    timespans = muda.alternating_timespans(
        alternations=alternations,
        denominator=denominator,
        annotations=annotations,
    )

    annotated_durations = timespans.annotated_durations(
        subdivision=subdivision)

    return timespans, annotated_durations


def timespans() -> dict:
    result = {}

    total_duration = abjad.Duration(78, 16)
    fl_a = [rmakers.sum_fl_rule_a, 0, 0, 0]
    fl_b = [rmakers.sum_fl_rule_b, 0, 0, 0]
    fl_c = [rmakers.sum_fl_rule_c, 0, 0, 0]
    fl_d = [rmakers.sum_fl_rule_d, 0, 0, 0]
    fl_e = [rmakers.sum_fl_rule_e, 0, 0, 0]

    vlao_a = [rmakers.sum_fl_rule_a, 0, 0, 0]
    vlao_b = [rmakers.sum_fl_rule_b, 0, 0, 0]
    vlao_c = [rmakers.sum_fl_rule_c, 0, 0, 0]
    vlao_d = [rmakers.sum_fl_rule_d, 0, 0, 0]
    vlao_e = [rmakers.sum_fl_rule_e, 0, 0, 0]

    sx_a = [0, 4, 0, 0]
    sx_b = [0, 0, 44, 0]
    sx_c = [0, 0, 0, 0]
    sx_d = [16, 0, 48, 0]

    vc_a = [rmakers.sum_fl_rule_e, 0, 0, 0]
    vc_b = [rmakers.sum_fl_rule_d, 0, 0, 0]
    vc_c = [rmakers.sum_fl_rule_c, 0, 0, 0]
    vc_d = [rmakers.sum_fl_rule_b, 0, 0, 0]
    vc_e = [rmakers.sum_fl_rule_a, 0, 0, 0]
    # C: repetição molto ritardando
    subdivision = (8, 4)
    fl_ts = timespans_durations(
        muda.make_alternations(
            total_duration,
            [fl_a, fl_b, fl_c, fl_d, fl_e],
            32
        ),
        32,
        ["A", "B", "C", "D", "E"],
        subdivision=subdivision,
    )

    result["Fl_Voice_1"] = fl_ts[1]
    result["Fl_Voice_2"] = fl_ts[1]

    sx_ts = timespans_durations(
        muda.make_alternations(
            total_duration,
            [sx_a, sx_b, sx_c, sx_d],
            32
        ),
        32,
        ["A", "B", "C", "D"],
        subdivision=subdivision
    )
    result["Sx_Voice_1"] = sx_ts[1]
    result["Sx_Voice_2"] = sx_ts[1]

    vlao_ts = timespans_durations(
        muda.make_alternations(
            total_duration,
            [vlao_a, vlao_b, vlao_c, vlao_d, vlao_e],
            32
        ),
        32,
        ["A", "B", "C", "D", "E"],
        subdivision=subdivision
    )
    result["Vlao_Voice_1"] = vlao_ts[1]
    result["Vlao_Voice_2"] = vlao_ts[1]

    vc_ts = timespans_durations(
        muda.make_alternations(
            total_duration,
            [vc_a, vc_b, vc_c, vc_d, vc_e],
            32
        ),
        32,
        ["A", "B", "C", "D", "E"],
        subdivision=subdivision
    )
    result["Vc_Voice_1"] = vc_ts[1]
    result["Vc_Voice_2"] = vc_ts[1]

    # print(ts_list)
    # ts_list.append(fl_ts[0])

    # this = abjad.lilypond(ts_list)
    # abjad.illustrators.illustrate(ts_list)

    # scale=0.6,
    # string='#(set-default-paper-size "a4landscape")',

    # abjad.show(ts_list, range_=(-1, 7), scale=0.5, key="annotation")
    # print(this)
    flute_markup = fl_ts[0]._make_markup(key="annotation")
    sax_markup = sx_ts[0]._make_markup(key="annotation")
    violao_markup = vlao_ts[0]._make_markup(key="annotation")
    cello_markup = vc_ts[0]._make_markup(key="annotation")
    ly_file = abjad.LilyPondFile(
        items=[
            r'#(set-default-paper-size "a2")',
            r"\markup {\vspace #8 \bold \fontsize #2 {Flauta:}} ",
            flute_markup,
            r"\markup {\vspace #8  \bold \fontsize #2 {Sax:}} ",
            sax_markup,
            r"\markup {\vspace #8  \bold \fontsize #2 {Violão:}} ",
            violao_markup,
            r"\markup {\vspace #8  \bold \fontsize #2 {Cello:}} ",
            cello_markup,
        ],
    )
    abjad.persist.as_ly(ly_file, "timespans_illustration.ly")
    abjad.persist.as_pdf(ly_file, "timespans_illustration.pdf")

    # sx_ts[0], vlao_ts[0], vc_ts[0]]
    _timespans = [fl_ts[0], vc_ts[0], vlao_ts[0]]
    # print(_timespans)
    for ts in _timespans:
        assert ts.duration == total_duration

    ts_list = muda.TimespanList()
    for inst in _timespans:
        for ts in inst:
            ts_list.append(ts)

    tuple_ts_list = ts_list.explode()
    permitted_meters = [
        # (5, 4),
        # (9, 8),
        (4, 4),
        (7, 8),
        (3, 4),
        (5, 8),
        (2, 4),
        (3, 8),
        # (5, 16),
        # (1, 4),
        # (3, 16),
        # (1, 8),
    ]
    permitted_meters = [abjad.Meter(_) for _ in permitted_meters]
    offset_counter = ts_list.count_offsets()
    # abjad.show(offset_counter, scale=0.5)
    fitted_meters = abjad.Meter.fit_meters(
        argument=offset_counter.items, meters=permitted_meters)

    time_signatures = [_.implied_time_signature for _ in fitted_meters]

    result["Time_Signatures"] = time_signatures
    # print(offset_counter)
    # print(time_signatures)
    #
    return result


# timespans.time_signatures

# timespans()
# divisions = [(6, 4)] * 7
# time_signatures = [abjad.TimeSignature(_) for _ in divisions]
