\version "2.22.1"

\header{
    title = "Wishful Thinking"
    subtitle = "Silent Hill 2"
    composer = "Composer: Akira Yamaoka"
    arranger = "Arranged by: Georg "
}

\language "english"


upper = \relative c'' {
  \tempo 4 = 75 

  \clef treble
  \key c \major
  \time 4/4

  %beginning
  \repeat volta 2 { 
      c4 g'8 e~  e4.  d8 | 
      e4.   e8 
  }  
  \alternative {
   { g4 b, |}
   { g'4 a | }
  }
  
  %middle
  \repeat volta 2 {
    c e, b' e, |
    a d, a' b   |
  }

  %ending
  \repeat volta 2 { 
      c,4 g'8 e~ e4.  d8 | 
      e4.   e8 
  }  
  \alternative {
      { g4 b, }
      { g'4 b,  }
  }
  c1 

 

}

lower =  {

  \relative c {
    \tempo 4 = 75 
    \clef bass
    \key c \major
    \time 4/4

    
    %beginning
    \repeat volta 2 {
        a8 e' c' e, f, f' c' f, |
        c g' c g 
     }  
    \alternative {
       { g, d' b' d,  }
       { g, d' b' d,  }
    } 

    %middle
    \repeat volta 2 {
      a8 e' c' e,  f, f' c' f, 
      d, a' d a     f' a, d a |
    }

    %ending
    \repeat volta 2 {
        a8 e'  c' e,    f, f' c' f, 
        c g' c g 
    }  
   \alternative {
        { g, d' b' d,  }
        {g, d' b' d, }
    }
 
  } 

  < a e a, >1

}

theMusic = {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
}



%% PDF SCORE
\score {
  \header { piece = "Transcribed by: Garen Ikezian" }
    \theMusic

  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
}

%% MIDI SCORE
\score {
    \unfoldRepeats { 
        \theMusic
    }
    \midi { }
}
