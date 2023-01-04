def scratched(string_lines):
    new_string_lines = r""
    for line in string_lines.splitlines():
        new_string_lines = new_string_lines + (r" \markup \scratched " + line)
    return new_string_lines


fl_lyrics = r"""Pa --
la --
vra
(sal --
ta,
sal --
ta,
vo --
a)
a --
ti --
ra --
da
con --
tra
a‿á --
gua
(le --
ve,
le --
ve,
le --
ve)
Sal --
ta,
sal --
ta,
vo --
a...
pa --
la --
vra
a --
ti --
ra --
da
Pou --
sa
so --
bre‿as
nu --
vens...
Pa --
la --
vra
con --
tra
á --
gua
mer --
gu --
lha
ca --
da
vez
mais
fun --
do...
ca --
da
vez
mais
al --
to...
a
pa --
la --
vra
seduz
a
lín --
gua
e
es -- 
cor --
re,
e
es -- 
cor --
re,
e
es -- 
cor --
re,
e
es -- 
cor --
re,
ca --
da
vez
mais
so --
nha --
da
ca --
da
vez
mais
so --
nha --
da
"""


vc_lyrics = r"""E
es -- 
cor --
re,
e
es -- 
cor --
re,
e
es -- 
cor --
re,
ca --
da
vez
mais
so --
nha --
da
ca --
da
vez
mais
so --
nha --
da
a
pa --
la --
vra
seduz
a
lín --
gua
e
es -- 
cor --
re,
mer --
gu --
lha
ca --
da
vez
mais
fun --
do...
ca --
da
vez
mais
al --
to...
Sal --
ta,
sal --
ta,
vo --
a...
pa --
la --
vra
a --
ti --
ra --
da
Pou --
sa
so --
bre‿as
nu --
vens...
Pa --
la --
vra
con --
tra
á --
gua
Pa --
la --
vra
(sal --
ta,
sal --
ta,
vo --
a)
a --
ti --
ra --
da
con --
tra
a‿á --
gua
(le --
ve,
le --
ve,
le --
ve)
"""

fl_lyrics = scratched(fl_lyrics)
vc_lyrics = scratched(vc_lyrics)
vlao_lyrics = scratched(fl_lyrics)
