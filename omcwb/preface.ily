\version "2.23.6"
\language "english"
\include "/Users/Davi/github/muda/muda/stylesheet/muda-stylesheets.ily"


\pageBreak
\markup {
  \vspace #2
  \fontsize #2
  \override #'(line-width . 120)
  \fill-line {\bold "Prefácio" }

}


\markup {
  \vspace #2
  \fontsize #1.2
  \override #'(line-width . 120)
  \column {
  \justify {
      \bold {Duração} c. 3 min.
    }
}
  }
  \markup {
  % \hspace #6
  \column {
    \fontsize #1.2
    \override #'(line-width . 120)
    \justify{
      Nesta composição, a leitura de um texto verbal ocupa uma posição de geração de material musical e de organizador relativo da temporalidade. Em boa parte da peça, o passar do tempo é articulado pela leitura do texto.
    }
    
    \vspace #2
    \fontsize #1.2
    % \override #'(line-width . 47)
    \justify{
      O poema que cumpre essa função na peça foi escrito para essa ocasião:
      
    }
}
}  
\markup {
  \vspace #2
  \fontsize #1.2
  \center-column {
"Palavra atirada contra a água"
"Salta, salta, voa"
"Pousa sobre as nuvens"
"Mergulha cada vez mais fundo"
"Cada vez mais alto"
"Seduz a língua e escoa"
"Escoa, salta, voa"
"Cada vez mais sonhada"
  }
}
\pageBreak
\markup {
  
  \vspace #2
  \fontsize #2
  % \override #'(line-width . 120)
  \fill-line {\bold "Notas de Performance" }
}

\markup {
  \vspace #2
  \fontsize #1.2
  \override #'(line-width . 120)
  \fill-line {
      \bold {"Notação rítmica"}}
}

\markup { 
  \override #'(line-width . 120)
  \vspace #2
  \fontsize #1.2
  \wordwrap {
      \bold {"Tempo Estrito:"} notado tradicionalmente}
}

\markup { 
  \override #'(line-width . 120)
  \vspace #2
  \fontsize #1.2
  \wordwrap {
      \bold {"Tempo de fala (leitura mental):"}}
}
\markup {
  \fontsize #1.2
  \override #'(line-width . 47)
  \column {
    \vspace #1
    \justify {
      Gestos instrumentais estão associados às sílabas do texto. O/A intérprete deve executar a música levando em conta sua associação com o texto. Uma leitura mental é que determina quando tocar. Pontos e vírgulas podem ser interpretados como pausas, fraseseado e dinâmicas podem derivar também do texto.}
    \vspace #1
    \justify {
      Nestes momentos, não há necessidade de sincronia mas é recomendado combinar um ritmo de leitura aproximado em ensaio:}
    \vspace #1
    \justify {\bold {Lento:} 1 a 3 sílabas por segundo; \bold {Regular:} 3 ou mais sílabas por segundo} 
    
  }
  \hspace #6
  \fontsize #1.2
  \override #'(line-width . 47)
  \column {
    \vspace #1
    \justify {Cabeça de nota como de semínima representa a leitura de uma sílaba para cada nota (notas mais curtas). Cabeça de nota como de mínimas representam notas que se estendem por várias sílabas (notas mais longas).}
    \vspace #1
    \justify {\bold{Um gesto por sílaba:} a frase musical é articulada como se fosse uma fala.}
    \vspace #2
    % \score {
    %   \header {
    % 	composer = " "
	
	
    %   }
    %   \layout {indent = 0}
    %   {
    % 				% \include "exemplo_texto_01.ily"
    %   }
    % }

    % \vspace #1
    \justify {\bold{Gestos associados a sílabas específicas:} o texto funciona como uma régua temporal. }
    \vspace #1
    \score {
      \header {
	composer = " "
      }
      \layout {indent = 0}

	{c'4}			% \include "exemplo_esparso.ily"
    }  
  }
}

\markup {
 % \vspace #1
  \override #'(line-width . 120)
  \fontsize #1.2
    \justify {Em geral, o ritmo instrumental deve se submeter ao ritmo da leitura. Entretanto, também deve-se levar em consideração que alguns gestos precisam de tempo hábil para a exeucução e nestes casos não há problema em suspender o tempo da leitura.}
}

\markup {
  \override #'(line-width . 120)
  \vspace #2
  \fontsize #1.2
  \justify {
      \bold {Leitura falada:}}
}


\pageBreak
tecOmit =  {
  \omit Staff.StaffSymbol
  \omit Staff.Clef
  \omit Staff.TimeSignature
}

\markup {
  \override #'(line-width . 120)
  \vspace #2
  \fontsize #1.2
  \column {
    \justify {
      
    }
    \justify {
      \bold {Técnicas } }
    \justify {
      \bold {Flauta Alto / Clarinete Baixo:} }
  }}
\markup {
  \override #'(line-width . 120)
  \fontsize #1.2
  \override #'(line-width . 80)

  \fill-line {
    \column {
      \justify {Ar com som mínimo da nota:}
      \score {
	\context Staff = "Fl_Staff"
	<<
	  \context Voice = "Fl_Voice_1"
	  {  \tecOmit \aeol c''4 }
	>>
      }
      \vspace #2
      \justify {Nota + ar:}
      \score {
	\context Staff = "Fl_Staff"
	<<
	  \context Voice = "Fl_Voice_1"
	  { \tecOmit \aeolAndOrd c''4 }
	>>
      }
      \vspace #2
      \justify {"Pizzicato:" }
      \score {
	\context Staff = "Fl_Staff"
	<<
	  \context Voice = "Fl_Voice_1"
	  { \tecOmit \slap c''4 }
	>>
      }
    }
    \column { 
      \justify {"Frullato:" }
      \vspace #0.5
      \score {
	\context Staff = "Fl_Staff"
	<<
	  \context Voice = "Fl_Voice_1"
	  { \tecOmit c''4:32 ^\markup{"fr."} }
	>>
      }
      \vspace #2
      \justify {Key clicks:}
      \score {
	\context Staff = "Fl_Staff"
	<<
	  \context Voice = "Fl_Voice_1"
	  { \tecOmit \once \override NoteHead.style = #'cross
	    c''4 }
	>>
      }
      \vspace #2
      \justify {Flauta + voz:}
      \score {
	\context Staff = "Fl_Staff"
	<<
	  \context Voice = "Fl_Voice_1"
	  { \tecOmit  \stemUp
	    c''4 }
	  \context Voice = "Fl_Voice_2"
	  { \tecOmit \stemDown \quarterSquare 
	    g'4 }
	>>
      }
      \justify {(ou indicação por escrito)}
      \vspace #2
    }
  }
}
% \markup {
%   \override #'(line-width . 120)
%   \fontsize #1.2
%   \column {
%     \justify {
%       A indicação \italic {voz ad libitum}, acompanhada às vezes por \italic{voz: dinâmica e entoação como que falando}, se refere a algo que seria melhor desenvolvido na colaboração com os/as intérpretes. Seria algo como uma fala impedida pelo som instrumental.}
%     \vspace #2
%     \justify {
%       Algumas sobreposições de técnicas podem não funcionar muito bem (por exemplo, nota com ar + voz), talvez seja preciso adaptar num segundo momento. Imagino que alguma região de alturas possa dificultar a execução com ar ou com voz ou com ambas.
%     }
%   }
% }
\markup {
  \override #'(line-width . 120)
  \column {
    \vspace #2
				%\hspace #15
    \fontsize #1.2
    \justify {
      \bold {Piano:} }
    
    \justify {
      Linha de duração trinado: raspando as unhas sobre a(s) corda(s) indicadas. Rearticular quando necessário. }
    \vspace #1
    \hspace #15
    
    \score {
      \header {
	composer = " "
      }
      {
	{c'4}	% \include "exemplo_s.ily"}
      }

    }
  }
}
\markup {
  \override #'(line-width . 120)
  \column {
    \vspace #2
    \fontsize #1.2
    \justify {
      \bold {Guitarra:} }
    
    \justify {P.M.: Palm mute} 

    \justify {raspando: raspar  \bold {suavemente} a corda com a unha antes de pinçar.  } 
    

  }}



\pageBreak