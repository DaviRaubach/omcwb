import muda
from omcwb.B import materials


def sx(mat: muda.Material):
    mat.write(r's1', "B1")


sx.apply_to = [materials.sx.name, materials.sx2.name]
