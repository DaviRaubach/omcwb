import muda
import abjad
multi_1 = [6.75, 8, 20, 27, 29, 31]  # notas originais
multi_1_mod = muda.ring_modulation(multi_1)  # modulação
multi_1_mod.sort()  # organiza do grave para o agudo
multi_1_mod = list(dict.fromkeys(multi_1_mod))  # remove repetidas
# muda.see_pitches(multi_1_mod) # gera ilustração

multi_2 = [11, 12, 23, 30.5]
multi_2_mod = muda.ring_modulation(multi_2)
multi_2_mod.sort()
multi_2_mod = list(dict.fromkeys(multi_2_mod))
# muda.see_pitches(multi_2_mod)

multi_2 = [11, 12, 23, 30.5]
multi_2_mod = muda.ring_modulation(multi_2)
multi_2_mod.sort()
multi_2_mod = list(dict.fromkeys(multi_2_mod))

multi_3 = [-6.5, 0, 4, 11.5, 18.25, 25, 38.75]

multi_3_mod = muda.ring_modulation(multi_3)
multi_3_mod.sort()
multi_3_mod = list(dict.fromkeys(multi_3_mod))
multi_3 = [abjad.NamedPitch(_) for _ in multi_3]

multi_4 = [0.5, 11.5, 15.5, 20.5, 24.5]

multi_4_mod = muda.ring_modulation(multi_4)
multi_4_mod.sort()
multi_4_mod = list(dict.fromkeys(multi_4_mod))
multi_4 = [abjad.NamedPitch(_) for _ in multi_4]
