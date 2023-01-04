\version "2.23.6"
\language "english"
#(set-default-paper-size "a2")
\markup {\vspace #8 \bold \fontsize #2 {Flauta:}} 
\markup
\left-column {
\fontsize #-1 \sans \line { "A:" }
\vspace #0.5
\column {
\overlay {
\translate #'(1.0 . 1)
\sans \fontsize #-3 \center-align \fraction 0 1
\translate #'(33.14285714285714 . 1)
\sans \fontsize #-3 \center-align \fraction 3 4
}
\pad-to-box #'(0 . 31.14285714285714) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
1 0.5 moveto
33.14285714285714 0.5 lineto
stroke
1 1.25 moveto
1 -0.25 lineto
stroke
33.14285714285714 1.25 moveto
33.14285714285714 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
1 2.5 moveto
1 1 lineto
stroke
33.14285714285714 2.5 moveto
33.14285714285714 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "B:" }
\vspace #0.5
\column {
\overlay {
\translate #'(33.14285714285714 . 1)
\sans \fontsize #-3 \center-align \fraction 3 4
\translate #'(43.857142857142854 . 1)
\sans \fontsize #-3 \center-align \fraction 1 1
}
\pad-to-box #'(0 . 41.857142857142854) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
33.14285714285714 0.5 moveto
43.857142857142854 0.5 lineto
stroke
33.14285714285714 1.25 moveto
33.14285714285714 -0.25 lineto
stroke
43.857142857142854 1.25 moveto
43.857142857142854 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
33.14285714285714 2.5 moveto
33.14285714285714 1 lineto
stroke
43.857142857142854 2.5 moveto
43.857142857142854 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "C:" }
\vspace #0.5
\column {
\overlay {
\translate #'(43.857142857142854 . 1)
\sans \fontsize #-3 \center-align \fraction 1 1
\translate #'(65.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 3 2
}
\pad-to-box #'(0 . 63.28571428571428) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
43.857142857142854 0.5 moveto
65.28571428571428 0.5 lineto
stroke
43.857142857142854 1.25 moveto
43.857142857142854 -0.25 lineto
stroke
65.28571428571428 1.25 moveto
65.28571428571428 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
43.857142857142854 2.5 moveto
43.857142857142854 1 lineto
stroke
65.28571428571428 2.5 moveto
65.28571428571428 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "D:" }
\vspace #0.5
\column {
\overlay {
\translate #'(65.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 3 2
\translate #'(97.42857142857142 . 1)
\sans \fontsize #-3 \center-align \fraction 9 4
\translate #'(129.57142857142856 . 1)
\sans \fontsize #-3 \center-align \fraction 3 1
\translate #'(151.0 . 1)
\sans \fontsize #-3 \center-align \fraction 7 2
}
\pad-to-box #'(0 . 149.0) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
65.28571428571428 0.5 moveto
97.42857142857142 0.5 lineto
stroke
65.28571428571428 1.25 moveto
65.28571428571428 -0.25 lineto
stroke
97.42857142857142 1.25 moveto
97.42857142857142 -0.25 lineto
stroke
97.42857142857142 0.5 moveto
129.57142857142856 0.5 lineto
stroke
97.42857142857142 1.25 moveto
97.42857142857142 -0.25 lineto
stroke
129.57142857142856 1.25 moveto
129.57142857142856 -0.25 lineto
stroke
129.57142857142856 0.5 moveto
151 0.5 lineto
stroke
129.57142857142856 1.25 moveto
129.57142857142856 -0.25 lineto
stroke
151 1.25 moveto
151 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
65.28571428571428 2.5 moveto
65.28571428571428 1 lineto
stroke
97.42857142857142 2.5 moveto
97.42857142857142 1 lineto
stroke
129.57142857142856 2.5 moveto
129.57142857142856 1 lineto
stroke
151 2.5 moveto
151 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
}
\markup {\vspace #8  \bold \fontsize #2 {Sax:}} 
\markup
\left-column {
\fontsize #-1 \sans \line { "A:" }
\vspace #0.5
\column {
\overlay {
\translate #'(33.14285714285714 . 1)
\sans \fontsize #-3 \center-align \fraction 3 4
\translate #'(65.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 3 2
}
\pad-to-box #'(0 . 63.28571428571428) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
33.14285714285714 0.5 moveto
65.28571428571428 0.5 lineto
stroke
33.14285714285714 1.25 moveto
33.14285714285714 -0.25 lineto
stroke
65.28571428571428 1.25 moveto
65.28571428571428 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
33.14285714285714 2.5 moveto
33.14285714285714 1 lineto
stroke
65.28571428571428 2.5 moveto
65.28571428571428 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "B:" }
\vspace #0.5
\column {
\overlay {
\translate #'(65.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 3 2
\translate #'(76.0 . 1)
\sans \fontsize #-3 \center-align \fraction 7 4
}
\pad-to-box #'(0 . 74.0) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
65.28571428571428 0.5 moveto
76 0.5 lineto
stroke
65.28571428571428 1.25 moveto
65.28571428571428 -0.25 lineto
stroke
76 1.25 moveto
76 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
65.28571428571428 2.5 moveto
65.28571428571428 1 lineto
stroke
76 2.5 moveto
76 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "C:" }
\vspace #0.5
\column {
\overlay {
\translate #'(76.0 . 1)
\sans \fontsize #-3 \center-align \fraction 7 4
\translate #'(97.42857142857142 . 1)
\sans \fontsize #-3 \center-align \fraction 9 4
}
\pad-to-box #'(0 . 95.42857142857142) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
76 0.5 moveto
97.42857142857142 0.5 lineto
stroke
76 1.25 moveto
76 -0.25 lineto
stroke
97.42857142857142 1.25 moveto
97.42857142857142 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
76 2.5 moveto
76 1 lineto
stroke
97.42857142857142 2.5 moveto
97.42857142857142 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "D:" }
\vspace #0.5
\column {
\overlay {
\translate #'(1.0 . 1)
\sans \fontsize #-3 \center-align \fraction 0 1
\translate #'(33.14285714285714 . 1)
\sans \fontsize #-3 \center-align \fraction 3 4
\translate #'(97.42857142857142 . 1)
\sans \fontsize #-3 \center-align \fraction 9 4
\translate #'(129.57142857142856 . 1)
\sans \fontsize #-3 \center-align \fraction 3 1
\translate #'(151.0 . 1)
\sans \fontsize #-3 \center-align \fraction 7 2
}
\pad-to-box #'(0 . 149.0) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
1 0.5 moveto
33.14285714285714 0.5 lineto
stroke
1 1.25 moveto
1 -0.25 lineto
stroke
33.14285714285714 1.25 moveto
33.14285714285714 -0.25 lineto
stroke
97.42857142857142 0.5 moveto
129.57142857142856 0.5 lineto
stroke
97.42857142857142 1.25 moveto
97.42857142857142 -0.25 lineto
stroke
129.57142857142856 1.25 moveto
129.57142857142856 -0.25 lineto
stroke
129.57142857142856 0.5 moveto
151 0.5 lineto
stroke
129.57142857142856 1.25 moveto
129.57142857142856 -0.25 lineto
stroke
151 1.25 moveto
151 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
1 2.5 moveto
1 1 lineto
stroke
33.14285714285714 2.5 moveto
33.14285714285714 1 lineto
stroke
97.42857142857142 2.5 moveto
97.42857142857142 1 lineto
stroke
129.57142857142856 2.5 moveto
129.57142857142856 1 lineto
stroke
151 2.5 moveto
151 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
}
\markup {\vspace #8  \bold \fontsize #2 {Violão:}} 
\markup
\left-column {
\fontsize #-1 \sans \line { "A:" }
\vspace #0.5
\column {
\overlay {
\translate #'(65.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 3 2
\translate #'(97.42857142857142 . 1)
\sans \fontsize #-3 \center-align \fraction 9 4
}
\pad-to-box #'(0 . 95.42857142857142) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
65.28571428571428 0.5 moveto
97.42857142857142 0.5 lineto
stroke
65.28571428571428 1.25 moveto
65.28571428571428 -0.25 lineto
stroke
97.42857142857142 1.25 moveto
97.42857142857142 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
65.28571428571428 2.5 moveto
65.28571428571428 1 lineto
stroke
97.42857142857142 2.5 moveto
97.42857142857142 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "B:" }
\vspace #0.5
\column {
\overlay {
\translate #'(97.42857142857142 . 1)
\sans \fontsize #-3 \center-align \fraction 9 4
\translate #'(108.14285714285714 . 1)
\sans \fontsize #-3 \center-align \fraction 5 2
}
\pad-to-box #'(0 . 106.14285714285714) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
97.42857142857142 0.5 moveto
108.14285714285714 0.5 lineto
stroke
97.42857142857142 1.25 moveto
97.42857142857142 -0.25 lineto
stroke
108.14285714285714 1.25 moveto
108.14285714285714 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
97.42857142857142 2.5 moveto
97.42857142857142 1 lineto
stroke
108.14285714285714 2.5 moveto
108.14285714285714 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "C:" }
\vspace #0.5
\column {
\overlay {
\translate #'(108.14285714285714 . 1)
\sans \fontsize #-3 \center-align \fraction 5 2
\translate #'(129.57142857142856 . 1)
\sans \fontsize #-3 \center-align \fraction 3 1
}
\pad-to-box #'(0 . 127.57142857142856) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
108.14285714285714 0.5 moveto
129.57142857142856 0.5 lineto
stroke
108.14285714285714 1.25 moveto
108.14285714285714 -0.25 lineto
stroke
129.57142857142856 1.25 moveto
129.57142857142856 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
108.14285714285714 2.5 moveto
108.14285714285714 1 lineto
stroke
129.57142857142856 2.5 moveto
129.57142857142856 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "D:" }
\vspace #0.5
\column {
\overlay {
\translate #'(1.0 . 1)
\sans \fontsize #-3 \center-align \fraction 0 1
\translate #'(33.14285714285714 . 1)
\sans \fontsize #-3 \center-align \fraction 3 4
\translate #'(65.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 3 2
\translate #'(129.57142857142856 . 1)
\sans \fontsize #-3 \center-align \fraction 3 1
\translate #'(151.0 . 1)
\sans \fontsize #-3 \center-align \fraction 7 2
}
\pad-to-box #'(0 . 149.0) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
1 0.5 moveto
33.14285714285714 0.5 lineto
stroke
1 1.25 moveto
1 -0.25 lineto
stroke
33.14285714285714 1.25 moveto
33.14285714285714 -0.25 lineto
stroke
33.14285714285714 0.5 moveto
65.28571428571428 0.5 lineto
stroke
33.14285714285714 1.25 moveto
33.14285714285714 -0.25 lineto
stroke
65.28571428571428 1.25 moveto
65.28571428571428 -0.25 lineto
stroke
129.57142857142856 0.5 moveto
151 0.5 lineto
stroke
129.57142857142856 1.25 moveto
129.57142857142856 -0.25 lineto
stroke
151 1.25 moveto
151 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
1 2.5 moveto
1 1 lineto
stroke
33.14285714285714 2.5 moveto
33.14285714285714 1 lineto
stroke
65.28571428571428 2.5 moveto
65.28571428571428 1 lineto
stroke
129.57142857142856 2.5 moveto
129.57142857142856 1 lineto
stroke
151 2.5 moveto
151 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
}
\markup {\vspace #8  \bold \fontsize #2 {Cello:}} 
\markup
\left-column {
\fontsize #-1 \sans \line { "A:" }
\vspace #0.5
\column {
\overlay {
\translate #'(97.42857142857142 . 1)
\sans \fontsize #-3 \center-align \fraction 9 4
\translate #'(129.57142857142856 . 1)
\sans \fontsize #-3 \center-align \fraction 3 1
}
\pad-to-box #'(0 . 127.57142857142856) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
97.42857142857142 0.5 moveto
129.57142857142856 0.5 lineto
stroke
97.42857142857142 1.25 moveto
97.42857142857142 -0.25 lineto
stroke
129.57142857142856 1.25 moveto
129.57142857142856 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
97.42857142857142 2.5 moveto
97.42857142857142 1 lineto
stroke
129.57142857142856 2.5 moveto
129.57142857142856 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "B:" }
\vspace #0.5
\column {
\overlay {
\translate #'(129.57142857142856 . 1)
\sans \fontsize #-3 \center-align \fraction 3 1
\translate #'(140.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 13 4
}
\pad-to-box #'(0 . 138.28571428571428) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
129.57142857142856 0.5 moveto
140.28571428571428 0.5 lineto
stroke
129.57142857142856 1.25 moveto
129.57142857142856 -0.25 lineto
stroke
140.28571428571428 1.25 moveto
140.28571428571428 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
129.57142857142856 2.5 moveto
129.57142857142856 1 lineto
stroke
140.28571428571428 2.5 moveto
140.28571428571428 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "C:" }
\vspace #0.5
\column {
\overlay {
\translate #'(140.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 13 4
\translate #'(151.0 . 1)
\sans \fontsize #-3 \center-align \fraction 7 2
}
\pad-to-box #'(0 . 149.0) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
140.28571428571428 0.5 moveto
151 0.5 lineto
stroke
140.28571428571428 1.25 moveto
140.28571428571428 -0.25 lineto
stroke
151 1.25 moveto
151 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
140.28571428571428 2.5 moveto
140.28571428571428 1 lineto
stroke
151 2.5 moveto
151 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
\vspace #0.5
\fontsize #-1 \sans \line { "D:" }
\vspace #0.5
\column {
\overlay {
\translate #'(1.0 . 1)
\sans \fontsize #-3 \center-align \fraction 0 1
\translate #'(33.14285714285714 . 1)
\sans \fontsize #-3 \center-align \fraction 3 4
\translate #'(65.28571428571428 . 1)
\sans \fontsize #-3 \center-align \fraction 3 2
\translate #'(97.42857142857142 . 1)
\sans \fontsize #-3 \center-align \fraction 9 4
}
\pad-to-box #'(0 . 95.42857142857142) #'(0 . 2.5)
\postscript #"
0.2 setlinewidth
1 0.5 moveto
33.14285714285714 0.5 lineto
stroke
1 1.25 moveto
1 -0.25 lineto
stroke
33.14285714285714 1.25 moveto
33.14285714285714 -0.25 lineto
stroke
33.14285714285714 0.5 moveto
65.28571428571428 0.5 lineto
stroke
33.14285714285714 1.25 moveto
33.14285714285714 -0.25 lineto
stroke
65.28571428571428 1.25 moveto
65.28571428571428 -0.25 lineto
stroke
65.28571428571428 0.5 moveto
97.42857142857142 0.5 lineto
stroke
65.28571428571428 1.25 moveto
65.28571428571428 -0.25 lineto
stroke
97.42857142857142 1.25 moveto
97.42857142857142 -0.25 lineto
stroke
0.1 setlinewidth
[ 0.1 0.2 ] 0 setdash
1 2.5 moveto
1 1 lineto
stroke
33.14285714285714 2.5 moveto
33.14285714285714 1 lineto
stroke
65.28571428571428 2.5 moveto
65.28571428571428 1 lineto
stroke
97.42857142857142 2.5 moveto
97.42857142857142 1 lineto
stroke
0 0 moveto
0.99 setgray
0 0.01 rlineto
stroke"
}
}
