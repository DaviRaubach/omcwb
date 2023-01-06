\version "2.23.6"
\include "/Users/Davi/github/muda/muda/stylesheet/muda-stylesheets.ily"

\include "/Users/Davi/Composição/2022/Plurisons/base-asvozes/asvozes/multiphonics.ily"



#(define-markup-command (scratched layout props text) (markup?)
  "Scratch text."
  (interpret-markup layout props
   #{\markup \override #'(offset . -4) \underline { #text }#}))

minima = #(lambda (grob)(grob-interpret-markup grob
  #{ \markup
    \musicglyph "noteheads.s1"
   #}))

% rs = \markup \strikethrough

#(set-global-staff-size 15)
#(set-default-paper-size "a4")

\paper {
  % #(set-paper-size "a4landscape")
  scoreTitleMarkup = \markup {
    \fill-line {
      \null
      \fontsize #4 \bold \fromproperty #'header:piece
      \fromproperty #'header:composer
    }
  }
  
  % line-width = 17\cm
  print-page-number = ##t
  print-first-page-number = ##f
  oddHeaderMarkup = \markup \null
  evenHeaderMarkup = \markup \null
  oddFooterMarkup = \markup {
    \fill-line {
      \pad-around #2
      \fontsize #0.2
      \unless \on-first-page-of-part
      \if \should-print-page-number
      {
	\fromproperty #'page:page-number-string
	"| Davi Raubach | Oficina de Música de Curitiba | 2023"}
    }
  }
  top-margin = 10
  bottom-margin = 10
 left-margin = 5
  right-margin = 5
				% left-margin = 50
				% right-margin = 50
  ragged-last = ##t
  max-systems-per-page = 3
				% staff-staff-space = 16
  staff-staff-space = 18
				system-system-spacing = #'((basic-distance . 18)
							     (minimum-distance . 12)
							     (padding . 6)
							     (stretchability . 1))

}
\layout{
  \context{
    \name TimeSignatureContext
    \type Engraver_group
    \consists Axis_group_engraver
    \consists Mark_engraver
    \consists Metronome_mark_engraver
    \consists Text_engraver
    \consists Text_spanner_engraver
    % \consists Time_signature_engraver
    % markFormatter = #format-mark-box-alphabet
    \numericTimeSignature
    
  }
  \context{
    \Voice
				\consists Duration_line_engraver
				% \override LyricText.self-alignment-X = #CENTER
				% \consists "Horizontal_bracket_engraver"
				% \override HorizontalBracket.direction = #UP
				% \override NoteHead.duration-log = 2
				% \remove Forbid_line_break_engraver
    % \accidentalStyle modern-voice-cautionary
    \accidentalStyle dodecaphonic
    % \consists Duration_line_engraver
				% \override LyricText.self-alignment-X = #CENTER
    \consists "Horizontal_bracket_engraver"
    \override HorizontalBracket.direction = #UP
				% \override NoteHead.duration-log = 2
    \remove Forbid_line_break_engraver
    % \accidentalStyle modern-voice

    
  }
  \context {
    \Staff
    % \override Rest.stencil = #ly:text-interface::print
    % \override Rest.text = \markup {
      % \musicglyph "scripts.rcomma"
    % }
				% \consists Mark_engraver
    % \consists "Grid_point_engraver"
    % gridInterval = #(ly:make-moment 1/4)
    \remove Time_signature_engraver
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \consists "Repeat_acknowledge_engraver"
    \consists "Volta_engraver"
    \numericTimeSignature
    \override Tie.details = #'((ratio . 0.333)
			       (center-staff-line-clearance . 0.6)
			       (tip-staff-line-clearance . 0.45)
			       (note-head-gap . 1)
			       (stem-gap . 0.35)
			       (height-limit . 1.0)
			       (horizontal-distance-penalty-factor . 10)
			       (same-dir-as-stem-penalty . 8)
			       (min-length-penalty-factor . 26)
			       (tie-tie-collision-distance . 0.45)
			       (tie-tie-collision-penalty . 25.0)
			       (intra-space-threshold . 1.25)
			       (outer-tie-vertical-distance-symmetry-penalty-factor . 10)
			       (outer-tie-length-symmetry-penalty-factor . 10)
			       (vertical-distance-penalty-factor . 7)
			       (outer-tie-vertical-gap . 0.25)
			       (multi-tie-region-size . 3)
			       (single-tie-region-size . 4)
			       (between-length-limit . 1.0))
\override Staff.TimeSignature.whiteout-style = #'outline
    \override Staff.TimeSignature.whiteout = 1
    \override Staff.TimeSignature.layer = 2

				% \omit TimeSignature
  }
  \context{
    \StaffGroup
\override Staff.TimeSignature.whiteout-style = #'outline
    \override Staff.TimeSignature.whiteout = 1
    \override Staff.TimeSignature.layer = 2
				% \omit TimeSignature
				% \omit BarLine
				% \omit SpanBar
				% \consists "Horizontal_bracket_engraver"
  }
  \context{
    \PianoStaff
    % \consists Duration_line_engraver
    \accidentalStyle piano
				% \omit TimeSignature
				% \omit BarLine
    \omit SpanBar
				% \consists "Horizontal_bracket_engraver"
  }
  \context {
    \Lyrics
    \override LyricText.font-shape = #'caps
    % \override VerticalAxisGroup.staff-affinity = #DOWN
    % \override VerticalAxisGroup.staff-staff-spacing =
    % #'((basic-distance . 0)
    %    (minimum-distance . 0)
    %    (padding . 0))
    % \override Lyrics.LyricSpace.minimum-distance = #0.01
				% \override Lyrics.VerticalAxisGroup.staff-affinity = #DOWN
    
  }

  \context{
    \Score
    \override SpacingSpanner.shortest-duration-space = #4.0
    \override BendAfter.thickness = #3.5
    
    
    % \consists "Grid_line_span_engraver"
      % this moves them to the right half a staff space
    % \override NoteColumn.X-offset = #-0.5
				% \consists Duration_line_engraver
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
    \remove "Repeat_acknowledge_engraver"
    \remove "Volta_engraver"
    \accepts TimeSignatureContext
    \accepts StaffGroup
    \accepts Staff
    \accepts Voice
    \remove Metronome_mark_engraver
    \remove Mark_engraver

    % \override GridLine.whiteout-style = #'outline
    % \override GridLine.layer = 1
    % \override GridLine.whiteout = ##t
    % \override GridLine.stencil = ##f
    % \override GridLine.extra-offset = #'(0.0 . 2.0)
    % \override GridLine.parent-alignment-X = -1
    % \override NoteColumn.X-offset = #-0.5

    
				% \override SpacingSpanner.strict-grace-spacing = ##t
				% \override SpacingSpanner.strict-note-spacing = ##t
				% \override SpacingSpanner.uniform-stretching = ##t
				%   \override Beam.breakable = ##t
				%   \override Glissando.breakable = ##t
				%   \override TextSpanner.breakable = ##t

    
				%   % \override TextScript.X-extent = ##f
				%   \override TextScript.whiteout-style = #'outline
				%   \override TextScript.whiteout = ##t
				%   \override line-spanner-interface.to-barline = ##t
    
				%   \override TupletBracket.minimum-length = #3
				%   \override TupletBracket.padding = #1.5 % was 2
				%   \override TupletBracket.staff-padding = #1.5 
				% \override TupletBracket.staff-padding = #1.3
				% \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
				% % \override TupletBracket.direction = #down % occasionally tweak up
				% \override TupletNumber.font-size = #1
				% \override TupletNumber.text = #tuplet-number::calc-fraction-text
				% autoBeaming = ##f
				% markFormatter = #format-mark-box-alphabet
    
				% proportionalNotationDuration = #(ly:make-moment 1/18)
				% tupletFullLength = ##t
				% \override StaffGrouper.staff-staff-spacing =
				% #'((basic-distance . 6)
				%    (minimum-distance . 6)
				%    (padding . 6)
				%    (stretchability . 6))


    \override BarLine.X-extent = #'(0 . 0)
    \override BarLine.bar-extent = #'(-2 . 2)
    \override BarLine.hair-thickness = #0.9
    \override BarLine.thick-thickness = #8
				%\override BarLine.stencil = ##f

    \override Beam.breakable = ##t
    \override Beam.concaveness = #10000
    \override Beam.beam-thickness = #0.6
    \override Beam.length-fraction = #1.3

    % \override StaffSymbol.layer = 4
    % \override StaffSymbol.whiteout-style = #'outline
    % \override StaffSymbol.whiteout = 1
    
    % \override Clef.layer = 3
    \override Clef.whiteout-style = #'outline
    \override Clef.whiteout = 1
        \override Clef.avoid-slur = #'inside'
    % \override ClefModifier.layer = 4
    \override ClefModifier.whiteout-style = #'outline
    \override ClefModifier.whiteout = 1
    % \override TextScript.layer = 8
    \override TextScript.whiteout = ##t
    \override TextScript.whiteout-style = #'outline
    \override DynamicText.font-size = #-2
    % \override DynamicLineSpanner.staff-padding = 4.5
    \override Glissando.breakable = ##t
    \override Glissando.thickness = #1.8
    \override Stem.thickness = #0.5
    \override Staff.thickness = #0.5
    \override Staff.autoBeaming = ##f


    \override MetronomeMark.font-size = 1.2
    % \override MetronomeMark.outside-staff-padding = #3

    \override TextSpanner.outside-staff-padding = #3
    \override TextSpanner.side-axis = #0

    \override RehearsalMark.padding = #'1

				% \override SpacingSpanner.strict-grace-spacing = ##t
				% \override SpacingSpanner.strict-note-spacing = ##t % ESSE ERA O PROBLEMA DA JUNÇÃO DO SEGMENTO 4 E 5
    %\override SpacingSpanner.uniform-stretching = ##t

				%\override StaffGrouper.staff-staff-spacing = #'((basic-distance . 23) (minimum-distance . 23) (padding . 8))

    \override Stem.stemlet-length = #1.15
    \override StemTremolo.slope = #0.3
    \override StemTremolo.shape = #'beam-like
    \override StemTremolo.beam-thickness = #0.3

    \override TupletBracket.bracket-visibility = ##t
    \override TupletBracket.minimum-length = #3
    \override TupletBracket.padding = #2
    \override TupletBracket.staff-padding = #1.7
    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
    \override TupletNumber.font-size = #0.8
    \override TupletNumber.text = #tuplet-number::calc-fraction-text
    % autoBeaming = ##f
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/24)

    proportionalNotationDuration = #(ly:make-moment 1/24)
    tupletFullLength = ##t


    
  }

}