\version "2.22.1"

\header{
  title="My first LilyPond Piece"
  composer="Jave"
}

\language "français"


{
  \clef treble
  \key do \major
  \time 4/4
  do do' do'' do'''
}

%{
right = \relative do'
{
  \clef bass
  \key c \major 
  \time 4/4
  do re mi fa 
}

}%

%{
\score{
  <<
    \left
    \right
  >>
}
}%
