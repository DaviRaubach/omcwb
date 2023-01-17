import muda
from omcwb.B import materials


def gl(mat: muda.Material):
    mat.write(r's1', "B1")


gl.apply_to = [materials.gl.name]
