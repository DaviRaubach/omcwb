"""This module serves as the entry point of La_otra_margen."""

import os
import abjad
import time
# from asvozes.seg00 import segment00
# from asvozes.texto_01.segment import texto_01
# from asvozes.seg_texto_esparso.segment import texto_esparso
# from asvozes.fala_01.segment import fala_01
# from asvozes.fala_02.segment import fala_02
# from asvozes.fala_03.segment import fala_03
# from asvozes.seg_s.segment import seg_s
# from asvozes.seg_forte.segment import seg_forte
# from asvozes.seg01.segment import segment01
# from asvozes.seg02.segment import segment02
# from asvozes.seg03.segment import segment03

startTime = time.time()


def main():
    print(
        '\033[92m',
        "Composing Texto 01",
        "Time:",
        round(time.time() - startTime),
        "seconds\033[0;0m")
    # texto_01()

    print(
        '\033[92m',
        "Composing Esparso",
        "Time:",
        round(time.time() - startTime),
        "seconds\033[0;0m")
    # texto_esparso()

    print(
        '\033[92m',
        "Composing Falas",
        "Time:",
        round(time.time() - startTime),
        "seconds\033[0;0m")
    # fala_01()
    # fala_02()
    # fala_03()

    print(
        '\033[92m',
        "Composing S",
        "Time:",
        round(time.time() - startTime),
        "seconds\033[0;0m")
    # seg_s()

    print(
        '\033[92m',
        "Composing Forte",
        "Time:",
        round(time.time() - startTime),
        "seconds\033[0;0m")
    # seg_forte()
    os.chdir(os.path.dirname(__file__))
    # os.system("lilypond --help")
    os.system("lilypond asvozes_score.ly")
    # os.system("lilypond segments/asvozes_vc.ly")


if __name__ == '__main__':
    main()
    # fl()
    # pass
