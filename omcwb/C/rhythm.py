import muda
import abjad as a
from abjadext import rmakers as r
from omcwb.C import rmakers, materials


def gl(mat: muda.Material, time_signatures):
    mat.make_skips(time_signatures)
    mat.write_time_signatures(time_signatures)


gl.apply_to = [materials.gl.name]


def skips(mat: muda.Material, time_signatures):
    mat.make_skips(time_signatures)


skips.apply_to = [materials.fl3.name, materials.sx2.name]


def fl(mat: muda.Material, timespans, time_signatures):
    makers = {
        "A": rmakers.fl_a,
        "B": rmakers.make_rest,
        "C": rmakers.fl_c,
        "D": rmakers.vlao_d,
    }

    mat.alternating_materials(timespans, makers)
    # mat.rewrite_meter(time_signatures)


fl.apply_to = [materials.fl.name]


def fl3(mat: muda.Material, timespans, time_signatures):
    makers = {
        "A": rmakers.vlao_a,
        "B": rmakers.vlao_b,
        "C": rmakers.make_rest,
        "D": rmakers.make_rest,
    }

    mat.alternating_materials(timespans, makers)
    # mat.rewrite_meter(time_signatures)


# fl3.apply_to = [materials.fl3.name]


def vlao(mat: muda.Material, timespans, time_signatures):
    makers = {
        "A": rmakers.vlao_a,
        "B": rmakers.vlao_b,
        "C": rmakers.vlao_c,
        "D": rmakers.vlao_d,
    }

    mat.alternating_materials(timespans, makers)
    # mat.rewrite_meter(time_signatures)


vlao.apply_to = [materials.vlao.name]


def vlao2(mat: muda.Material, timespans):
    makers = {
        "A": rmakers.vlao2_a,
        "B": rmakers.vlao2_b,
        "C": rmakers.vlao2_c,
        "D": rmakers.vlao2_d
    }

    mat.alternating_materials(timespans, makers)


vlao2.apply_to = [materials.vlao2.name, materials.fl2.name, materials.vc2.name]


def vlao3(mat: muda.Material, timespans):
    makers = {
        "A": rmakers.vlao3_a,
        "B": rmakers.make_rest,
        "C": rmakers.vlao3_a,
        "D": rmakers.vlao3_d
    }

    mat.alternating_materials(timespans, makers)


vlao3.apply_to = [materials.vlao3.name]


def vc(mat: muda.Material, timespans):
    makers = {
        "A": lambda _: r.note(_),
        "B": lambda _: r.note(_),
        "C": lambda _: r.note(_),
        "D": lambda _: r.note(_),
    }
    mat.alternating_materials(timespans, makers)


vc.apply_to = [materials.vc.name]


def sx(mat: muda.Material, timespans):
    makers = {
        "A": rmakers.make_rest,
        "B": lambda _: r.note(_),
        "C": rmakers.make_rest,
        "D": rmakers.make_rest,
    }
    mat.alternating_materials(timespans, makers)


sx.apply_to = [materials.sx.name]


def write_time_signatures(mat: muda.Material, time_signatures):
    mat.write_time_signatures(time_signatures)


write_time_signatures.apply_to = [
    _.name for _ in materials.materials if "Voice_2" not in _.name]


def rewrite_meter(mat: muda.Material, time_signatures):
    mat.rewrite_meter(time_signatures)


# rewrite_meter.apply_to = [
    # _.name for _ in materials.materials if "Voice_2" not in _.name]
