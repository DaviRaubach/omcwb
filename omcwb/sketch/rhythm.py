import muda
import abjad
from omcwb.sketch import materials, rmakers


def voz(mat: muda.Material, timespans, time_signatures, pivot="C5"):
    mat_makers = {
        "A": rmakers.fl_a,
        "B": rmakers.fl_b,
        "C": rmakers.fl_c,
        "D": rmakers.make_rest,
    }

    mat.alternating_materials(timespans, mat_makers)
    # print(time_signatures)
    # mat.rewrite_meter(time_signatures)
    # mat.write_time_signatures(time_signatures)


voz.apply_to = [materials.fl.name, materials.sx.name,
                materials.vlao.name, materials.vc.name]


def voz2(mat: muda.Material, timespans, time_signatures):
    mat_makers = {
        "A": rmakers.fl2_a,
        "B": rmakers.fl2_b,
        "C": rmakers.fl2_c,
        "D": rmakers.make_rest,
    }

    mat.alternating_materials(timespans, mat_makers)
    mat.write_time_signatures(time_signatures)


voz2.apply_to = [materials.fl2.name, materials.sx2.name,
                 materials.vlao2.name, materials.vc2.name]


# ef sx(mat: muda.Material, timespans, time_signatures):
#     mat_makers = {
#         "A": rmakers.fl_a,
#         "B": rmakers.fl_b,
#         "C": rmakers.fl_c,
#         "D": rmakers.make_rest,
#     }

#     mat.alternating_materials(timespans, mat_makers)
#     # mat.write_time_signatures(time_signatures)


# sx.apply_to = [materials.sx.name]


# def sx2(mat: muda.Material, timespans, time_signatures):
#     mat_makers = {
#         "A": rmakers.fl2_a,
#         "B": rmakers.fl2_b,
#         "C": rmakers.fl2_c,
#         "D": rmakers.make_rest,
#     }

#     mat.alternating_materials(timespans, mat_makers)
#     mat.write_time_signatures(time_signatures)


# sx2.apply_to = [materials.sx2.name]
