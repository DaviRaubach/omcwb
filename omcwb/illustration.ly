\version "2.23.6"
\language "english"
\include "/Users/Davi/.pyenv/versions/abjad314/lib/python3.10/site-packages/abjad/scm/abjad.ily"
\include "/Users/Davi/github/muda/muda/stylesheet.ily"
#(set-default-paper-size "a4" 'portrait)
% OPEN_BRACKETS:
\new Score
<<
    % OPEN_BRACKETS:
    \new Staff
    {
        % OPEN_BRACKETS:
        \new Voice
        \with
        {
            \consists Horizontal_bracket_engraver
        }
        {
            % OPEN_BRACKETS:
            {
                % OPEN_BRACKETS:
                {   % A_0
                    % OPENING:
                    % COMMANDS:
                    \once \override HorizontalBracketText.text = "A_0"
                    \time 3/8
                    g''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    \f
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {0}}}
                    % SPANNER_STARTS:
                    \startGroup
                    ef'''16.
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {1}}}
                    c'''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {2}}}
                    % COMMANDS:
                    \breathe
                    r16.
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {3}}}
                    r8
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {4}}}
                    % SPANNER_STOPS:
                    \stopGroup
                % CLOSE_BRACKETS:
                }   % A_0
                % OPEN_BRACKETS:
                {   % A_0
                    % OPENING:
                    % COMMANDS:
                    \once \override HorizontalBracketText.text = "A_0"
                    \time 4/4
                    g''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {0}}}
                    % SPANNER_STARTS:
                    \startGroup
                    fs''32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {1}}}
                    c'''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {2}}}
                    % SPANNER_STARTS:
                    ~
                    c'''32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {3}}}
                    bqs''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {4}}}
                    % COMMANDS:
                    \breathe
                    r32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {5}}}
                    g''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {6}}}
                    fs''32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {7}}}
                    bqs''16.
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {8}}}
                    fs''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {9}}}
                    % COMMANDS:
                    \breathe
                    r32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {10}}}
                    r8.
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {11}}}
                    % SPANNER_STOPS:
                    \stopGroup
                % CLOSE_BRACKETS:
                }   % A_0
                % OPEN_BRACKETS:
                {   % B_0
                    % OPENING:
                    % COMMANDS:
                    \once \override HorizontalBracketText.text = "B_0"
                    bqs''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {0}}}
                    % SPANNER_STARTS:
                    \startGroup
                    g''32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {1}}}
                    fs''16
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {2}}}
                    fs''32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {3}}}
                    c'''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {4}}}
                    bqs''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {5}}}
                    r32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {6}}}
                    g''8
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {7}}}
                    % SPANNER_STOPS:
                    \stopGroup
                % CLOSE_BRACKETS:
                }   % B_0
                % OPEN_BRACKETS:
                {   % B_0
                    % OPENING:
                    % COMMANDS:
                    \once \override HorizontalBracketText.text = "B_0"
                    \time 7/8
                    r32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {0}}}
                    % SPANNER_STARTS:
                    \startGroup
                    bqs''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {1}}}
                    fs''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {2}}}
                    % SPANNER_STARTS:
                    ~
                    fs''16
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {3}}}
                    r16
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {4}}}
                    g''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {5}}}
                    fs''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {6}}}
                    r32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {7}}}
                    ef'''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {8}}}
                    fs''32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {9}}}
                    bqs''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {10}}}
                    g''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {11}}}
                    r16
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {12}}}
                    fs''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {13}}}
                    fs''8
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {14}}}
                    r32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {15}}}
                    c'''32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {16}}}
                    bqs''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {17}}}
                    % SPANNER_STOPS:
                    \stopGroup
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }   % B_0
                % OPEN_BRACKETS:
                {   % B_0
                    % OPENING:
                    % COMMANDS:
                    \once \override HorizontalBracketText.text = "B_0"
                    \time 5/8
                    bqs''8
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {0}}}
                    % SPANNER_STARTS:
                    \startGroup
                    r32
                    % AFTER:
                    % MARKUP:
                    - \markup \tiny {\null { \raise #2 {1}}}
                    % SPANNER_STOPS:
                    \stopGroup
                % CLOSE_BRACKETS:
                }   % B_0
                % OPEN_BRACKETS:
                {   % C_0
                    c32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    c8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    c16.
                    c32
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    c32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    r32
                    c32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    c32
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    c16
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }   % C_0
                % OPEN_BRACKETS:
                {   % C_0
                    % OPENING:
                    % COMMANDS:
                    \time 2/4
                    c8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    c32
                    r32
                % CLOSE_BRACKETS:
                }   % C_0
                % OPEN_BRACKETS:
                {   % D_0
                    c32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    c32
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    c8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    c32
                    c16.
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                % CLOSE_BRACKETS:
                }   % D_0
                % OPEN_BRACKETS:
                {   % D_0
                    c8.
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    r16
                    r8
                    r32
                    c16.
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }   % D_0
                % OPEN_BRACKETS:
                {   % D_0
                    % OPENING:
                    % COMMANDS:
                    \time 5/8
                    c16
                    r32
                    c32
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % SPANNER_STARTS:
                    ~
                    c8
                    r32
                    c16.
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % SPANNER_STARTS:
                    ~
                    c8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    c16.
                    r32
                % CLOSE_BRACKETS:
                }   % D_0
                % OPEN_BRACKETS:
                {   % D_0
                    % OPENING:
                    % COMMANDS:
                    \time 3/8
                    c8.
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    % SPANNER_STARTS:
                    ~
                    c8
                % CLOSE_BRACKETS:
                }   % D_0
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    }
% CLOSE_BRACKETS:
>>
