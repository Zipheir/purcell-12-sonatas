\version "2.18.2"

\include "config.ly"

larg  = \markup { \bold Largo }
grave = \markup { \bold Grave }
prest = \markup { \bold Presto }

vlone = \relative c'' {
	\clef treble \key d \major \time 2/2
	r4 e4. r16 e cis8. cis16
	e8. e16 b8. b16 d8. e16 cis8. d16
	b4 e4. r16 e d4 ~
	d8 r16 d cis8. cis16 fis4. r16 fis             % m 4
	e4. r16 e d4. r16 d
	cis4. r16 cis b4. r16 b
	a4 d4. r16 d cis8. cis16
	e8. e16 b8. b16 d4. e8                         % m 8
	cis4 d e e ~
	e8 r16 e d8. d16 fis8. fis16 cis8. cis16
	e8. e16 b4 cis a
	b4. r16 b fis8. fis16 a8. a16                  % m 12
	e4 a'4. r16 a fis8. fis16
	a8. a16 e8. e16 g8. cis,16 d8.( e32 fis)
	e4 e4. r16 e dis8. dis16
	fis8. fis16 cis8. cis16 e8. e16 d4             % m 16
	cis c4. r16 c b8. b16
	d8. d16 a8. a16 c4. d8
	b2 e,4 a ~
	a8 r16 a gis8. gis16 b8. b16 e,8. e16          % m 20
	g8. g16 fis4 e a ~
	a g fis a' ~
	a8 r16 a gis8. gis16 b8. b16 fis8. fis16
	a8. a16 g4 fis4. r16 fis                       % m 24
	cis8. cis16 e8. e16 b8. b16 d8. d16
	a8. a16 b4 fis b ~
	b8 r16 b ais8. ais16 cis8. cis16 fis,8. fis16
	a4. r16 b e,4. r16 e                           % m 28
	fis8. fis16 gis8. a16 fis8. fis16 gis8. a16
	e4 e'4. r16 e cis8. cis16
	e8. e16 b8. b16 d8. d16 cis4
	b8. a16 a2 gis4                                % m 32
	a1 \bar "||"

	% largo
	\time 3/2 e'2^\larg e e
	d d d
	cis fis fis                                    % m 36
	fis e e
	a gis2. fis4
	gis1.
	b,2 b b                                        % m 40
	a a a
	gis cis cis
	cis b a
	d cis2. b4                                     % m 44
	cis2 cis d
	e fis g
	cis, d e
	a, b cis                                       % m 48
	gis a b
	b4( a) gis2. fis4
	fis2 a' gis
	fis e1                                         % m 52
	d cis2 ~
	cis b1
	a gis2 ~
	gis fis2. e4                                   % m 56
	e2 gis' a
	b cis d
	gis, a b
	e, fis g                                       % m 60
	cis, d e
	fis e1
	d2 a'1
	g fis2                                         % m 64
	e1 d2 ~
	d cis b
	a1 gis2 ~
	gis fis2. fis4                                 % m 68
	fis2 fis' e
	dis e fis
	b, cis d
	gis, a g                                       % m 72
	fis e d ~
	d e' d
	cis d e
	b cis d                                        % m 76
	gis, a b
	cis b1
	a r2
	r a g                                          % m 80
	fis gis a
	e e' d
	cis d e
	b cis d                                        % m 84
	gis, a b
	cis b1
	a1. \bar "||"

	% grave
	\time 2/2 cis4^\grave cis8. cis16 cis4 d4      % m 88
	a a8. a16 a4 b
	fis2 r
	fis'4 fis8. fis16 fis4 a
	e e8. e16 e4 g                                 % m 92
	b, cis8. d16 b4 e8. e16
	d4 cis b a
	gis g'?8. g16 fis4 e
	d d8. cis16 cis4 fis8. fis16                   % m 96
	e4 d cis c8. c16
	b4 a gis f'8. f16
	e4 d2 c4
	b4. a8 a2^\prest                               % m 100

	% presto
	R1
	r2 r8 b e gis
	fis e a gis fis gis16 a b8 a
	gis b16 a gis fis e d cis4. a8                 % m 104
	d cis b e d cis b cis16 d
	e8 cis d e fis8. g16 a4
	g8 fis e d cis d d cis
	d g16 fis e d cis b ais8 fis b d               % m 108
	cis b e d cis d16 e fis8 e
	dis fis16 e dis cis b a gis8 fis gis b
	a gis cis b cis16 dis e8 dis8 e16 fis
	gis8 e fis gis fis e e dis                     % m 112
	e e, a cis b a d cis
	b cis16 d e8 d cis fis16 e d cis b a
	b4. b8 cis4. cis8
	d4. g8 g fis e a                               % m 116
	fis4. d8 g fis e a
	g fis e fis16 g a8 fis g4 ~
	g8 a16 g fis e d cis b8 cis16 d e8 d
	cis fis16 e d cis b a gis8 a16 b gis8. fis16   % m 120
	fis8 cis' fis4. d8 e fis
	g gis a b c cis, dis e
	dis e e dis e gis16 fis e d cis b
	a8 e a cis b a d cis                           % m 124
	b cis16 b a8 a16 b cis8 b16 cis d4 ~
	d c2 b8 d
	c b a g fis g g8. fis16
	fis8 fis b d cis b e d                         % m 128
	cis d16 e fis8 e d g16 fis e d cis b
	ais8 gis16( fis) d'4 cis8 cis fis a
	gis fis b a gis a16 b cis8 b
	a d16 cis b a gis fis e8 a a gis               % m 132
	a gis fis e d e, fis gis16 a
	b8 a gis a16 b cis8 a b cis
	b a a gis a cis\p d e
	d cis b4 a\fermata r\bar "|."                  % m 136
}

vltwo = \relative c'' {
	\clef treble \key d \major \time 2/2
	R1
	r2 r4 a ~
	a8 r16 a gis8. gis16 b8. b16 fis8. fis16
	a2 ~ a8. d,16 d'4 ~                            % m 4
	d8 r16 d cis4. r16 cis b4 ~
	b8 r16 b a4 gis g ~
	g8 r16 g fis4 e2
	r2 r4 a' ~                                     % m 8
	a8 r16 a fis8. fis16 a8. a16 e8. e16
	g2 r4 e ~
	e8 r16 e d8. d16 fis8. fis16 cis8. cis16
	dis4 e4. r16 e d4 ~                            % m 12
	d8 d cis4 d d ~
	d8 r16 d cis8. cis16 e8. e16 a,8. a16
	c8. c16 gis8. gis16 b4 b ~
	b8 r16 b ais8. ais16 cis8. cis16 fis,8. fis16  % m 16
	a8. a16 e8. e16 g2
	d r4 g' ~
	g8 r16 g fis8. fis16 a8. a16 e8. e16
	g8. g16 b,8. b16 d8. d16 c4                    % m 20
	b ~ b16 cis b a gis8. fis16 e4
	r d'4. r16 d cis8. cis16
	e8. e16 b8. b16 d8. d16 c4
	b4. r16 cis ais4 b ~                           % m 24
	b8 r16 b a4. r16 a g4
	fis e4. r16 e d8. d16
	fis8. fis16 cis8. cis16 e4 d
	cis d4. r16 d cis8. cis16                      % m 28
	dis8. dis16 e4. r16 e d4 ~
	d8 r16 d cis8. b16 a4 a' ~
	a8 r16 a gis8. gis16 b8. b16 e,8. e16
	g8. g16 cis,4 b4. cis16( d)                    % m 32
	cis1\fermata \bar "||"

	% largo
	\time 3/2 cis'2 cis cis
	b1 b2 ~
	b a4 b cis2                                    % m 36
	b b b
	cis dis1
	e1.
	gis,2 gis gis                                  % m 40
	fis1 fis2 ~
	fis e4 fis g2
	fis2 fis e
	fis gis1                                       % m 44
	a2 a b
	cis d e
	a, b cis
	fis, gis a                                     % m 48
	eis fis gis
	gis4( fis) eis2. fis4
	fis2 fis' e
	d1 cis2 ~                                      % m 52
	cis b1
	a gis2 ~
	gis fis1
	e dis2                                         % m 56
	e e' fis
	gis a b
	e, fis gis
	cis, d e                                       % m 60
	a, b cis
	d1 cis2
	d fis1 ~
	fis2 e d ~                                     % m 64
	d cis1
	b2. a4 gis2 ~
	gis fis1
	e e2                                           % m 68
	dis dis' cis
	b cis dis
	e e d
	cis d e                                        % m 72
	b cis d
	gis, cis b
	a b cis
	gis a b                                        % m 76
	e, fis gis
	a gis1
	a2 e' d
	cis d e                                        % m 80
	a, b cis
	gis cis b
	a b cis
	gis a b                                        % m 84
	e, fis g
	a1 gis2
	a1.\fermata \bar "||"

	% grave
	\time 2/2 ais4 ais8. ais16 ais4 b              % m 88
	fis fis8. fis16 fis4 g
	dis2 r
	dis'4 dis8. dis16 dis4 d
	cis cis8. cis16 cis4 e                         % m 92
	gis, a4. a8 gis4
	a gis fis e
	d d'8. d16 cis4 b
	ais b4. b8 ais4                                % m 96
	b a gis g
	fis e d c'
	b a gis a ~

	% presto
	a gis a8 e a cis                               % m 100
	b a d cis b cis16 d e8 d
	cis fis16 e d cis b a gis4. e8
	a gis fis e b' a gis fis
	e e fis gis a2                                 % m 104
	R1
	r2 r8 a d fis
	e d g fis e fis16 g a8 g
	fis8 b16 a g fis e d cis b ais gis fis8 b16 a  % m 108
	gis8 fis gis16 ais b8 b4 ais
	b8 d e fis b,4. b8
	dis gis fis e a gis fis gis16 a
	b8 gis a b a gis fis4                          % m 112
	e4. e,8 fis4. fis8
	gis4. gis8 a a d fis
	e d g fis e fis16 g a8 g
	fis b16 a g fis e d e8 d d cis                 % m 116
	d cis16 b a8 a16 b cis8 d16 cis b8 cis16 d
	e8 d cis d16 e fis8 d e4 ~
	e8 fis16 e d cis b a gis8 a16 b cis8 b
	ais d16 cis b a gis fis eis8 fis fis eis       % m 120
	fis a d4. b8 cis dis
	e b e g fis e a g
	fis g16 a b8 a gis b16 a gis fis e d
	cis4 a d fis                                   % m 124
	e d g fis
	e8 fis16 g a8 g fis d g b
	a g c b a16 a, b c d8 c
	b4 fis g gis                                   % m 128
	ais8 b16 cis d8 cis b e16 d cis b a gis
	fis8 ais b2 ais4
	b8 a gis fis' eis fis16 gis a8 gis
	fis fis16 e d cis b a gis8 e' d4               % m 132
	cis r8 e, gis cis b a
	d cis b cis16 d e8 cis d e
	d cis b4 a8 a\p b cis
	b a4 gis8 a4\fermata r \bar "|."               % m 136
}

basso = \relative c {
	\clef bass \key d \major \time 2/2
	R1*4
	r2 r4 e ~
	e8 r16 e cis8. cis16 e8. e16 b8. b16
	d8. d16 fis,8. fis16 a4 a' ~
	a8 r16 a gis8. gis16 b8. b16 fis8. fis16      % m 8
	a4 d,4. r16 d cis8. cis16
	e8. e16 b8. b16 d8. d16 a8. a16
	cis4 gis a a ~
	a8 r16 a gis8. gis16 b8. b16 fis8. fis16      % m 12
	a2 d,
	r4 a''4. r16 a fis8. fis16
	a8. a16 e8. e16 g4 b,
	dis fis ais, b                                % m 16
	fis a e g' ~
	g8 r16 g fis8. fis16 a8. a16 e8. e16
	g4 d4. r16 d cis8. cis16
	e1 ~                                          % m 20
	e4 d'4. r16 d cis8. cis16
	e8. e16 b8. b16 d8. d16 a8. a16
	c4 e gis, a
	dis, e4. r16 e dis8. dis16                    % m 24
	fis8. fis16 cis8. cis16 e8. e16 b8. b16
	d8. d16 g,8. g16 b2
	fis1 ~
	fis2 a4 a' ~                                  % m 28
	a8 r16 a gis8. gis16 b8. b16 fis8. fis16
	gis4 a8. gis16 fis2
	cis4 e gis, a
	e4. d8 e2                                     % m 32
	a1\fermata \bar "||"

	% largo
	\time 3/2 a1 a'2 ~
	a gis1
	a2 a a                                        % m 36
	gis gis gis
	fis b b,
	e1.
	e,1 e'2 ~                                     % m 40
	e dis1
	e2 e e
	d d cis
	b e e,                                        % m 44
	a1. ~
	a ~
	a1 a2
	d1 cis2                                       % m 48
	b1.
	cis
	fis,1 cis'2
	fis gis a                                     % m 52
	d, e fis
	cis dis e
	a, b cis
	gis b1                                        % m 56
	e,1.
	e' ~
	e1 e2
	a1 g2 ~                                       % m 60
	g fis e
	d a' a,
	d d' cis
	b cis d                                       % m 64
	gis, a b
	e, fis gis
	cis, dis e
	gis, ais1                                     % m 68
	b1. ~
	b2 b' a
	gis a b
	e, fis e                                      % m 72
	d cis b
	e1. ~
	e ~
	e1 d2 ~                                       % m 76
	d cis b
	a e'' d
	cis d e
	a, b cis                                      % m 80
	d d,1
	e1. ~
	e ~
	e1 d2 ~                                       % m 84
	d cis b
	a e1
	a1.\fermata \bar "||"

	% grave
	\time 2/2 fis'4 fis8. fis16 fis4 b,           % m 88
	d d8. d16 d4 g,
	b2 r
	b'4 b8. b16 b4 fis
	a a8. a16 a4 cis,                             % m 92
	e a, e'4. e8
	fis4 e d cis
	b b'8. b16 a4 g
	fis e fis4. fis8                              % m 96
	g4 fis e e
	d c b a
	g f e d
	e2 a                                          % m 100
	R1*3

	% presto
	r2 r8 a a' cis                                % m 104
	b a d cis b cis16 d e8 d
	cis e16 d cis b a g fis4. d8
	g4 g, a2
	b4 e, fis8 fis'16 e d8 b                      % m 108
	e d cis b fis'4 fis,
	b8 b cis dis e b e gis
	fis e a gis fis gis16 a b8 a
	gis8 cis16 b a gis fis e dis8 e b' b,         % m 112
	cis4. cis8 d4. d8
	e4. e8 fis4. fis8
	g4. g8 a4. a8
	b4. b8 cis d a a,                             % m 116
	d d, d' fis e d g fis
	e fis16 g a8 g fis b16 a g fis e d
	cis4 d e cis
	fis b, cis8 a b cis                           % m 120
	fis,4. fis'8 g4. fis8
	e d c b a g fis e
	b'4. b8 e e fis gis
	a g fis e d cis b a                           % m 124
	g4 fis e d
	a'4. a8 d2 ~
	d d,4. d'8
	dis2 e4. e8                                   % m 128
	fis4. fis8 g4 cis,
	d4. e8 fis4 fis,
	b4. b8 cis4 a
	d2 ~ d8 cis b4                                % m 132
	a8 e a cis b a d cis
	b cis16 d e8 d cis fis16 e d cis b a
	gis8 a e e' fis4 cis\p
	d e a,\fermata r \bar "|."                    % m 136
}

continuo = {
	<<
	\new Voice \relative c'' {
		\clef soprano \key d \major \time 2/2
		r4 e4. e8 cis8. cis16
		\autoBeamOff
		e8.[ e16 b8. b16] d8.[ e16]
		<<
		{ \voiceOne
			cis8.[ d16] \autoBeamOn
			b4 e4. e8 d4 ~
			d8 d cis8. cis16 fis4. fis8       % m 4a
			e4. e8 d4
		}
		\new Voice { \voiceTwo
			a4 ~
			a8 a gis8. gis16 b8. b16 fis8. fis16
			a2 ~ a8. d,16 d'4 ~               % m 4b
			d8 d cis4. cis8
		}
		>> \oneVoice
		    \clef bass e,,4 ~
		e cis e b
		d fis, a a' ~
		a gis b fis                               % m 8
		a d, ~ d cis
		e b d a
		cis gis a a ~
		a gis b fis                               % m 12
		a4. g8 fis4 d ~
		d a'' ~ a fis
		a e g b,
		dis e ais, b                              % m 16
		fis a e g' ~
		g fis a e
		g d ~ d cis
		e2 ~ e ~                                  % m 20
		e4 d' ~ d cis
		\clef alto e b d a
		c e gis, a
		\clef bass dis, e ~ e dis                 % m 24
		fis cis e b
		d g, b2
		fis ~ fis ~
		fis a4 a' ~                               % m 28
		a gis b fis
		gis a fis2
		cis4 e gis, a
		e4. d8 e2                                 % m 32
		a1\fermata \bar "||"

		% largo
		\time 3/2 a1 a'2 ~
		a gis1
		a a2                                      % m 36
		gis1 gis2
		fis b b,
		e1.
		e,1 e'2 ~                                 % m 40
		e dis1
		e1 e2
		d1 cis2
		b e e,                                    % m 44
		a1. ~
		a ~
		a1 a2
		d1 cis2                                   % m 48
		b1.
		cis
		fis,1 cis'2
		fis gis a                                 % m 52
		d, e fis
		cis dis e
		a, b cis
		gis b1                                    % m 56
		e,1.
		e' ~
		e1 e2
		a1 g2 ~                                   % m 60
		g fis e
		d a1
		d2 d' cis
		b cis d                                   % m 64
		gis, a b
		e, fis gis
		cis, dis e
		gis, ais1                                 % m 68
		b1. ~
		b2 b' a
		gis a b
		e, fis e                                  % m 72
		d cis b
		e1. ~
		e ~
		e1 d2 ~                                   % m 76
		d cis b
		a e'' d
		cis d e
		a, b cis                                  % m 80
		d d,1
		e1. ~
		e ~
		e1 d2 ~                                   % m 84
		d cis b
		a e1
		a1.\fermata \bar "||"

		% grave
		\time 2/2 fis'4 fis8. fis16 fis4 b,       % m 88
		d d8. d16 d4 g,
		b2 r
		b'4 b8. b16 b4 fis
		a a8. a16 a4 cis,                         % m 92
		e a, e'2
		fis4 e d cis
		b b' a g
		fis e fis2                                % m 96
		g4 fis e e
		d cis b a
		g f e d

		% presto
		e2 a8 \clef soprano e'' a cis             % m 100
		b a d cis b cis16 d e8 d
		cis fis16 e d cis b a gis4. e8
		a gis fis e b' a gis fis
		e e fis gis a \clef bass a,, a' cis       % m 104
		b a d cis b cis16 d e8 d
		cis4 a fis4. d8
		g4 g, a2
		b4 e, fis8 fis' d b                       % m 108
		e d cis b fis2
		b e8 b e gis
		fis e a gis fis gis16 a b8 a
		gis cis a e dis e b4                      % m 112
		cis2 d
		e fis
		g a
		b cis8 d a4                               % m 116
		d,4. fis8 e d g fis
		e fis16 g a8 g fis b g e
		cis4 d e cis
		fis b, cis8 a b cis                       % m 120
		fis2 g4 fis
		e8 d c b a g fis e
		b'2 e
		a8 g fis e d cis b a                      % m 124
		g4 fis e d
		a'2 d ~
		d ~ d
		dis e4 e                                  % m 128
		fis2 g4 cis,
		d4. e8 fis4 fis,
		b4. b8 cis4 a
		d2 ~ d8 cis b4                            % m 132
		a8 e a cis b a d cis
		b cis16 d e8 d cis fis d a
		gis a e'4 fis cis\p
		d e a,\fermata r \bar "|."                % m 136
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure #'font-size = #-1
		\figuremode {
			r1
			r
			r
			r2 <_+>                         % m 4
			r2. <7>4
			<6 5>2 <_+>4 <6->
			<4>2 <4>4 <3>
			<2> r2 <6>4                     % m 8
			r2 <2>
			r4 <6> r2
			r4 <5-> <6> <5>
			<4+ 2> <6> <4> r                % m 12
			<4> <3> r2
			r <7>4 <6>
			<_-> <_+> <6> <_+>
			<6> <_+> <5>2                   % m 16
			<6>4 <_-> <6-> r
			<2>2 <_->4 <6->
			r <6> <5 2> r
			<4> <3+> <7> <6>                % m 20
			r2 <2>
			<4>4 <6> r2
			<6> <5->4 <_->
			<6 5>2 <4+ 2>4 <6>              % m 24
			<4> <6> <4> <6>
			r <6> <4> <3>
			<4> <3+> <7> <6>
			<5> <6> <4> <3>                 % m 28
			<2>2 <4>4 <6>
			<6 5>2 <7>4 <5>
			r2 <5>
			r1                              % m 32
			r

			% largo
			r1.
			<2>
			<9>2 <8> r                      % m 36
			<7> <6> r
			<7>1.
			r
			r                               % m 40
			<2>
			<5 9>2 <6 8> r
			<7> <6> r
			<7>1.                           % m 44
			r
			r
			r
			<5>2 <6> <6>                    % m 48
			<6+>1.
			<4>2 <3+> r
			r1.
			<6>2 <6 5> r                    % m 52
			<7> r <4>
			<6> r <6 5>
			<7+> r <4>
			<6> <4> <3>                     % m 56
			r1. r r
			r1 <6>2                         % m 60
			<2> r1
			r1.
			r
			<6 5>                           % m 64
			<6 5>1 <9>2
			<7>1.
			<6 5+>1 <9>2
			r <6 5>1                        % m 68
			r1.
			r1 <4+>2
			<6>1.
			<6>2 <6> r                      % m 72
			<6>1.
			r
			<6 4>
			<5 3+>1 <6>2                    % m 76
			<2>1.
			r
			r
			r2 <7> r                        % m 80
			r1.
			r
			<6 4>2 <7 5> <8 6>
			<5 3+> <6 4> <6>                % m 84
			<2> r1
			r1.
			r

			% grave
			<_+>1                           % m 88
			r2. <6>4
			<_+>1
			<_+>2. <6->4
			r1                              % m 92
			r2 <4>4 <3+>
			<6> <6> <6> <6>
			<6+> <6-> <6> <6>
			<6 _+>2 <4>4 <3+>               % m 96
			<6> <6> <6> <6->
			<6> <6> <6+> <6- 3->
			<6> <6> <7> <7>

			% presto
			r1                              % m 100
			r
			r
			<6>8 <6> r2.
			r1                              % m 104
			r4 <6> r2
			r2 <6>
			<6>8 <5> <6> <5> <3> <4>4 <3>8
			r2 <_+>4 <6>                    % m 108
			<6>8 <6> r4 <4> <3+>
			r1
			<6+>4 <6>8 <6> r2
			r4 <6> r2                       % m 112
			<5+>4 <6> <6>8 <5> r4
			<5>8 <6> r4 <5> <6>
			<6>8 <5> r4 <5>8 <6> r4
			<5> <6> r2                      % m 116
			r4. <6>8 <6>4 <6>
			r2. <6>4
			r1
			<_+>2 <_+>4 <6+ 5>              % m 120
			<5> <6> <7> <6>
			r8 <4+> <6> <6> <6> <6> r4
			<3+>8 <4>4 <3>8 r2
			r1                              % m 124
			<6>4 <6> <6> r
			<4> <3-> <7> <6>
			r1
			<6>2 <6 _->4 <5 _+>             % m 128

			<5 _+>\bassFigureExtendersOn
			    <6 _+> r2 \bassFigureExtendersOff
			<7>4 <6> r2
			<6+>8 <5> <6> <5> <_+>2
			r <2>4 <7>8 <6>                 % m 132
			r4 <6> <6+> <6>8 <6>
			r2. <6>4
			r <4>8 <3> r4 r
			<6>8 <5> <4> <3> r2             % m 136
		}
	}
	>>
}	        

\header {
	title    = "Sonata X"
	subtitle = "Z 799"
	composer = "Henry Purcell"
	tagline  = ""
}

\score {
	<<
	\override Score.Script.staff-padding = #0.8
	\new Staff {
		\set Staff.instrumentName = #"Violin I"
		\vlone
	}
	\new Staff {
		\set Staff.instrumentName = #"Violin II"
		\vltwo
	}
	\new Staff {
		\set Staff.instrumentName = #"Basso"
		\basso
	}
	\new Staff {
		\set Staff.instrumentName = #"Continuo"
		\continuo
	}
	>>
}
