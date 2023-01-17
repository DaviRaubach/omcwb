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
            \tempo \markup {Tempo de leitura: \italic {poético}}
            % OPENING:
            % COMMANDS:
            \mark #1
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % BEFORE:
            % COMMANDS:
            \tempo \markup {Tempo de leitura: \italic {dramático}}
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % BEFORE:
            % COMMANDS:
            \tempo \markup {Tempo de leitura: \italic {poético}}
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            s1 * 1
            % BEFORE:
            % COMMANDS:
            \tempo \markup {Tempo de leitura: \italic {dramático}}
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
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
                         \hide Voice.Rest
                         \omit Voice.TupletNumber
                         \omit Voice.TupletBracket
                         \omit Voice.Dots
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >4.
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % MARKUP:
                        ^ \markup W.T.
                        ^ \markup {(contorno de harmônicos segue o que seria o contorno da fala)}
                        % SPANNER_STARTS:
                        (
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >32
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >32
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        \<
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >8
                        <
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            a'''
                        >8
                        <
                            \tweak style #'harmonic
                            dqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            dqs'''
                        >16.
                        <
                            \tweak style #'harmonic
                            eqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqs'''
                        >16.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % A_0
                        % OPENING:
                        % COMMANDS:
                        \time 5/8
                        <
                            \tweak style #'harmonic
                            eqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqs'''
                        >32
                        % AFTER:
                        % SPANNER_STARTS:
                        \>
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >16
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >32
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % SPANNER_STOPS:
                        )
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        r2
                        % AFTER:
                        % COMMANDS:
                        \bar "!"
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                    {   % A_1
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >4.
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % MARKUP:
                        ^ \markup W.T.
                        % SPANNER_STARTS:
                        (
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >32
                        <
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            a'''
                        >8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        <
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            a'''
                        >32
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        \<
                        <
                            \tweak style #'harmonic
                            dqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            dqs'''
                        >8
                        <
                            \tweak style #'harmonic
                            eqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqs'''
                        >8
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >16.
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >16.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }   % A_1
                    % OPEN_BRACKETS:
                    {   % A_1
                        % OPENING:
                        % COMMANDS:
                        \time 5/8
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >32
                        % AFTER:
                        % SPANNER_STARTS:
                        \>
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >16
                        <
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            a'''
                        >32
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % SPANNER_STOPS:
                        )
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % A_1
                    % OPEN_BRACKETS:
                    {   % B_1
                        r2
                        % AFTER:
                        % COMMANDS:
                        \bar "!"
                    % CLOSE_BRACKETS:
                    }   % B_1
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPENING:
                        % COMMANDS:
                        \time 3/4
                        <
                            \tweak stencil \minima
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak stencil \minima
                            \tweak transparent ##t
                            e'''
                        >4
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % MARKUP:
                        ^ \markup W.T.
                        % SPANNER_STARTS:
                        (
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                        <
                            \tweak stencil \minima
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak stencil \minima
                            \tweak transparent ##t
                            e'''
                        >16.
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >16
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >8
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        \<
                        ~
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >32
                        <
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            a'''
                        >8
                        <
                            \tweak style #'harmonic
                            dqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            dqs'''
                        >16
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPENING:
                        % COMMANDS:
                        \time 3/8
                        <
                            \tweak style #'harmonic
                            dqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            dqs'''
                        >16
                        <
                            \tweak style #'harmonic
                            eqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqs'''
                        >16.
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >8
                        % AFTER:
                        % SPANNER_STARTS:
                        \>
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >16
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >32
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % SPANNER_STOPS:
                        )
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        f'32
                        % AFTER:
                        % MARKUP:
                        - \markup { \fontsize #-2 \dynamic p possibile}
                        ^ \markup {(variar dinâmica conforme intenção da fala)}
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        fs'32
                        % AFTER:
                        % COMMANDS:
                        \breathe
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        ef'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        a'16
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        ef'16.
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        g'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        cs''32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        aqs'32
                        % AFTER:
                        % COMMANDS:
                        \breathe
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        eqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        e''16
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        eqs'16.
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        cs''32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        cs''32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        bf'32
                        % AFTER:
                        % COMMANDS:
                        \breathe
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqf'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        ef'32
                        % AFTER:
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % C_1
                        % OPENING:
                        % COMMANDS:
                        \time 3/4
                        <
                            \tweak stencil \minima
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak stencil \minima
                            \tweak transparent ##t
                            a'''
                        >4
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % MARKUP:
                        ^ \markup W.T.
                        % SPANNER_STARTS:
                        (
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                        <
                            \tweak stencil \minima
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak stencil \minima
                            \tweak transparent ##t
                            a'''
                        >16.
                        <
                            \tweak style #'harmonic
                            dqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            dqs'''
                        >16
                        <
                            \tweak style #'harmonic
                            eqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqs'''
                        >8
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        \<
                        ~
                        <
                            \tweak style #'harmonic
                            eqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqs'''
                        >32
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >8
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >16
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }   % C_1
                    % OPEN_BRACKETS:
                    {   % C_1
                        % OPENING:
                        % COMMANDS:
                        \time 3/8
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >16
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >16.
                        <
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            a'''
                        >8
                        % AFTER:
                        % SPANNER_STARTS:
                        \>
                        <
                            \tweak style #'harmonic
                            dqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            dqs'''
                        >16
                        <
                            \tweak style #'harmonic
                            eqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqs'''
                        >32
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % SPANNER_STOPS:
                        )
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % C_1
                    % OPEN_BRACKETS:
                    {   % B_2
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        r1
                        % AFTER:
                        % COMMANDS:
                        \bar "!"
                    % CLOSE_BRACKETS:
                    }   % B_2
                    % OPEN_BRACKETS:
                    {   % C_2
                        <
                            \tweak stencil \minima
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak stencil \minima
                            \tweak transparent ##t
                            e'''
                        >4
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % MARKUP:
                        ^ \markup W.T.
                        % SPANNER_STARTS:
                        (
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                        <
                            \tweak stencil \minima
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak stencil \minima
                            \tweak transparent ##t
                            e'''
                        >16.
                        <
                            \tweak style #'harmonic
                            eqf'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqf'''
                        >16
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >8
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        \<
                        ~
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >32
                        <
                            \tweak style #'harmonic
                            a'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            a'''
                        >8
                        <
                            \tweak style #'harmonic
                            dqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            dqs'''
                        >8
                        % AFTER:
                        % SPANNER_STARTS:
                        \>
                        <
                            \tweak style #'harmonic
                            eqs'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            eqs'''
                        >16.
                        <
                            \tweak style #'harmonic
                            e'
                            \tweak Accidental.transparent ##t
                            \tweak no-ledgers ##t
                            \tweak transparent ##t
                            e'''
                        >16.
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % SPANNER_STOPS:
                        )
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_2
                    % OPEN_BRACKETS:
                    {   % D_1
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        f'32
                        % AFTER:
                        % MARKUP:
                        - \markup { \fontsize #-2 \dynamic p possibile}
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        fs'32
                        % AFTER:
                        % COMMANDS:
                        \breathe
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        ef'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        a'16
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        ef'16.
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqf'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        g'32
                        % AFTER:
                        % COMMANDS:
                        \breathe
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        fqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        ef'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        af'16
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        fqs'16.
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        gqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        ef'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        g'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        cs''32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        aqs'32
                        % AFTER:
                        % COMMANDS:
                        \breathe
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        eqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_1
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        % OPENING:
                        % COMMANDS:
                        \time 2/4
                        e''16
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        eqs'16.
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        cs''32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        e'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        fs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        f'32
                        % AFTER:
                        % COMMANDS:
                        \breathe
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        dqs'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        g'16
                        % BEFORE:
                        % COMMANDS:
                        \slap
                        dqs'32
                        % AFTER:
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % B_3
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        r1
                        % AFTER:
                        % COMMANDS:
                        \bar "!"
                    % CLOSE_BRACKETS:
                    }   % B_3
                    % AFTER:
                    % COMMANDS:
                     \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                     \revert Voice.Beam.stencil
                     \revert Voice.Beam.text
                     \undo \omit Voice.Flag
                     \undo \omit Staff.SpanBar
                     \undo \hide Voice.Beam
                     \undo \hide Voice.Rest
                     \undo \omit Voice.TupletNumber
                     \undo \omit Voice.TupletBracket
                     \undo \omit Voice.Dots
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context NullVoice = "Fl_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {   % A_0
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'8
                        c'16
                        c'32
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                    {   % A_1
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'8
                        c'16
                        c'32
                    % CLOSE_BRACKETS:
                    }   % A_1
                    % OPEN_BRACKETS:
                    {   % B_1
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % B_1
                    % OPEN_BRACKETS:
                    {   % C_0
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'8
                        c'16
                        c'32
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % C_1
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'8
                        c'16
                        c'32
                    % CLOSE_BRACKETS:
                    }   % C_1
                    % OPEN_BRACKETS:
                    {   % B_2
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % B_2
                    % OPEN_BRACKETS:
                    {   % C_2
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'16.
                    % CLOSE_BRACKETS:
                    }   % C_2
                    % OPEN_BRACKETS:
                    {   % D_1
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
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
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % B_3
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % B_3
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Fl_Voice_2_Lyrics"
            {
            % OPENING:
                % COMMANDS:
                \lyricsto "Fl_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER \markup \scratched   mer -- 
             \markup \scratched gu -- 
             \markup \scratched lha 
             \markup \scratched ca -- 
             \markup \scratched da 
             \markup \scratched vez 
             \markup \scratched mais 
             \markup \scratched fun -- 
             \markup \scratched do 
             \markup \scratched ca -- 
             \markup \scratched da 
             \markup \scratched vez… 
             \markup \scratched   ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez… 
             \markup \scratched   mer -- 
             \markup \scratched gu -- 
             \markup \scratched lha 
             \markup \scratched ca -- 
             \markup \scratched da 
             \markup \scratched vez 
             \markup \scratched mais 
             \markup \scratched fun -- 
             \markup \scratched do 
             \markup \scratched ca -- 
             \markup \scratched da 
             \markup \scratched vez… 
             \markup \scratched   ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez… 
             \markup \scratched   Pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched a -- 
             \markup \scratched ti -- 
             \markup \scratched ra -- 
             \markup \scratched da 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched e… 
             \markup \scratched   pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra… 
             \markup \scratched   Pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched a -- 
             \markup \scratched ti -- 
             \markup \scratched ra -- 
             \markup \scratched da 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched e… 
             \markup \scratched   ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched e… 
             \markup \scratched   Pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched a -- 
             \markup \scratched ti -- 
             \markup \scratched ra -- 
             \markup \scratched da 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched e… 
             \markup \scratched   pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua… 
             \markup \scratched   ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched e… 
            }}
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Voice = "Fl_Voice_3"
            {
                % OPEN_BRACKETS:
                {
                    % OPENING:
                    % COMMANDS:
                    \time 4/4
                    s1 * 1
                    % OPENING:
                    % COMMANDS:
                    \time 5/8
                    s1 * 5/8
                    % OPENING:
                    % COMMANDS:
                    \time 4/4
                    s1 * 1
                    % OPENING:
                    % COMMANDS:
                    \time 5/8
                    s1 * 5/8
                    % OPENING:
                    % COMMANDS:
                    \time 3/4
                    s1 * 3/4
                    % OPENING:
                    % COMMANDS:
                    \time 3/8
                    s1 * 3/8
                    % OPENING:
                    % COMMANDS:
                    \time 4/4
                    s1 * 1
                    % OPENING:
                    % COMMANDS:
                    \time 3/4
                    s1 * 3/4
                    % OPENING:
                    % COMMANDS:
                    \time 3/8
                    s1 * 3/8
                    % OPENING:
                    % COMMANDS:
                    \time 4/4
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    % OPENING:
                    % COMMANDS:
                    \time 2/4
                    s1 * 1/2
                    % OPENING:
                    % COMMANDS:
                    \time 4/4
                    s1 * 1
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
                    {   % A_0
                    % OPENING:
                        % COMMANDS:
                         \omit Voice.Flag
                         \omit StaffGroup.SpanBar
                         \hide Voice.Beam
                         \hide Voice.Rest
                         \omit Voice.TupletNumber
                         \omit Voice.TupletBracket
                         \omit Voice.Dots
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        r1
                        % AFTER:
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % A_0
                        % OPENING:
                        % COMMANDS:
                        \time 5/8
                        r8
                        % AFTER:
                        % MARKUP:
                        ^ \markup {"espere pela pausa de pícolo e violão"}
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        <
                            \tweak stencil \minima
                            e'
                            \tweak stencil \minima
                            fs'
                            \tweak stencil \minima
                            d''
                            \tweak stencil \minima
                            f''
                            \tweak stencil \minima
                            bqs''
                        >2
                        % AFTER:
                        % ARTICULATIONS:
                        \ppp
                        % MARKUP:
                        ^ \markup "M15"
                        % COMMANDS:
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                    {   % A_1
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        r1
                        % AFTER:
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % A_1
                    % OPEN_BRACKETS:
                    {   % A_1
                        % OPENING:
                        % COMMANDS:
                        \time 5/8
                        r8
                        % AFTER:
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % A_1
                    % OPEN_BRACKETS:
                    {   % B_1
                        <
                            \tweak stencil \minima
                            b'
                            \tweak stencil \minima
                            c''
                            \tweak stencil \minima
                            b''
                            \tweak stencil \minima
                            gqf'''
                        >2
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % MARKUP:
                        ^ \markup "M77"
                        % COMMANDS:
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % B_1
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPENING:
                        % COMMANDS:
                        \time 3/4
                        r2.
                        % AFTER:
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPENING:
                        % COMMANDS:
                        \time 3/8
                        r4
                        r8
                        % AFTER:
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        r1
                        % AFTER:
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % C_1
                        % OPENING:
                        % COMMANDS:
                        \time 3/4
                        r2.
                        % AFTER:
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_1
                    % OPEN_BRACKETS:
                    {   % C_1
                        % OPENING:
                        % COMMANDS:
                        \time 3/8
                        r4
                        r8
                        % AFTER:
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_1
                    % OPEN_BRACKETS:
                    {   % B_2
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        <
                            \tweak stencil \minima
                            b'
                            \tweak stencil \minima
                            c''
                            \tweak stencil \minima
                            b''
                            \tweak stencil \minima
                            gqf'''
                        >1
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % MARKUP:
                        ^ \markup "M77"
                        % COMMANDS:
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % B_2
                    % OPEN_BRACKETS:
                    {   % C_2
                        r1
                        % AFTER:
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_2
                    % OPEN_BRACKETS:
                    {   % D_1
                        r1
                        % AFTER:
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_1
                        % OPENING:
                        % COMMANDS:
                        \time 2/4
                        r2
                        % AFTER:
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % B_3
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        <
                            \tweak stencil \minima
                            g'
                            \tweak stencil \minima
                            af'
                            \tweak stencil \minima
                            af''
                            \tweak stencil \minima
                            ef'''
                            \tweak stencil \minima
                            f'''
                            \tweak stencil \minima
                            g'''
                        >1
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % MARKUP:
                        ^ \markup "M31"
                        % COMMANDS:
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % B_3
                    % AFTER:
                    % COMMANDS:
                     \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                     \revert Voice.Beam.stencil
                     \revert Voice.Beam.text
                     \undo \omit Voice.Flag
                     \undo \omit Staff.SpanBar
                     \undo \hide Voice.Beam
                     \undo \hide Voice.Rest
                     \undo \omit Voice.TupletNumber
                     \undo \omit Voice.TupletBracket
                     \undo \omit Voice.Dots
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context NullVoice = "Sx_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                    s1 * 1
                    s1 * 5/8
                    s1 * 1
                    s1 * 5/8
                    s1 * 3/4
                    s1 * 3/8
                    s1 * 1
                    s1 * 3/4
                    s1 * 3/8
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1/2
                    s1 * 1
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
                        {   % A_0
                        % OPENING:
                            % COMMANDS:
                             \omit Voice.Flag
                             \omit StaffGroup.SpanBar
                             \hide Voice.Beam
                             \hide Voice.Rest
                             \omit Voice.TupletNumber
                             \omit Voice.TupletBracket
                             \omit Voice.Dots
                            % OPENING:
                            % COMMANDS:
                            \clef "treble_8"
                            \time 4/4
                            r16
                            % AFTER:
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            r8
                            r16.
                            r16
                            r16
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % MARKUP:
                            ^ \markup {harmônicos ocasionais}
                            % SPANNER_STARTS:
                            \<
                            ~
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >8
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >8
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16.
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >16.
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STARTS:
                            ~
                        % CLOSE_BRACKETS:
                        }   % A_0
                        % OPEN_BRACKETS:
                        {   % A_0
                            % OPENING:
                            % COMMANDS:
                            \time 5/8
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % COMMANDS:
                            \breathe
                            r32
                            % AFTER:
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        % CLOSE_BRACKETS:
                        }   % A_0
                        % OPEN_BRACKETS:
                        {   % B_0
                            r16
                            r32
                            r16
                            r32
                            r32
                            r16.
                            r16
                            r16
                            r32
                            r32
                            % AFTER:
                            % COMMANDS:
                            \bar "!"
                        % CLOSE_BRACKETS:
                        }   % B_0
                        % OPEN_BRACKETS:
                        {   % A_1
                            % OPENING:
                            % COMMANDS:
                            \time 4/4
                            r16
                            % AFTER:
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            r8
                            r16.
                            r16
                            r16
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % SPANNER_STARTS:
                            \<
                            ~
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >8
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >8
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16.
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >16.
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STARTS:
                            ~
                        % CLOSE_BRACKETS:
                        }   % A_1
                        % OPEN_BRACKETS:
                        {   % A_1
                            % OPENING:
                            % COMMANDS:
                            \time 5/8
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % COMMANDS:
                            \breathe
                            r32
                            % AFTER:
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        % CLOSE_BRACKETS:
                        }   % A_1
                        % OPEN_BRACKETS:
                        {   % B_1
                            r16
                            r32
                            r16
                            r32
                            r32
                            r16.
                            r16
                            r16
                            r32
                            r32
                            % AFTER:
                            % COMMANDS:
                            \bar "!"
                        % CLOSE_BRACKETS:
                        }   % B_1
                        % OPEN_BRACKETS:
                        {   % C_0
                            % OPENING:
                            % COMMANDS:
                            \time 3/4
                            r16
                            % AFTER:
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            r8
                            r16.
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % SPANNER_STARTS:
                            \<
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >16
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STARTS:
                            ~
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >16
                            % AFTER:
                            % SPANNER_STARTS:
                            \<
                            ~
                        % CLOSE_BRACKETS:
                        }   % C_0
                        % OPEN_BRACKETS:
                        {   % C_0
                            % OPENING:
                            % COMMANDS:
                            \time 3/8
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16.
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >8
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % COMMANDS:
                            \breathe
                            r32
                            % AFTER:
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        % CLOSE_BRACKETS:
                        }   % C_0
                        % OPEN_BRACKETS:
                        {   % D_0
                            % OPENING:
                            % COMMANDS:
                            \time 4/4
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            % AFTER:
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            % AFTER:
                            % COMMANDS:
                            \breathe
                            r32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >16
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16.
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >32
                            % AFTER:
                            % COMMANDS:
                            \breathe
                            r32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >16
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16.
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            % AFTER:
                            % COMMANDS:
                            \breathe
                            r32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            % AFTER:
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                            \breathe
                        % CLOSE_BRACKETS:
                        }   % D_0
                        % OPEN_BRACKETS:
                        {   % C_1
                            % OPENING:
                            % COMMANDS:
                            \time 3/4
                            r16
                            % AFTER:
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            r8
                            r16.
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % SPANNER_STARTS:
                            \<
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STARTS:
                            ~
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16
                            % AFTER:
                            % SPANNER_STARTS:
                            \<
                            ~
                        % CLOSE_BRACKETS:
                        }   % C_1
                        % OPEN_BRACKETS:
                        {   % C_1
                            % OPENING:
                            % COMMANDS:
                            \time 3/8
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16.
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >8
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % COMMANDS:
                            \breathe
                            r32
                            % AFTER:
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        % CLOSE_BRACKETS:
                        }   % C_1
                        % OPEN_BRACKETS:
                        {   % B_2
                            % OPENING:
                            % COMMANDS:
                            \time 4/4
                            r16
                            r32
                            r16
                            r32
                            r32
                            r16.
                            r16
                            r16
                            r32
                            r16
                            r32
                            r32
                            r16.
                            r16
                            r16
                            r32
                            r16
                            r32
                            r32
                            r32
                            % AFTER:
                            % COMMANDS:
                            \bar "!"
                        % CLOSE_BRACKETS:
                        }   % B_2
                        % OPEN_BRACKETS:
                        {   % C_2
                            r16
                            % AFTER:
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            r8
                            r16.
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % SPANNER_STARTS:
                            \<
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >16
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STARTS:
                            ~
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            \<
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >16.
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16.
                            % AFTER:
                            % ARTICULATIONS:
                            \pp
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        % CLOSE_BRACKETS:
                        }   % C_2
                        % OPEN_BRACKETS:
                        {   % D_1
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            % AFTER:
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            % AFTER:
                            % COMMANDS:
                            \breathe
                            r32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >16.
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            % AFTER:
                            % COMMANDS:
                            \breathe
                            r32
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >16.
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            % AFTER:
                            % COMMANDS:
                            \breathe
                            r32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                        % CLOSE_BRACKETS:
                        }   % D_1
                        % OPEN_BRACKETS:
                        {   % D_1
                            % OPENING:
                            % COMMANDS:
                            \time 2/4
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >16.
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >32
                            % AFTER:
                            % COMMANDS:
                            \breathe
                            r32
                            <
                                \tweak parenthesized ##t
                                g
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                g''
                            >32
                            <
                                \tweak parenthesized ##t
                                a,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                a'
                            >32
                            <
                                \tweak parenthesized ##t
                                d
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                d''
                            >16
                            <
                                \tweak parenthesized ##t
                                e,
                                \tweak Dots.transparent ##t
                                \tweak no-ledgers ##t
                                \tweak transparent ##t
                                e'
                            >32
                            % AFTER:
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                            \breathe
                        % CLOSE_BRACKETS:
                        }   % D_1
                        % OPEN_BRACKETS:
                        {   % B_3
                            % OPENING:
                            % COMMANDS:
                            \time 4/4
                            r16
                            r32
                            r16
                            r32
                            r32
                            r16.
                            r16
                            r16
                            r32
                            r16
                            r32
                            r32
                            r16.
                            r16
                            r16
                            r32
                            r16
                            r32
                            r32
                            r32
                            % AFTER:
                            % COMMANDS:
                            \bar "!"
                        % CLOSE_BRACKETS:
                        }   % B_3
                        % AFTER:
                        % COMMANDS:
                         \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                         \revert Voice.Beam.stencil
                         \revert Voice.Beam.text
                         \undo \omit Voice.Flag
                         \undo \omit Staff.SpanBar
                         \undo \hide Voice.Beam
                         \undo \hide Voice.Rest
                         \undo \omit Voice.TupletNumber
                         \undo \omit Voice.TupletBracket
                         \undo \omit Voice.Dots
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context NullVoice = "Vlao_Voice_2"
                {
                    % OPEN_BRACKETS:
                    {
                        % OPEN_BRACKETS:
                        {   % A_0
                            % OPENING:
                            % COMMANDS:
                             \hideNotes
                             \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn \shiftOn
                             \omit Voice.TupletNumber
                             \override Voice.TupletBracket.stencil = ##f
                             \override Voice.Tie.stencil = ##f
                            c'''16
                            c'''8
                            c'''16.
                            c'''16
                            c'''16
                            c'''8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'''32
                            c'''8
                            c'''8
                            c'''16.
                            c'''8
                            c'''16
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % A_0
                        % OPEN_BRACKETS:
                        {   % B_0
                            c'''16
                            c'''32
                            c'''16
                            c'''32
                            c'''32
                            c'''16.
                            c'''16
                            c'''16
                            c'''32
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % B_0
                        % OPEN_BRACKETS:
                        {   % A_1
                            c'''16
                            c'''8
                            c'''16.
                            c'''16
                            c'''16
                            c'''8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'''32
                            c'''8
                            c'''8
                            c'''16.
                            c'''8
                            c'''16
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % A_1
                        % OPEN_BRACKETS:
                        {   % B_1
                            c'''16
                            c'''32
                            c'''16
                            c'''32
                            c'''32
                            c'''16.
                            c'''16
                            c'''16
                            c'''32
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % B_1
                        % OPEN_BRACKETS:
                        {   % C_0
                            c'''16
                            c'''8
                            c'''16.
                            c'''16
                            c'''16
                            c'''8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'''32
                            c'''8
                            c'''8
                            c'''16.
                            c'''8
                            c'''16
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % C_0
                        % OPEN_BRACKETS:
                        {   % D_0
                            c'''32
                            c'''32
                            c'''32
                            r32
                            c'''32
                            c'''32
                            c'''16
                            c'''16.
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            r32
                            c'''32
                            c'''32
                            c'''16
                            c'''16.
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            r32
                            c'''32
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % D_0
                        % OPEN_BRACKETS:
                        {   % C_1
                            c'''16
                            c'''8
                            c'''16.
                            c'''16
                            c'''16
                            c'''8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'''32
                            c'''8
                            c'''8
                            c'''16.
                            c'''8
                            c'''16
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % C_1
                        % OPEN_BRACKETS:
                        {   % B_2
                            c'''16
                            c'''32
                            c'''16
                            c'''32
                            c'''32
                            c'''16.
                            c'''16
                            c'''16
                            c'''32
                            c'''16
                            c'''32
                            c'''32
                            c'''16.
                            c'''16
                            c'''16
                            c'''32
                            c'''16
                            c'''32
                            c'''32
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % B_2
                        % OPEN_BRACKETS:
                        {   % C_2
                            c'''16
                            c'''8
                            c'''16.
                            c'''16
                            c'''16
                            c'''8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            c'''32
                            c'''8
                            c'''8
                            c'''16.
                            c'''16.
                        % CLOSE_BRACKETS:
                        }   % C_2
                        % OPEN_BRACKETS:
                        {   % D_1
                            c'''32
                            c'''32
                            c'''32
                            r32
                            c'''32
                            c'''32
                            c'''16
                            c'''16.
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            r32
                            c'''32
                            c'''32
                            c'''16
                            c'''16.
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            r32
                            c'''32
                            c'''32
                            c'''16
                            c'''16.
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            c'''32
                            r32
                            c'''32
                            c'''32
                            c'''16
                            c'''32
                        % CLOSE_BRACKETS:
                        }   % D_1
                        % OPEN_BRACKETS:
                        {   % B_3
                            c'''16
                            c'''32
                            c'''16
                            c'''32
                            c'''32
                            c'''16.
                            c'''16
                            c'''16
                            c'''32
                            c'''16
                            c'''32
                            c'''32
                            c'''16.
                            c'''16
                            c'''16
                            c'''32
                            c'''16
                            c'''32
                            c'''32
                            c'''32
                            % AFTER:
                            % COMMANDS:
                             \unHideNotes
                             \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                             \undo \omit Voice.TupletNumber
                             \revert Voice.TupletBracket.stencil
                             \revert Voice.Tie.stencil
                        % CLOSE_BRACKETS:
                        }   % B_3
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Lyrics = "Vlao_Voice_2_Lyrics"
                {
                % OPENING:
                    % COMMANDS:
                    \lyricsto "Vlao_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER \markup \scratched   Pa -- 
                 \markup \scratched la -- 
                 \markup \scratched vra 
                 \markup \scratched a -- 
                 \markup \scratched ti -- 
                 \markup \scratched ra -- 
                 \markup \scratched da 
                 \markup \scratched con -- 
                 \markup \scratched tra 
                 \markup \scratched a‿á -- 
                 \markup \scratched gua 
                 \markup \scratched e… 
                 \markup \scratched   ca -- 
                 \markup \scratched da  
                 \markup \scratched vez  
                 \markup \scratched mais 
                 \markup \scratched so -- 
                 \markup \scratched nha -- 
                 \markup \scratched da 
                 \markup \scratched  ca -- 
                 \markup \scratched da  
                 \markup \scratched vez… 
                 \markup \scratched   Pa -- 
                 \markup \scratched la -- 
                 \markup \scratched vra 
                 \markup \scratched a -- 
                 \markup \scratched ti -- 
                 \markup \scratched ra -- 
                 \markup \scratched da 
                 \markup \scratched con -- 
                 \markup \scratched tra 
                 \markup \scratched a‿á -- 
                 \markup \scratched gua 
                 \markup \scratched e… 
                 \markup \scratched   ca -- 
                 \markup \scratched da  
                 \markup \scratched vez  
                 \markup \scratched mais 
                 \markup \scratched so -- 
                 \markup \scratched nha -- 
                 \markup \scratched da 
                 \markup \scratched  ca -- 
                 \markup \scratched da  
                 \markup \scratched vez… 
                 \markup \scratched   Pa -- 
                 \markup \scratched la -- 
                 \markup \scratched vra 
                 \markup \scratched a -- 
                 \markup \scratched ti -- 
                 \markup \scratched ra -- 
                 \markup \scratched da 
                 \markup \scratched con -- 
                 \markup \scratched tra 
                 \markup \scratched a‿á -- 
                 \markup \scratched gua 
                 \markup \scratched e… 
                 \markup \scratched   mer -- 
                 \markup \scratched gu -- 
                 \markup \scratched lha 
                 \markup \scratched ca -- 
                 \markup \scratched da 
                 \markup \scratched vez 
                 \markup \scratched mais 
                 \markup \scratched fun -- 
                 \markup \scratched do 
                 \markup \scratched ca -- 
                 \markup \scratched da 
                 \markup \scratched vez 
                 \markup \scratched mais 
                 \markup \scratched al -- 
                 \markup \scratched to 
                 \markup \scratched  mer -- 
                 \markup \scratched gu -- 
                 \markup \scratched lha 
                 \markup \scratched ca -- 
                 \markup \scratched da 
                 \markup \scratched vez 
                 \markup \scratched mais 
                 \markup \scratched e… 
                 \markup \scratched   Pa -- 
                 \markup \scratched la -- 
                 \markup \scratched vra 
                 \markup \scratched a -- 
                 \markup \scratched ti -- 
                 \markup \scratched ra -- 
                 \markup \scratched da 
                 \markup \scratched con -- 
                 \markup \scratched tra 
                 \markup \scratched a‿á -- 
                 \markup \scratched gua 
                 \markup \scratched e… 
                 \markup \scratched   ca -- 
                 \markup \scratched da  
                 \markup \scratched vez  
                 \markup \scratched mais 
                 \markup \scratched so -- 
                 \markup \scratched nha -- 
                 \markup \scratched da 
                 \markup \scratched  ca -- 
                 \markup \scratched da  
                 \markup \scratched vez  
                 \markup \scratched mais 
                 \markup \scratched so -- 
                 \markup \scratched nha -- 
                 \markup \scratched da 
                 \markup \scratched  ca -- 
                 \markup \scratched da  
                 \markup \scratched vez  
                 \markup \scratched mais 
                 \markup \scratched so -- 
                 \markup \scratched e… 
                 \markup \scratched   Pa -- 
                 \markup \scratched la -- 
                 \markup \scratched vra 
                 \markup \scratched a -- 
                 \markup \scratched ti -- 
                 \markup \scratched ra -- 
                 \markup \scratched da 
                 \markup \scratched con -- 
                 \markup \scratched tra 
                 \markup \scratched e… 
                 \markup \scratched   mer -- 
                 \markup \scratched gu -- 
                 \markup \scratched lha 
                 \markup \scratched ca -- 
                 \markup \scratched da 
                 \markup \scratched vez 
                 \markup \scratched mais 
                 \markup \scratched fun -- 
                 \markup \scratched do 
                 \markup \scratched ca -- 
                 \markup \scratched da 
                 \markup \scratched vez 
                 \markup \scratched mais 
                 \markup \scratched al -- 
                 \markup \scratched to 
                 \markup \scratched  mer -- 
                 \markup \scratched gu -- 
                 \markup \scratched lha 
                 \markup \scratched ca -- 
                 \markup \scratched da 
                 \markup \scratched vez 
                 \markup \scratched mais 
                 \markup \scratched fun -- 
                 \markup \scratched do 
                 \markup \scratched ca -- 
                 \markup \scratched da 
                 \markup \scratched vez 
                 \markup \scratched mais 
                 \markup \scratched al -- 
                 \markup \scratched to 
                 \markup \scratched  mer -- 
                 \markup \scratched gu -- 
                 \markup \scratched lha 
                 \markup \scratched e… 
                 \markup \scratched   ca -- 
                 \markup \scratched da  
                 \markup \scratched vez  
                 \markup \scratched mais 
                 \markup \scratched so -- 
                 \markup \scratched nha -- 
                 \markup \scratched da 
                 \markup \scratched  ca -- 
                 \markup \scratched da  
                 \markup \scratched vez  
                 \markup \scratched mais 
                 \markup \scratched so -- 
                 \markup \scratched nha -- 
                 \markup \scratched da 
                 \markup \scratched  ca -- 
                 \markup \scratched da  
                 \markup \scratched vez  
                 \markup \scratched mais 
                 \markup \scratched so -- 
                 \markup \scratched e… 
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
                    % OPENING:
                        % GROB_OVERRIDES:
                        \override Tie.stencil = ##f
                        % OPEN_BRACKETS:
                        {   % A_0
                        % OPENING:
                            % COMMANDS:


                                    \footnote #'(0.5 . 0.5) \markup { "Apenas ruído de corda: para amplificar o efeito, pressionar em silêncio previamente, soltar e mudar a posição com o dedo sobre as cordas." } Stem
                             \omit Voice.Flag
                             \omit StaffGroup.SpanBar
                             \hide Voice.Beam
                             \hide Voice.Rest
                             \omit Voice.TupletNumber
                             \omit Voice.TupletBracket
                             \omit Voice.Dots
                            % BEFORE:
                            % COMMANDS:
                            \ottava 1
                            % OPENING:
                            % COMMANDS:
                            \clef "treble_8"
                            \time 4/4
                            <
                                \tweak style #'cross
                                e
                                \tweak style #'cross
                                b
                                \tweak style #'cross
                                ds'
                                \tweak style #'cross
                                as'
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % MARKUP:
                            ^ \markup \fret-diagram #"s:1;6-12;5-14;4-13;3-15;2-x;1-x;"
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \override Dots.transparent = ##t
                            \override Stem.transparent = ##t
                            <b f' as' f''>2..
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                        % CLOSE_BRACKETS:
                        }   % A_0
                        % OPEN_BRACKETS:
                        {   % A_0
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \revert Dots.transparent
                            \revert Stem.transparent
                            \time 5/8
                            <
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                ds'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                as'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                c''
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                g''
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                            \breathe
                        % CLOSE_BRACKETS:
                        }   % A_0
                        % OPEN_BRACKETS:
                        {   % B_0
                            r2
                            % AFTER:
                            % COMMANDS:
                            \bar "!"
                        % CLOSE_BRACKETS:
                        }   % B_0
                        % OPEN_BRACKETS:
                        {   % A_1
                            % OPENING:
                            % COMMANDS:
                            \time 4/4
                            <
                                \tweak style #'cross
                                ds'
                                \tweak style #'cross
                                as'
                                \tweak style #'cross
                                c''
                                \tweak style #'cross
                                g''
                            >8
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \override Dots.transparent = ##t
                            \override Stem.transparent = ##t
                            <b f' as' f''>2..
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                        % CLOSE_BRACKETS:
                        }   % A_1
                        % OPEN_BRACKETS:
                        {   % A_1
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \revert Dots.transparent
                            \revert Stem.transparent
                            \time 5/8
                            <
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                e
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                b
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                ds'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                as'
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                            \breathe
                        % CLOSE_BRACKETS:
                        }   % A_1
                        % OPEN_BRACKETS:
                        {   % B_1
                            r2
                            % AFTER:
                            % COMMANDS:
                            \bar "!"
                        % CLOSE_BRACKETS:
                        }   % B_1
                        % OPEN_BRACKETS:
                        {   % C_0
                            % OPENING:
                            % COMMANDS:
                            \time 3/4
                            <
                                \tweak style #'cross
                                e
                                \tweak style #'cross
                                b
                                \tweak style #'cross
                                ds'
                                \tweak style #'cross
                                as'
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \override Dots.transparent = ##t
                            \override Stem.transparent = ##t
                            <b f' as' f''>2
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            <b f' as' f''>8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                        % CLOSE_BRACKETS:
                        }   % C_0
                        % OPEN_BRACKETS:
                        {   % C_0
                            % OPENING:
                            % COMMANDS:
                            \time 3/8
                            <b f' as' f''>4
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \revert Dots.transparent
                            \revert Stem.transparent
                            <
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                ds'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                as'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                c''
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                g''
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                        % CLOSE_BRACKETS:
                        }   % C_0
                        % OPEN_BRACKETS:
                        {   % D_0
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                % OPENING:
                                % COMMANDS:
                                \time 4/4
                                <
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    e
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    b
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    ds'
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    as'
                                >2
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                                % COMMANDS:
                                 \omit Staff.BarLine \omit StaffGroup.SpanBar
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                <
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    ds'
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    as'
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    c''
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    g''
                                >2
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                <
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    e
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    b
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    ds'
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    as'
                                >2
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                                % COMMANDS:
                                 \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }   % D_0
                        % OPEN_BRACKETS:
                        {   % C_1
                            % OPENING:
                            % COMMANDS:
                            \time 3/4
                            <
                                \tweak style #'cross
                                ds'
                                \tweak style #'cross
                                as'
                                \tweak style #'cross
                                c''
                                \tweak style #'cross
                                g''
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \override Dots.transparent = ##t
                            \override Stem.transparent = ##t
                            <b f' as' f''>2
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            <b f' as' f''>8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                        % CLOSE_BRACKETS:
                        }   % C_1
                        % OPEN_BRACKETS:
                        {   % C_1
                            % OPENING:
                            % COMMANDS:
                            \time 3/8
                            <b f' as' f''>4
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \revert Dots.transparent
                            \revert Stem.transparent
                            <
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                e
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                b
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                ds'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                as'
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                            \breathe
                        % CLOSE_BRACKETS:
                        }   % C_1
                        % OPEN_BRACKETS:
                        {   % B_2
                            % OPENING:
                            % COMMANDS:
                            \time 4/4
                            r1
                            % AFTER:
                            % COMMANDS:
                            \bar "!"
                        % CLOSE_BRACKETS:
                        }   % B_2
                        % OPEN_BRACKETS:
                        {   % C_2
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                <
                                    \tweak style #'cross
                                    e
                                    \tweak style #'cross
                                    b
                                    \tweak style #'cross
                                    ds'
                                    \tweak style #'cross
                                    as'
                                >8
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                                % COMMANDS:
                                 \omit Staff.BarLine \omit StaffGroup.SpanBar
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                % OPENING:
                                % COMMANDS:
                                \hide NoteHead
                                \override Accidental.stencil = ##f
                                \override NoteColumn.glissando-skip = ##t
                                \override NoteHead.no-ledgers = ##t
                                \override Dots.transparent = ##t
                                \override Stem.transparent = ##t
                                <b f' as' f''>2..
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \tweak edge-height #'(0.7 . 0)
                            \times 8/9
                            {
                                % OPENING:
                                % COMMANDS:
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                \revert Dots.transparent
                                \revert Stem.transparent
                                <
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    ds'
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    as'
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    c''
                                    \tweak Accidental.transparent ##t
                                    \tweak transparent ##t
                                    g''
                                >8
                                % AFTER:
                                % SPANNER_STARTS:
                                \glissando
                                % COMMANDS:
                                 \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }   % C_2
                        % OPEN_BRACKETS:
                        {   % D_1
                            <
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                e
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                b
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                ds'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                as'
                            >2
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \omit Staff.BarLine \omit StaffGroup.SpanBar
                            <
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                ds'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                as'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                c''
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                g''
                            >2
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                        % CLOSE_BRACKETS:
                        }   % D_1
                        % OPEN_BRACKETS:
                        {   % D_1
                            % OPENING:
                            % COMMANDS:
                            \time 2/4
                            <
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                e
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                b
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                ds'
                                \tweak Accidental.transparent ##t
                                \tweak transparent ##t
                                as'
                            >2
                            % AFTER:
                            % SPANNER_STARTS:
                            \glissando
                            % COMMANDS:
                             \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                            \breathe
                        % CLOSE_BRACKETS:
                        }   % D_1
                        % OPEN_BRACKETS:
                        {   % B_3
                            % OPENING:
                            % COMMANDS:
                            \time 4/4
                            r1
                            % AFTER:
                            % COMMANDS:
                            \bar "!"
                            \ottava 0
                        % CLOSE_BRACKETS:
                        }   % B_3
                        % AFTER:
                        % COMMANDS:
                         \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                         \revert Voice.Beam.stencil
                         \revert Voice.Beam.text
                         \undo \omit Voice.Flag
                         \undo \omit Staff.SpanBar
                         \undo \hide Voice.Beam
                         \undo \hide Voice.Rest
                         \undo \omit Voice.TupletNumber
                         \undo \omit Voice.TupletBracket
                         \undo \omit Voice.Dots
                        % CLOSING:
                        % GROB_REVERTS:
                        \revert Tie.stencil
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
                    {   % A_0
                    % OPENING:
                        % COMMANDS:


                                \footnote #'(0.5 . 0.5) \markup { "Apenas ruído, sem altura." } TextScript
                         \omit Voice.Flag
                         \omit StaffGroup.SpanBar
                         \hide Voice.Beam
                         \hide Voice.Rest
                         \omit Voice.TupletNumber
                         \omit Voice.TupletBracket
                         \omit Voice.Dots
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        \time 4/4
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,1
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % MARKUP:
                        ^ \markup "arco super lento"
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % A_0
                        % OPENING:
                        % COMMANDS:
                        \time 5/8
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,2
                        % AFTER:
                        % COMMANDS:
                        \bar "!"
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                    {   % A_1
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,1
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % A_1
                    % OPEN_BRACKETS:
                    {   % A_1
                        % OPENING:
                        % COMMANDS:
                        \time 5/8
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % A_1
                    % OPEN_BRACKETS:
                    {   % B_1
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,2
                        % AFTER:
                        % COMMANDS:
                        \bar "!"
                    % CLOSE_BRACKETS:
                    }   % B_1
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPENING:
                        % COMMANDS:
                        \time 3/4
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,2.
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % C_0
                        % OPENING:
                        % COMMANDS:
                        \time 3/8
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,1
                        % AFTER:
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % C_1
                        % OPENING:
                        % COMMANDS:
                        \time 3/4
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,2.
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_1
                    % OPEN_BRACKETS:
                    {   % C_1
                        % OPENING:
                        % COMMANDS:
                        \time 3/8
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_1
                    % OPEN_BRACKETS:
                    {   % B_2
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,1
                        % AFTER:
                        % COMMANDS:
                        \bar "!"
                    % CLOSE_BRACKETS:
                    }   % B_2
                    % OPEN_BRACKETS:
                    {   % C_2
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,1
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % C_2
                    % OPEN_BRACKETS:
                    {   % D_1
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,1
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                         \omit Staff.BarLine \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % D_1
                        % OPENING:
                        % COMMANDS:
                        \time 2/4
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,2
                        % AFTER:
                        % COMMANDS:
                         \undo \omit Staff.BarLine \undo \omit StaffGroup.SpanBar
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % B_3
                        % OPENING:
                        % COMMANDS:
                        \time 4/4
                        \tweak parenthesized ##t
                        \tweak style #'harmonic
                        c,1
                        % AFTER:
                        % COMMANDS:
                        \bar "!"
                        \breathe
                    % CLOSE_BRACKETS:
                    }   % B_3
                    % AFTER:
                    % COMMANDS:
                     \mergeDifferentlyHeadedOff \mergeDifferentlyDottedOff \shiftOff
                     \revert Voice.Beam.stencil
                     \revert Voice.Beam.text
                     \undo \omit Voice.Flag
                     \undo \omit Staff.SpanBar
                     \undo \hide Voice.Beam
                     \undo \hide Voice.Rest
                     \undo \omit Voice.TupletNumber
                     \undo \omit Voice.TupletBracket
                     \undo \omit Voice.Dots
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context NullVoice = "Vc_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {   % A_0
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'8
                        c'16
                        c'32
                    % CLOSE_BRACKETS:
                    }   % A_0
                    % OPEN_BRACKETS:
                    {   % B_0
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                    {   % A_1
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'8
                        c'16
                        c'32
                    % CLOSE_BRACKETS:
                    }   % A_1
                    % OPEN_BRACKETS:
                    {   % B_1
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % B_1
                    % OPEN_BRACKETS:
                    {   % C_0
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'8
                        c'16
                        c'32
                    % CLOSE_BRACKETS:
                    }   % C_0
                    % OPEN_BRACKETS:
                    {   % D_0
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % D_0
                    % OPEN_BRACKETS:
                    {   % C_1
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'8
                        c'16
                        c'32
                    % CLOSE_BRACKETS:
                    }   % C_1
                    % OPEN_BRACKETS:
                    {   % B_2
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % B_2
                    % OPEN_BRACKETS:
                    {   % C_2
                        c'16
                        c'8
                        c'16.
                        c'16
                        c'16
                        c'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'32
                        c'8
                        c'8
                        c'16.
                        c'16.
                    % CLOSE_BRACKETS:
                    }   % C_2
                    % OPEN_BRACKETS:
                    {   % D_1
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
                        c'32
                        c'32
                        c'32
                        c'32
                        c'32
                        r32
                        c'32
                        c'32
                        c'16
                        c'16.
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
                    % CLOSE_BRACKETS:
                    }   % D_1
                    % OPEN_BRACKETS:
                    {   % B_3
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'16.
                        c'16
                        c'16
                        c'32
                        c'16
                        c'32
                        c'32
                        c'32
                    % CLOSE_BRACKETS:
                    }   % B_3
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Vc_Voice_2_Lyrics"
            {
            % OPENING:
                % COMMANDS:
                \lyricsto "Vc_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER \markup \scratched   mer -- 
             \markup \scratched gu -- 
             \markup \scratched lha 
             \markup \scratched ca -- 
             \markup \scratched da 
             \markup \scratched vez 
             \markup \scratched mais 
             \markup \scratched fun -- 
             \markup \scratched do 
             \markup \scratched ca -- 
             \markup \scratched da 
             \markup \scratched vez… 
             \markup \scratched   ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez… 
             \markup \scratched   mer -- 
             \markup \scratched gu -- 
             \markup \scratched lha 
             \markup \scratched ca -- 
             \markup \scratched da 
             \markup \scratched vez 
             \markup \scratched mais 
             \markup \scratched fun -- 
             \markup \scratched do 
             \markup \scratched ca -- 
             \markup \scratched da 
             \markup \scratched vez… 
             \markup \scratched   ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez… 
             \markup \scratched   Pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched a -- 
             \markup \scratched ti -- 
             \markup \scratched ra -- 
             \markup \scratched da 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched e… 
             \markup \scratched   pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra… 
             \markup \scratched   Pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched a -- 
             \markup \scratched ti -- 
             \markup \scratched ra -- 
             \markup \scratched da 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched e… 
             \markup \scratched   ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched e… 
             \markup \scratched   Pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched a -- 
             \markup \scratched ti -- 
             \markup \scratched ra -- 
             \markup \scratched da 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched e… 
             \markup \scratched   pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua 
             \markup \scratched vo -- 
             \markup \scratched a 
             \markup \scratched  pa -- 
             \markup \scratched la -- 
             \markup \scratched vra 
             \markup \scratched con -- 
             \markup \scratched tra 
             \markup \scratched a‿á -- 
             \markup \scratched gua… 
             \markup \scratched   ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched nha -- 
             \markup \scratched da 
             \markup \scratched  ca -- 
             \markup \scratched da  
             \markup \scratched vez  
             \markup \scratched mais 
             \markup \scratched so -- 
             \markup \scratched e… 
            }}
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
% CLOSE_BRACKETS:
>>
