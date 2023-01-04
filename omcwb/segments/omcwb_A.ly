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
            % BEFORE:
            % COMMANDS:
            \tempo \markup {Tempo de leitura: \bold {poético}}
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
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
                        b''32
                        g'''16.
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        cs'''32
                        % AFTER:
                        % COMMANDS:
                        \breathe
                        s16.
                        s8
                        b''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        aqs''32
                        cs'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        c'''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        % COMMANDS:
                        \breathe
                        s32
                        b''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        aqs''32
                        c'''16.
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        fs''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        % COMMANDS:
                        \breathe
                        s8
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % A_0
                        s16.
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        cs'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        bqs''32
                        b''16
                        fs''32
                        fs'''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        cs'''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        s32
                        \tweak stencil \minima
                        bqs''32
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        bqs''16.
                        s32
                        cs'''32
                        \tweak stencil \minima
                        b''8
                        s32
                        s32
                        bqs''16
                        fs''32
                        s32
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        g'''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        fs''32
                        cs'''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        ~
                        cs'''32
                        bqs''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        s16
                        b''32
                        \tweak stencil \minima
                        fs''8
                        s32
                        fs'''32
                        \tweak stencil \minima
                        cs'''8.
                        s32
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % C_0
                        e''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        \tweak stencil \minima
                        bqs''16
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % C_0
                        \tweak stencil \minima
                        bqs''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        bqs''32
                        fs'''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        g''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        s32
                        a''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        e''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        \tweak stencil \minima
                        ef'''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % C_0
                        \tweak stencil \minima
                        ef'''32
                        s32
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        e''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        \tweak stencil \minima
                        bqs''8.
                        fs'''16.
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        \tweak stencil \minima
                        g''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        g''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        g''32
                        s32
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % BEFORE:
                    % COMMANDS:
                    \repeat volta 2
                    % OPEN_BRACKETS:
                    {
                        s8.
                        \tweak stencil \minima
                        e''16.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        e''16
                        s32
                        \tweak stencil \minima
                        bqf''32
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        bqf''8
                        s32
                        \tweak stencil \minima
                        e''16.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        e''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        e''16.
                        s32
                        s32
                        \tweak stencil \minima
                        bqf''16.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        bqf''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak stencil \minima
                        bqf''16.
                        s32
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
                        c'32
                        c'16.
                        c'32
                        r32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'16
                        c'32
                        r32
                        c'32
                        c'32
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'16
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'32
                        r16
                        c'16
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'32
                        r16
                        c'32
                        c'16.
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        r32
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                    {   % C_0
                        c'32
                        c'16
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'32
                        c'16
                        c'16
                        r32
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        c'32
                        c'32
                        c'16
                        c'32
                        c'32
                        c'32
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'16
                        c'32
                        r32
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % E_0
                        c'32
                        c'32
                        c'16
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16
                        c'32
                        c'32
                        c'16
                        r16
                        c'32
                        c'32
                        c'16
                        c'16
                        c'32
                        c'32
                        c'16
                        r32
                        % AFTER:
                        % COMMANDS:
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
                    }   % E_0
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Fl_Voice_2_Lyrics"
            {
            % OPENING:
                % COMMANDS:
                \lyricsto "Fl_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER \markup \scratched Pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched (sal -- \markup \scratched ta, \markup \scratched sal -- \markup \scratched ta, \markup \scratched vo -- \markup \scratched a) \markup \scratched a -- \markup \scratched ti -- \markup \scratched ra -- \markup \scratched da \markup \scratched con -- \markup \scratched tra \markup \scratched a‿á -- \markup \scratched gua \markup \scratched (le -- \markup \scratched ve, \markup \scratched le -- \markup \scratched ve, \markup \scratched le -- \markup \scratched ve) \markup \scratched Sal -- \markup \scratched ta, \markup \scratched sal -- \markup \scratched ta, \markup \scratched vo -- \markup \scratched a... \markup \scratched pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched a -- \markup \scratched ti -- \markup \scratched ra -- \markup \scratched da \markup \scratched Pou -- \markup \scratched sa \markup \scratched so -- \markup \scratched bre‿as \markup \scratched nu -- \markup \scratched vens... \markup \scratched Pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched con -- \markup \scratched tra \markup \scratched á -- \markup \scratched gua \markup \scratched mer -- \markup \scratched gu -- \markup \scratched lha \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched fun -- \markup \scratched do... \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched al -- \markup \scratched to... \markup \scratched a \markup \scratched pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched seduz \markup \scratched a \markup \scratched lín -- \markup \scratched gua \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched so -- \markup \scratched nha -- \markup \scratched da \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched so -- \markup \scratched nha -- \markup \scratched da}}
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
        \context Staff = "Vlao_Staff"
        \with
        {
            instrumentName = "Violão"
            midiInstrument = "acoustic guitar (nylon)"
        }
        <<
            % OPEN_BRACKETS:
            \context Voice = "Vlao_Voice_1"
            {
                % OPEN_BRACKETS:
                {
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Voice = "Vlao_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Vlao_Voice_2_Lyrics"
            {
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
                    {   % A_0
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
                        s8.
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            aqs
                            \tweak style #'harmonic
                            dqs'
                        >8
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % SPANNER_STARTS:
                        ~
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            aqs
                            \tweak style #'harmonic
                            dqs'
                        >32
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <
                            \tweak stencil \minima
                            g'
                            \tweak style #'harmonic
                            c''
                        >8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <
                            \tweak stencil \minima
                            g'
                            \tweak style #'harmonic
                            c''
                        >32
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <
                            \tweak stencil \minima
                            cs'
                            \tweak style #'harmonic
                            fs'
                        >4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <
                            \tweak stencil \minima
                            cs'
                            \tweak style #'harmonic
                            fs'
                        >16
                        s16
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            aqs
                            \tweak style #'harmonic
                            dqs'
                        >4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            aqs
                            \tweak style #'harmonic
                            dqs'
                        >16
                        s16
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % AFTER:
                    % COMMANDS:
                     \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % B_0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        b32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            fs
                            \tweak style #'harmonic
                            b
                        >8.
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        cqs16.
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            c
                            \tweak style #'harmonic
                            f
                        >8.
                        s32
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % AFTER:
                    % COMMANDS:
                     \undo \omit Staff.BarLine
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        c'32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            bf
                            \tweak style #'harmonic
                            ef'
                        >8..
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        fs''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        ef''32
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        g'32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        c'32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <
                            \tweak stencil \minima
                            d'
                            \tweak style #'harmonic
                            g'
                        >8..
                        s32
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        c''16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        bf''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        fs''16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        ef''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        g'32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        c'32
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <
                            \tweak stencil \minima
                            d'
                            \tweak style #'harmonic
                            g'
                        >8
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        c'32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            bf
                            \tweak style #'harmonic
                            ef'
                        >8
                        s16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        fs''16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        ef''32
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        g''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        c''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        d''16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        c''32
                        s16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        bf'32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <
                            \tweak stencil \minima
                            fs'
                            \tweak style #'harmonic
                            b'
                        >8
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        ef32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <
                            \tweak stencil \minima
                            g
                            \tweak style #'harmonic
                            c'
                        >8.
                        s32
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % E_0
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        c''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        a''16.
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        af''32
                        s32
                        s32
                        s32
                        s32
                        s32
                        s32
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        c''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        a''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        af''16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        c''32
                        s32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        a''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        af''32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        c''16.
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        a''32
                        s32
                        s32
                        s32
                        s32
                        s32
                        s32
                    % CLOSE_BRACKETS:
                    }   % E_0
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
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''16
                        c''''16
                        c''''32
                        c''''32
                        c''''16
                        r16
                        c''''32
                        c''''32
                        c''''16
                        c''''16
                        c''''32
                        c''''32
                        c''''16
                        r16
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        c''''32
                        c''''32
                        c''''16.
                        c''''32
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        r32
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                    {   % C_0
                        c''''32
                        c''''16
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        c''''16
                        c''''16
                        r32
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        c''''16
                        c''''32
                        c''''16
                        c''''32
                        c''''32
                        c''''32
                        r32
                        c''''32
                        c''''16
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        r16
                        c''''16
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        r16
                        c''''32
                        c''''16.
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''16
                        c''''16.
                        r32
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % E_0
                        c''''32
                        c''''16.
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''16
                        c''''32
                        r32
                        c''''32
                        c''''32
                        c''''16.
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        c''''32
                        % AFTER:
                        % COMMANDS:
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
                    }   % E_0
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Vc_Voice_2_Lyrics"
            {
            % OPENING:
                % COMMANDS:
                \lyricsto "Vc_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER \markup \scratched E \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched so -- \markup \scratched nha -- \markup \scratched da \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched so -- \markup \scratched nha -- \markup \scratched da \markup \scratched a \markup \scratched pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched seduz \markup \scratched a \markup \scratched lín -- \markup \scratched gua \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched mer -- \markup \scratched gu -- \markup \scratched lha \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched fun -- \markup \scratched do... \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched al -- \markup \scratched to... \markup \scratched Sal -- \markup \scratched ta, \markup \scratched sal -- \markup \scratched ta, \markup \scratched vo -- \markup \scratched a... \markup \scratched pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched a -- \markup \scratched ti -- \markup \scratched ra -- \markup \scratched da \markup \scratched Pou -- \markup \scratched sa \markup \scratched so -- \markup \scratched bre‿as \markup \scratched nu -- \markup \scratched vens... \markup \scratched Pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched con -- \markup \scratched tra \markup \scratched á -- \markup \scratched gua \markup \scratched Pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched (sal -- \markup \scratched ta, \markup \scratched sal -- \markup \scratched ta, \markup \scratched vo -- \markup \scratched a) \markup \scratched a -- \markup \scratched ti -- \markup \scratched ra -- \markup \scratched da \markup \scratched con -- \markup \scratched tra \markup \scratched a‿á -- \markup \scratched gua \markup \scratched (le -- \markup \scratched ve, \markup \scratched le -- \markup \scratched ve, \markup \scratched le -- \markup \scratched ve)}}
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
% CLOSE_BRACKETS:
>>
