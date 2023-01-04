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
                    {
                        % OPEN_BRACKETS:
                        \new Voice
                        {
                            % OPEN_BRACKETS:
                            {
                                % BEFORE:
                                % COMMANDS:
                                \tempo 4=54
                                % OPENING:
                                % COMMANDS:
                                \time 4/4
                                ef'1
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                ef'1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 4/7
                                {
                                    ef'1
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    ef'8
                                    % OPENING:
                                    % COMMANDS:
                                    \aeolAndOrd
                                    b2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \aeolAndOrd
                                    b8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 8/11
                                {
                                    % OPENING:
                                    % COMMANDS:
                                    \aeolAndOrd
                                    b1
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \aeolAndOrd
                                    b8
                                    % OPENING:
                                    % COMMANDS:
                                    \aeolAndOrd
                                    ef'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 8/13
                                {
                                    % OPENING:
                                    % COMMANDS:
                                    \aeolAndOrd
                                    ef'4
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Voice = "Fl_Voice_2"
            {
                % OPEN_BRACKETS:
                {
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Fl_Voice_2_Lyrics"
            {
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
                        % OPEN_BRACKETS:
                        \new Voice
                        {
                            % OPEN_BRACKETS:
                            {
                                % BEFORE:
                                % COMMANDS:
                                \tempo 4=54
                                % OPENING:
                                % COMMANDS:
                                \time 4/4
                                b1
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % MARKUP:
                                ^ \markup bisb
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                b2
                                bf2
                                % AFTER:
                                % MARKUP:
                                ^ \markup bisb
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                bf1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 8/11
                                {
                                    bf1
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    bf8
                                    fs4
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup dbl_tng
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 8/13
                                {
                                    fs4
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
            midiInstrument = "Acoustic Guitar"
        }
        <<
            % OPEN_BRACKETS:
            \context Voice = "Vlao_Voice_1"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {
                        % OPEN_BRACKETS:
                        \new Voice
                        {
                            % OPEN_BRACKETS:
                            {
                                % BEFORE:
                                % COMMANDS:
                                \tempo 4=54
                                % OPENING:
                                % COMMANDS:
                                \clef "treble_8"
                                \time 4/4
                                bf1
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                bf1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                bf1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 8/11
                                {
                                    bf1
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    bf8
                                    d''4
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup pont
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 8/13
                                {
                                    d''4
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
                    {
                        % OPEN_BRACKETS:
                        \new Voice
                        {
                            % OPEN_BRACKETS:
                            {
                                % BEFORE:
                                % COMMANDS:
                                \tempo 4=54
                                % OPENING:
                                % COMMANDS:
                                \clef "bass"
                                \time 4/4
                                bf,1
                                % AFTER:
                                % ARTICULATIONS:
                                \mf
                                % MARKUP:
                                ^ \markup "pizz. L.V."
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                bf,1
                                % AFTER:
                                % SPANNER_STARTS:
                                ~
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 4/7
                                {
                                    bf,1
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    bf,8
                                    af,2
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup "pizz."
                                    % SPANNER_STARTS:
                                    ~
                                    af,8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 8/11
                                {
                                    af,1
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    af,8
                                    g,4
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup "pizz."
                                    % SPANNER_STARTS:
                                    ~
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            {
                                % OPEN_BRACKETS:
                                \times 8/13
                                {
                                    g,4
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
                                    r8
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
