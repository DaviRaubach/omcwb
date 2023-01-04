\version "2.23.6"
\language "english"
% OPEN_BRACKETS:
\context Score = "Score"
\with
{
    markFormatter = #format-mark-box-alphabet
}
<<
    % OPEN_BRACKETS:
    \context TimeSignatureContext = "Global_Context"
    {
        % OPEN_BRACKETS:
        {
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
                    % OPEN_BRACKETS:
                    {   % A_0
                    % OPENING:
                        % COMMANDS:
                         \omit Voice.Flag
                         \omit StaffGroup.SpanBar
                         \hide Voice.Beam
                         \omit Voice.TupletNumber
                         \omit Voice.TupletBracket
                         \omit Voice.Dots
                        s16.
                        c''''4.
                        % AFTER:
                        % ARTICULATIONS:
                        \laissezVibrer
                        c''''16.
                        s8.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c''''8
                            c''''8
                            % BEFORE:
                            % OPEN_BRACKETS:
                            \grace {
                                % OPENING:
                                % COMMANDS:
                                \slash \undo \hide Voice.Beam
                                c''''8
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                cs''''8
                                c''''8
                                % AFTER:
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                 \hide Voice.Beam
                            % CLOSE_BRACKETS:
                            }
                            c''''8
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            s4
                            c''''4
                            % AFTER:
                            % ARTICULATIONS:
                            \laissezVibrer
                            % COMMANDS:
                            \breathe
                            s4
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % D_1
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_2
                        s2
                    % CLOSE_BRACKETS:
                    }   % D_2
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
            \context Voice = "Fl_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {   % A_0
                        % OPENING:
                        % COMMANDS:
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
                        \time 3/4
                        c'16.
                        c'16.
                        c'16.
                        r8.
                        c'16.
                        c'16.
                        r16.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c'8
                            c'8
                            c'8
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % BEFORE:
                    % COMMANDS:
                    \repeat volta 2
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c'16
                            % AFTER:
                            % MARKUP:
                            ^ \markup \column {"Repetir até o sinal da/o violoncelista" "leitura mais lenta a cada repetição"}
                            c'16
                            c'16
                            c'16
                            c'8
                            c'16
                            c'16
                            c'16
                            c'8
                            c'16
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % D_1
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_2
                        % OPENING:
                        % COMMANDS:
                        \time 2/4
                        r2
                        % AFTER:
                        % COMMANDS:
                         \revert Voice.NoteHead.stencil
                         \revert Voice.Rest.stencil
                         \revert Voice.Stem.stencil
                         \revert Voice.Flag.stencil
                         \revert Voice.Dot.stencil
                         \undo \omit Voice.TupletNumber
                         \undo \omit Voice.Dots
                         \revert Voice.TupletBracket.stencil
                         \revert Voice.Beam.stencil
                         \undo \omit Voice.Accidental
                    % CLOSE_BRACKETS:
                    }   % D_2
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
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
                    es -- pe -- ro tu -- as pa -- la -- vras
                    com a gra -- vi -- dez do meu si -- lên -- cio
                    }}
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
                    {   % D_0
                    % OPENING:
                        % COMMANDS:
                         \omit Voice.Flag
                         \omit StaffGroup.SpanBar
                         \hide Voice.Beam
                         \omit Voice.TupletNumber
                         \omit Voice.TupletBracket
                         \omit Voice.Dots
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % A_0
                        s16.
                        cs'''4.
                        % AFTER:
                        % ARTICULATIONS:
                        \laissezVibrer
                        ef''16.
                        s8.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            e'''8
                            d'''8
                            % BEFORE:
                            % OPEN_BRACKETS:
                            \grace {
                                % OPENING:
                                % COMMANDS:
                                \slash \undo \hide Voice.Beam
                                ef''8
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                fs''8
                                ef''8
                                % AFTER:
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                 \hide Voice.Beam
                            % CLOSE_BRACKETS:
                            }
                            cs'''8
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            s4
                            ef''4
                            % AFTER:
                            % ARTICULATIONS:
                            \laissezVibrer
                            % COMMANDS:
                            \breathe
                            s4
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_1
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_2
                        s2
                    % CLOSE_BRACKETS:
                    }   % D_2
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
            \context Voice = "Sx_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {   % D_0
                        % OPENING:
                        % COMMANDS:
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
                        \time 3/4
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % A_0
                        c'16.
                        c'16.
                        c'16.
                        r8.
                        c'16.
                        c'16.
                        r16.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c'8
                            c'8
                            c'8
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % BEFORE:
                    % COMMANDS:
                    \repeat volta 2
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c'16
                            % AFTER:
                            % MARKUP:
                            ^ \markup \column {"Repetir até o sinal da/o violoncelista" "leitura mais lenta a cada repetição"}
                            c'16
                            c'16
                            c'16
                            c'8
                            c'16
                            c'16
                            c'16
                            c'8
                            c'16
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_1
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_2
                        % OPENING:
                        % COMMANDS:
                        \time 2/4
                        r2
                        % AFTER:
                        % COMMANDS:
                         \revert Voice.NoteHead.stencil
                         \revert Voice.Rest.stencil
                         \revert Voice.Stem.stencil
                         \revert Voice.Flag.stencil
                         \revert Voice.Dot.stencil
                         \undo \omit Voice.TupletNumber
                         \undo \omit Voice.Dots
                         \revert Voice.TupletBracket.stencil
                         \revert Voice.Beam.stencil
                         \undo \omit Voice.Accidental
                    % CLOSE_BRACKETS:
                    }   % D_2
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Sx_Voice_2_Lyrics"
            {
            % OPENING:
                % COMMANDS:
                \lyricsto "Sx_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER
                    es -- pe -- ro tu -- as pa -- la -- vras
                    com a gra -- vi -- dez do meu si -- lên -- cio
                    }}
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
        % OPEN_BRACKETS:
        \context Staff = "Vlao_Staff"
        \with
        {
            instrumentName = "Violão"
            midiInstrument = "Acoustic Guitar"
        }
        <<
            % OPEN_BRACKETS:
            \context Voice = "Vlao_Voice_1"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {   % D_0
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
                        \clef "treble_8"
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % D_1
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % A_0
                        s16.
                        c'4.
                        % AFTER:
                        % ARTICULATIONS:
                        \laissezVibrer
                        c'16.
                        s8.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c'8
                            c'8
                            % BEFORE:
                            % OPEN_BRACKETS:
                            \grace {
                                % OPENING:
                                % COMMANDS:
                                \slash \undo \hide Voice.Beam
                                c'8
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                c'8
                                c'8
                                % AFTER:
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                 \hide Voice.Beam
                            % CLOSE_BRACKETS:
                            }
                            c'8
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            s4
                            c'4
                            % AFTER:
                            % ARTICULATIONS:
                            \laissezVibrer
                            % COMMANDS:
                            \breathe
                            s4
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_2
                        s2
                    % CLOSE_BRACKETS:
                    }   % D_2
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
                    {   % D_0
                        % OPENING:
                        % COMMANDS:
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
                        \time 3/4
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % D_1
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % A_0
                        c'16.
                        c'16.
                        c'16.
                        r8.
                        c'16.
                        c'16.
                        r16.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c'8
                            c'8
                            c'8
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % BEFORE:
                    % COMMANDS:
                    \repeat volta 2
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c'16
                            % AFTER:
                            % MARKUP:
                            ^ \markup \column {"Repetir até o sinal da/o violoncelista" "leitura mais lenta a cada repetição"}
                            c'16
                            c'16
                            c'16
                            c'8
                            c'16
                            c'16
                            c'16
                            c'8
                            c'16
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_2
                        % OPENING:
                        % COMMANDS:
                        \time 2/4
                        r2
                        % AFTER:
                        % COMMANDS:
                         \revert Voice.NoteHead.stencil
                         \revert Voice.Rest.stencil
                         \revert Voice.Stem.stencil
                         \revert Voice.Flag.stencil
                         \revert Voice.Dot.stencil
                         \undo \omit Voice.TupletNumber
                         \undo \omit Voice.Dots
                         \revert Voice.TupletBracket.stencil
                         \revert Voice.Beam.stencil
                         \undo \omit Voice.Accidental
                    % CLOSE_BRACKETS:
                    }   % D_2
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
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
                    es -- pe -- ro tu -- as pa -- la -- vras
                    com a gra -- vi -- dez do meu si -- lên -- cio
                    }}
            % CLOSE_BRACKETS:
            }
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
                    {   % D_0
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
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % D_1
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_2
                        s2.
                    % CLOSE_BRACKETS:
                    }   % D_2
                    % OPEN_BRACKETS:
                    {   % A_0
                        s16.
                        a4.
                        % AFTER:
                        % ARTICULATIONS:
                        \laissezVibrer
                        af''16.
                        s8.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            a8
                            af''8
                            % BEFORE:
                            % OPEN_BRACKETS:
                            \grace {
                                % OPENING:
                                % COMMANDS:
                                \slash \undo \hide Voice.Beam
                                a8
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                b8
                                a8
                                % AFTER:
                                % STOP_BEAM:
                                ]
                                % COMMANDS:
                                 \hide Voice.Beam
                            % CLOSE_BRACKETS:
                            }
                            b8
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            s8
                            a8
                            % AFTER:
                            % ARTICULATIONS:
                            \laissezVibrer
                            % COMMANDS:
                            \breathe
                            s8
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % C_0
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
                    % OPEN_BRACKETS:
                    {   % D_0
                        % OPENING:
                        % COMMANDS:
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
                        \time 3/4
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % D_1
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_2
                        r2.
                    % CLOSE_BRACKETS:
                    }   % D_2
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % A_0
                        c'16.
                        c'16.
                        c'16.
                        r8.
                        c'16.
                        c'16.
                        r16.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            % OPENING:
                            % COMMANDS:
                            \time 2/4
                            c'8
                            c'8
                            c'8
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % BEFORE:
                    % COMMANDS:
                    \repeat volta 2
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            c'32
                            c'32
                            c'32
                            c'32
                            c'16
                            c'32
                            c'32
                            c'32
                            c'16
                            c'32
                            % AFTER:
                            % MARKUP:
                            ^ \markup \column {"Dar sinal para o fim da seção"}
                            % COMMANDS:
                             \revert Voice.NoteHead.stencil
                             \revert Voice.Rest.stencil
                             \revert Voice.Stem.stencil
                             \revert Voice.Flag.stencil
                             \revert Voice.Dot.stencil
                             \undo \omit Voice.TupletNumber
                             \undo \omit Voice.Dots
                             \revert Voice.TupletBracket.stencil
                             \revert Voice.Beam.stencil
                             \undo \omit Voice.Accidental
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }   % C_0
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Vc_Voice_2_Lyrics"
            {
            % OPENING:
                % COMMANDS:
                \lyricsto "Vc_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER
                    es -- pe -- ro tu -- as pa -- la -- vras
                    com a gra -- vi -- dez do meu si -- lên -- cio
                    }}
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
% CLOSE_BRACKETS:
>>
