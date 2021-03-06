\version "2.16.0"
\include "italiano.ly"

\header {
	title = "Suite de l'Aven"
	instrument = "Bombarde"
	tagline = "BouleDeF.eu"
}

gavotteaven = \relative sib {
	\clef "treble"
	\key sib \major
	\time 4/4
	\tempo 4 = 116

	\repeat volta 2 {
		| re16^"Thème A"( do re mib) fa8 sib, do sib\mordent( la4)
		\noBreak
		| do16( sib do re) mib8( fa16 mib re4) \breathe re
		\noBreak
		| re16( do re mib) fa8 sib, do( sib\mordent) la sib
		| do16( sib do re) mib8 do16( re sib4) \breathe sib
	}
	\break
	\repeat volta 2 {
		| fa'4\mordent( mib8) re do( sib) fa' sol16( la
		| sib8) fa mib16( re do re) mib8 mib16( re) do8( sib)
		| fa'4\mordent( mib8) re do( sib) do re
		| mib do re16( mib re do sib4) \breathe sib
	}
	\break
	\repeat volta 2 {
		| sib4^"Thème B" re8. mib16 fa4~ fa8 mib16( fa
		| sol8) fa re fa mib4\mordent( re) \breathe
		| sib8 do16( sib la8) sib do4~ do8 (re16 mib
		| fa8) fa mib16( re do re sib4) \breathe sib
	}
	\repeat volta 2 {
		| sib'4 fa8 sib la sol16( la fa8) re
		| mib do re sib do( la16 sib) do4 \breathe
		| sib'4 fa8 sib la sol16( la fa8) re
		| mib do re16( mib re do sib4) \breathe sib
	}
}

balaven = \relative sib {
	\clef "treble"
	\key sib \major
	\time 12/8

	\tempo 4. = 76
	\repeat volta 2 {
		| re8 re( sib) re fa( re) fa mib( do) mib re4
		| re8 re( sib) re fa4 sib,8 do re do sib4\fermata
	}
	\break

	\tempo 4. = 116
	\repeat volta 2 {
		| re8( mib) do re re re re( mib) do re4.
		| re8( sib) re fa( re) fa mib( do) mib re4.
		| re8( mib) do re mib fa re( mib) do re4 re8
		| re( sib) re fa4 sib,8 do( re) do sib4.\fermata
	}
}

\score {
	\new Staff {
		\gavotteaven
	}
	\header {
		piece = "Gavotte de l'aven"	
	}
	\layout {}
}

\score {
	\new Staff {
		\balaven
	}
	\header {
		piece = "Bal de l'aven"	
	}
	\layout {}
}

\score {
	\new Staff \with {midiInstrument=#"oboe"} {
		\unfoldRepeats { \gavotteaven }
	}
	\midi {}
}

\score {
	\new Staff \with {midiInstrument=#"oboe"} {
		\unfoldRepeats { \balaven }
	}
	\midi {}
}

