import muda
import abjad
multi_31 = [6.75, 8, 20, 27, 29, 31]  # notas originais
multi_31_mod = muda.ring_modulation(multi_31)  # modulação
multi_31_mod.sort()  # organiza do grave para o agudo
multi_31_mod = list(dict.fromkeys(multi_31_mod))  # remove repetidas
# muda.see_pitches(multi_1_mod) # gera ilustração

multi_77 = [11, 12, 23, 30.5]
multi_77_mod = muda.ring_modulation(multi_77)
multi_77_mod.sort()
multi_77_mod = list(dict.fromkeys(multi_77_mod))
# muda.see_pitches(multi_2_mod)

multi_77 = [11, 12, 23, 30.5]
multi_77_mod = muda.ring_modulation(multi_77)
multi_77_mod.sort()
multi_77_mod = list(dict.fromkeys(multi_77_mod))

multi_1 = [-6.5, 0, 4, 11.5, 18.25, 25, 38.75]

multi_1_mod = muda.ring_modulation(multi_1)
multi_1_mod.sort()
multi_1_mod = list(dict.fromkeys(multi_1_mod))
multi_1 = [abjad.NamedPitch(_) for _ in multi_1]

multi_2 = [0.5, 11.5, 15.5, 20.5, 24.5]

multi_2_mod = muda.ring_modulation(multi_2)
multi_2_mod.sort()
multi_2_mod = list(dict.fromkeys(multi_2_mod))
multi_2 = [abjad.NamedPitch(_) for _ in multi_2]

multi_15 = [4, 6, 14, 17, 23.5]

multi_15_mod = muda.ring_modulation(multi_15)
multi_15_mod.sort()
multi_15_mod = list(dict.fromkeys(multi_15_mod))
multi_15 = [abjad.NamedPitch(_) for _ in multi_15]

# multi_7 = [4, 6, 14, 17, 23.5]

# multi_7_mod = muda.ring_modulation(multi_7)
# multi_7_mod.sort()
# multi_7_mod = list(dict.fromkeys(multi_7_mod))
# multi_7 = [abjad.NamedPitch(_) for _ in multi_7]
