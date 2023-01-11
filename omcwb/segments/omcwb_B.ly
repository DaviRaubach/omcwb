\version "2.23.6"
\language "english"
% OPEN_BRACKETS:
\context Score = "Score"
<<
    % OPEN_BRACKETS:
    \context TimeSignatureContext = "Global_Context"
    {
        % OPEN_BRACKETS:
        {
            % OPEN_BRACKETS:
            {
                s1
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    }
    % OPEN_BRACKETS:
    \context StaffGroup = "group"
    <<
        % OPEN_BRACKETS:
        \context Staff = "Fl_Staff"
        \with
        {
            instrumentName = "Piccolo"
            midiInstrument = "Piccolo"
        }
        <<
            % OPEN_BRACKETS:
            \context Voice = "Fl_Voice_1"
            {
                % OPEN_BRACKETS:
                {
                % OPENING:
                    % GROB_OVERRIDES:
                    \override NoteHead.no-ledgers = ##t
                    \override NoteHead.transparent = ##t
                    % OPEN_BRACKETS:
                    {
                    % OPENING:
                        % COMMANDS:
                         \omit Voice.Flag
                         \omit StaffGroup.SpanBar
                         \hide Voice.Beam
                         \omit Voice.TupletNumber
                         \omit Voice.TupletBracket
                         \omit Voice.Dots
                        \fancy-gliss #'((0 0) (1 1) (2 0) (3 5) (4 0) (5 4) (6 1) (7 3) (8 2) (9 0) (10 1) (11 4) (12 3) (13 0) )
                        g''4
                        % AFTER:
                        % MARKUP:
                        ^ \markup W.T.
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                         \omit Staff.BarLine
                        s4
                        s4
                        g''4
                        % AFTER:
                        % COMMANDS:
                         \undo \omit Staff.BarLine
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % COMMANDS:
                     \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                     \revert Voice.Beam.stencil
                     \revert Voice.Beam.text
                     \undo \omit Voice.Flag
                     \undo \omit Staff.SpanBar
                     \undo \hide Voice.Beam
                     \undo \omit Voice.TupletNumber
                     \undo \omit Voice.TupletBracket
                     \undo \omit Voice.Dots
                    % CLOSING:
                    % GROB_REVERTS:
                    \revert NoteHead.no-ledgers
                    \revert NoteHead.transparent
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Voice = "Fl_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {
                        % OPEN_BRACKETS:
                        \times 4/5
                        {
                            % OPEN_BRACKETS:
                            \times 2/3
                            {
                                % BEFORE:
                                % COMMANDS:
                                \tempo 4=54
                                % OPENING:
                                % COMMANDS:
                                 \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn \shiftOn
                                 \override Voice.NoteHead.stencil = ##f
                                 \override Voice.Rest.stencil = ##f
                                 \override Voice.Stem.stencil = ##f
                                 \override Voice.Flag.stencil = ##f
                                 \omit TupletNumber
                                 \omit Voice.Dots
                                 \override Voice.TupletBracket.stencil = ##f
                                 \override Voice.Beam.stencil = ##f
                                 \omit Voice.Accidental
                                 \override LyricText.self-alignment-X = #LEFT
                                \time 4/4
                                c'8
                                c'8
                                c'8
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \times 2/3
                            {
                                c'8
                                c'8
                                c'8
                            % CLOSE_BRACKETS:
                            }
                            c'8
                            c'8
                            % OPEN_BRACKETS:
                            \times 2/3
                            {
                                c'8
                                c'4
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \times 2/3
                            {
                                c'8
                                r8
                                r8
                                % AFTER:
                                % COMMANDS:
                                 \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                                 \revert Voice.NoteHead.stencil
                                 \revert Voice.Rest.stencil
                                 \revert Voice.Stem.stencil
                                 \revert Voice.Flag.stencil
                                 \revert Voice.Dots.stencil
                                 \undo \omit Voice.TupletNumber
                                 \undo \omit Voice.Dots
                                 \revert Voice.TupletBracket.stencil
                                 \revert Voice.Beam.stencil
                                 \undo \omit Voice.Accidental
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Fl_Voice_2_Lyrics"
            {
            % OPENING:
                % COMMANDS:
                \lyricsto "Fl_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER
                    Pa -- la -- vra a -- ti -- ra -- da con -- tra⏑a á -- gua
                    }}
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Voice = "Fl_Voice_3"
            {
                % OPEN_BRACKETS:
                {
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
        % OPEN_BRACKETS:
        \context Staff = "Sx_Staff"
        \with
        {
            instrumentName = "Sax Soprano"
            midiInstrument = "Alto Sax"
        }
        <<
            % OPEN_BRACKETS:
            \context Voice = "Sx_Voice_1"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {
                        s1
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Voice = "Sx_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Sx_Voice_2_Lyrics"
            {
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
        % OPEN_BRACKETS:
        \context StaffGroup = "Vlao"
        \with
        {
            instrumentName = "Violão"
        }
        <<
            % OPEN_BRACKETS:
            \context Staff = "Vlao_Staff_1"
            \with
            {
                instrumentName = "m.d."
                midiInstrument = "acoustic guitar (nylon)"
            }
            <<
                % OPEN_BRACKETS:
                \context Voice = "Vlao_Voice_1"
                {
                    % OPEN_BRACKETS:
                    {
                        % OPEN_BRACKETS:
                        {
                        % OPENING:
                            % COMMANDS:
                             \omit Voice.Flag
                             \omit StaffGroup.SpanBar
                             \hide Voice.Beam
                             \omit Voice.TupletNumber
                             \omit Voice.TupletBracket
                             \omit Voice.Dots
                            % OPEN_BRACKETS:
                            \times 4/5
                            {
                                % OPEN_BRACKETS:
                                \times 2/3
                                {
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble_8"
                                    s8
                                    % AFTER:
                                    % COMMANDS:
                                     \omit Staff.BarLine
                                    s8
                                    s8
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \times 2/3
                                {
                                    s8
                                    s8
                                    s8
                                % CLOSE_BRACKETS:
                                }
                                s8
                                % OPENING:
                                % COMMANDS:
                                \once \hide NoteHead
                                d'8
                                % OPEN_BRACKETS:
                                \times 2/3
                                {
                                    % OPENING:
                                    % COMMANDS:
                                    \once \hide NoteHead
                                    e8
                                    % OPENING:
                                    % COMMANDS:
                                    \once \hide NoteHead
                                    a4
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \times 2/3
                                {
                                    % OPENING:
                                    % COMMANDS:
                                    \once \hide NoteHead
                                    g'8
                                    s8
                                    s8
                                    % AFTER:
                                    % COMMANDS:
                                     \undo \omit Staff.BarLine
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % COMMANDS:
                         \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                         \revert Voice.Beam.stencil
                         \revert Voice.Beam.text
                         \undo \omit Voice.Flag
                         \undo \omit Staff.SpanBar
                         \undo \hide Voice.Beam
                         \undo \omit Voice.TupletNumber
                         \undo \omit Voice.TupletBracket
                         \undo \omit Voice.Dots
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Voice = "Vlao_Voice_2"
                {
                    % OPEN_BRACKETS:
                    {
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \times 4/5
                            {
                                % OPEN_BRACKETS:
                                \times 2/3
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \tempo 4=54
                                    % OPENING:
                                    % COMMANDS:
                                     \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn \shiftOn
                                     \override Voice.NoteHead.stencil = ##f
                                     \override Voice.Rest.stencil = ##f
                                     \override Voice.Stem.stencil = ##f
                                     \override Voice.Flag.stencil = ##f
                                     \omit TupletNumber
                                     \omit Voice.Dots
                                     \override Voice.TupletBracket.stencil = ##f
                                     \override Voice.Beam.stencil = ##f
                                     \omit Voice.Accidental
                                     \override LyricText.self-alignment-X = #LEFT
                                    \time 4/4
                                    c'8
                                    c'8
                                    c'8
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \times 2/3
                                {
                                    c'8
                                    c'8
                                    c'8
                                % CLOSE_BRACKETS:
                                }
                                c'8
                                c'8
                                % OPEN_BRACKETS:
                                \times 2/3
                                {
                                    c'8
                                    c'4
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \times 2/3
                                {
                                    c'8
                                    r8
                                    r8
                                    % AFTER:
                                    % COMMANDS:
                                     \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                                     \revert Voice.NoteHead.stencil
                                     \revert Voice.Rest.stencil
                                     \revert Voice.Stem.stencil
                                     \revert Voice.Flag.stencil
                                     \revert Voice.Dots.stencil
                                     \undo \omit Voice.TupletNumber
                                     \undo \omit Voice.Dots
                                     \revert Voice.TupletBracket.stencil
                                     \revert Voice.Beam.stencil
                                     \undo \omit Voice.Accidental
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Lyrics = "Vlao_Voice_2_Lyrics"
                {
                % OPENING:
                    % COMMANDS:
                    \lyricsto "Vlao_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER
                        Pa -- la -- vra a -- ti -- ra -- da con -- tra⏑a á -- gua
                        }}
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context Staff = "Vlao_Staff_2"
            \with
            {
                instrumentName = "m.e."
            }
            <<
                % OPEN_BRACKETS:
                \context Voice = "Vlao_Voice_3"
                {
                    % OPEN_BRACKETS:
                    {
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override NoteHead.style = #'cross
                            % OPENING:
                            % COMMANDS:


                                        \footnote "*" #'(0.5 . 2) \markup { "* Apenas ruído de corda com a mão esquerda: pressionar em silêncio previamente, soltar e mudar a posição com o dedo sobre as cordas." } Stem
                            \clef "treble_8"
                            <
                                \parenthesize
                                e
                                \parenthesize
                                b
                                \parenthesize
                                ds'
                                \parenthesize
                                as'
                            >4
                            % AFTER:
                            % ARTICULATIONS:
                            \f
                            % SPANNER_STARTS:
                            \>
                            \glissando
                            s2
                            % OPENING:
                            % COMMANDS:
                            \once \hide NoteHead
                            <ds' as' c'' g''>4
                            % AFTER:
                            % ARTICULATIONS:
                            \p
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        >>
        % OPEN_BRACKETS:
        \context Staff = "Vc_Staff"
        \with
        {
            instrumentName = "Violoncelo"
            midiInstrument = "Cello"
        }
        <<
            % OPEN_BRACKETS:
            \context Voice = "Vc_Voice_1"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {
                    % OPENING:
                        % COMMANDS:
                         \omit Voice.Flag
                         \omit StaffGroup.SpanBar
                         \hide Voice.Beam
                         \omit Voice.TupletNumber
                         \omit Voice.TupletBracket
                         \omit Voice.Dots
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        \footnote "*" #'(0.5 . -1) \markup {italic " * Abafando com a mão direita, sem harmônicos."}
                        \parenthesize
                        a1
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % MARKUP:
                        ^ \markup "abaf."
                        % COMMANDS:
                         \omit Staff.BarLine
                         \undo \omit Staff.BarLine
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % COMMANDS:
                     \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                     \revert Voice.Beam.stencil
                     \revert Voice.Beam.text
                     \undo \omit Voice.Flag
                     \undo \omit Staff.SpanBar
                     \undo \hide Voice.Beam
                     \undo \omit Voice.TupletNumber
                     \undo \omit Voice.TupletBracket
                     \undo \omit Voice.Dots
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Voice = "Vc_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Vc_Voice_2_Lyrics"
            {
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
% CLOSE_BRACKETS:
>>
