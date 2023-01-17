\version "2.23.6"
\language "english"

				% OPEN_BRACKETS:
\context Score = "Score"
<<
    % OPEN_BRACKETS:
    % OPEN_BRACKETS:
    \context StaffGroup = "group"
    <<
        % OPEN_BRACKETS:
        \context Staff = "Fl_Staff"
        \with
        {
            % instrumentName = "Piccolo"
            midiInstrument = "Piccolo"
        }
        <<
            % OPEN_BRACKETS:
            \context Voice = "Fl_Voice_1"
            {
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    {   % B_0
                         \omit Voice.Flag
                         \omit StaffGroup.SpanBar
                         \hide Voice.Beam
                         \omit Voice.TupletNumber
                         \omit Voice.TupletBracket
                         \override Voice.Rest.stencil = ##f
                         \omit Voice.Dots
                        bqs''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        g''32
                        fs''16
                        cs''32
                        c'''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        bqs''32 
                        % AFTER:
                        % ARTICULATIONS:
                        - \staccato
                        r32
                        % OPENING:
                        % COMMANDS:
                        \override NoteHead.stencil = #ly:text-interface::print
                        \override NoteHead.text = \markup { \musicglyph "noteheads.s1" }
                        g''8
                        % AFTER:
                        % COMMANDS:
                        \revert NoteHead.stencil
                        \revert NoteHead.text
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
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
                    {   % B_0
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
                    % CLOSE_BRACKETS:
                    }   % B_0
                    % OPEN_BRACKETS:
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Lyrics = "Fl_Voice_2_Lyrics"
            {
            % OPENING:
                % COMMANDS:
                \lyricsto "Fl_Voice_2" { \lyricmode { \override LyricText.self-alignment-X = #CENTER \markup \scratched Sal -- \markup \scratched ta, \markup \scratched sal -- \markup \scratched ta, \markup \scratched vo -- \markup \scratched a... \markup \scratched pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched a -- \markup \scratched ti -- \markup \scratched ra -- \markup \scratched da \markup \scratched Pou -- \markup \scratched sa \markup \scratched so -- \markup \scratched bre‿as \markup \scratched nu -- \markup \scratched vens... \markup \scratched Pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched con -- \markup \scratched tra \markup \scratched á -- \markup \scratched gua \markup \scratched mer -- \markup \scratched gu -- \markup \scratched lha \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched fun -- \markup \scratched do... \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched al -- \markup \scratched to... \markup \scratched a \markup \scratched pa -- \markup \scratched la -- \markup \scratched vra \markup \scratched bei -- \markup \scratched ja‿a \markup \scratched bo -- \markup \scratched ca \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched e \markup \scratched es --  \markup \scratched cor -- \markup \scratched re, \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched so -- \markup \scratched nha -- \markup \scratched da \markup \scratched ca -- \markup \scratched da \markup \scratched vez \markup \scratched mais \markup \scratched so -- \markup \scratched nha -- \markup \scratched da}}
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
        % OPEN_BRACKETS:
    % CLOSE_BRACKETS:
    >>
% CLOSE_BRACKETS:
>>
