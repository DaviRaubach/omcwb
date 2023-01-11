import muda


def fl_lyr(mat: muda.Material):
    mat.write_lyrics(
        r'''
        Pa -- la -- vra a -- ti -- ra -- da con -- tra⏑a á -- gua
        '''
    )


fl_lyr.apply_to = ["Fl_Voice_2_Lyrics", "Vlao_Voice_2_Lyrics"]
