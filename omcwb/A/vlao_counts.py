
fl_rule_a_counts = \
    [-2, 1, 1, 1, -1] + \
    [1, 1, 1, 1, 1, 1] + \
    [1, 1, 2, 1, -1] + \
    [1, 1, 3, 1] + \
    [1, 1, 1, 1, 1, 1, -1]
# palavra
# salta salta salta
# atirada
# contra a água
# leva leva leva


sum_fl_rule_a = sum([abs(_) for _ in fl_rule_a_counts])
fl_a_counts = \
    [1, 3, 1, -1] +  \
    [-1, -1, -1, -1, -1, -1] +  \
    [1, 1, 2, 1, -1] + \
    [1, 1, 3, 1] +  \
    [-1, -1, -1, -1, -1, -1, -1]


rule_salta_salta_voa = [2, 1, 2, 1, 1, 1, -1]
rule_palavra_atirada = [1, 2, 1, -1, 1, 1, 2, 1, -2]
rule_pousa_sobre_as_nuvens = [2, 1, -1, 1, 1, 2, 1, -2]
rule_palavra_contra_agua = [1, 3, 1, -1, 1, 1, 2, 3, -1]

salta_salta_voa = [2, 1, 2, 1, 1, 1, -1]  # salta, salta, voa
palavra_atirada = [4, -1, 1, 4, -2]  # pa(lavra) ati(rada)
pousa_sobre_as_nuvens = [2, 1, -1, 1, 1, 2, 1, -2]  # pousa sobre as nuvens
palavra_contra_agua = [1, 4, -1, 1, 6, -1]  # pa(lavra) contra (a água)

fl_rule_b_counts = rule_salta_salta_voa + rule_palavra_atirada + \
    rule_pousa_sobre_as_nuvens + rule_palavra_contra_agua

sum_fl_rule_b = sum([abs(_) for _ in fl_rule_b_counts])
fl_b_counts = salta_salta_voa + palavra_atirada + \
    pousa_sobre_as_nuvens + palavra_contra_agua

assert sum(
    [abs(_) for _ in fl_rule_b_counts]) == sum([abs(_)
                                                for _ in fl_b_counts])


# C
# mer - _gulha cada vez mais_ fundo
# cada _vez mais alto_

rule_mergulha_cada_vez_mais_fundo = [1, 2, 1, 1, 1, 1, 1, 1, 1, -1]
rule_cada_vez_mais_alto = [1, 1, 2, 1, 2, 2, -1]

mergulha_cada_vez_mais_fundo = [1, 7, 1, 1, -1]
cada_vez_mais_alto = [1, 1, 7, -1]

fl_rule_c_counts = \
    rule_mergulha_cada_vez_mais_fundo + \
    rule_cada_vez_mais_alto


sum_fl_rule_c = sum([abs(_) for _ in fl_rule_c_counts])

fl_c_counts = \
    mergulha_cada_vez_mais_fundo + \
    cada_vez_mais_alto

# D

# a _palavra beija a_ bo _ca e escorre_
# +e escorre+, _e escorre, e escorre_
# _cada vez mais sonhada_
rule_a_palavra_beija_a_boca_e_escorre = [
    1, 1, 2, 1, 1, 1, 3, 1, 1, 1, 2, 1, -1]


a_palavra_beija_a_boca_e_escorre = [1, 6, 3, 6, -1]


fl_rule_d_counts = \
    rule_a_palavra_beija_a_boca_e_escorre

fl_d_counts = \
    a_palavra_beija_a_boca_e_escorre

sum_fl_rule_d = sum([abs(_) for _ in fl_rule_d_counts])

rule_e_escorre_x3 = [1, 1, 2, 1, -1] * 3
rule_cada_vez_mais_sonhada = [1, 1, 2, 2, 1, 1, 2, -2]

e_escorre_x3 = [-6] + [5, -1] * 2
cada_vez_mais_sonhada = [10, -2]

fl_rule_e_counts = \
    rule_e_escorre_x3 + \
    rule_cada_vez_mais_sonhada + \
    rule_cada_vez_mais_sonhada

fl_e_counts = \
    e_escorre_x3 + \
    cada_vez_mais_sonhada + \
    cada_vez_mais_sonhada


sum_fl_rule_e = sum([abs(_) for _ in fl_rule_e_counts])
