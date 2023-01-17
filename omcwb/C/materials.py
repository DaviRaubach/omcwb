import muda

gl = muda.Material("Global_Context")
fl = muda.Material("Fl_Voice_1")
fl2 = muda.Material("Fl_Voice_2")
fl3 = muda.Material("Fl_Voice_3")
sx = muda.Material("Sx_Voice_1")
sx2 = muda.Material("Sx_Voice_2")
vlao = muda.Material("Vlao_Voice_1")
vlao2 = muda.Material("Vlao_Voice_2")
vlao3 = muda.Material("Vlao_Voice_3")
vc = muda.Material("Vc_Voice_1")
vc2 = muda.Material("Vc_Voice_2")

materials = [gl, fl, fl2, fl3, sx, sx2, vlao, vlao2, vlao3, vc, vc2]

fl_lyr = muda.Lyrics("Fl_Voice_2")
sx_lyr = muda.Lyrics("Sx_Voice_2")
vlao_lyr = muda.Lyrics("Vlao_Voice_2")
vc_lyr = muda.Lyrics("Vc_Voice_2")

lyrics = [fl_lyr, sx_lyr, vlao_lyr, vc_lyr]
