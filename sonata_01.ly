\version "2.18.2"

\include "config.ly"

vivace = \markup { \bold Vivace }
adagio = \markup { \bold Adagio }
presto = \markup { \bold Presto }
largo  = \markup { \bold Largo }
dalseg = \markup { \halign #-3.5 D.S. }

vlone = \relative c'' {
	\clef treble \key g \minor \time 2/2
	r4 g bes4. bes8
	a4 d4. d8 c4
	d4 bes a4. bes16 c
	bes8 a16( g) es'4. es8 d4               % m 4
	f4. f8 e4 a ~
	a8 a g a c,2 ~
	c4 bes8. a16 bes4. fis8
	g4 g bes4. bes8                         % m 8
	a4 d4. d8 c4 ~
	c8 c b4 c c
	es4. es8 d4 g ~
	g8 g f2 es4                             % m 12
	d4 g, bes4. bes8
	a4 d4. d8 cis4
	d4. d,8 f2
	fis4 g4. g8 fis4                        % m 16
	g2 r
	r2. d'4
	es4. es8 d4 g ~
	g8 g fis4 g2                            % m 20
	r2 r4 a,
	bes4. bes8 a4 d ~
	d8 d c2 bes8. a16
	a4. g8 g2\fermata \bar "||"             % m 24

	\time 3/2
	r1.^\vivace
	r1. r1. r1.                             % m 28
	r4 g'8 f e4 a d, g
	c, f8 es d4 g c, f
	bes,4 es8 d c4 f bes, es
	a,4 f' e d d4. cis8                     % m 32
	d4 a d bes c a
	bes g c a bes g
	a c f d es c
	d2 r r                                  % m 36
	r1. r1. r1.
	r4 e, a f g e                           % m 40
	f d g e f d
	e c f d c cis
	d d'8 c bes4 es a, d
	g, c8 bes a4 d g, c                     % m 44
	f, bes8 a g4 c f, bes
	bes a a2. g4
	a c f d es c
	d bes es c d bes                        % m 48
	c a d bes c a
	bes2 r r
	r4 d8 c bes4 es a, d
	g, c8 bes a4 d g, c                     % m 52
	fis, g g2. fis4
	g d' g es f d
	es c f d es c
	d bes es c d bes                        % m 56
	es d c2. bes4
	bes f' bes g c a
	bes g c a bes g
	a f bes g a f                           % m 60
	g a f2. e4
	d d8 c bes4 es a, d
	g, c8 bes a4 d g, c
	fis, a'8 g fis4 bes e, a                % m 64
	d, g g2. fis4
	g1.\fermata \bar "||"

	\time 2/2
	d4^\adagio d8. d16 d2 ~
	d4 es8. f16 d4. c8                      % m 68
	c2 r4 es8. es16
	es8( a,4) a8 a4 a'8. a16
	a2. a8. a16
	a4 bes8. a16 a4. g8                     % m 72
	g2 r4 bes8. bes16
	bes8( e,) f8. g16 e4. d8
	d2 r4 f8. f16
	f8( c4) c8 c4 d8. d16                   % m 76
	d8( g,) c8. c16 c8( fis,8) fis8. fis16
	g4 g8. a16 fis4. g8
	g2^\presto r
	r2 r4 d'                                % m 80
	es4. d16 c d8 g, g' f
	es d c bes a f f'4 ~
	f8 es16 d es4. d8 d4 ~
	d c d8 d g4 ~                           % m 84
	g fis g2 ~
	g r
	r4 e f4. e16 d
	e8 a, a' g f es d c                     % m 88
	bes g g'2 fis4
	g8 f es d c b c4 ~
	c4 b c g'
	aes4. g16 f g8 c, c' bes                % m 92
	aes g f es d bes es4 ~
	es8 es d4 es8. f16 g4
	f bes,2 a8 c
	des4. c16 bes c8 f, f' es               % m 96
	des c bes a g4 g ~
	g fis g2
	r4 d' es4. d16 c
	d8 g, g' f e a, a' a,                   % m 100
	c4. b16 a b8 e, e' d
	cis b a g f4 bes
	e,8 e' f e d4. d8
	c4. c8 bes4. bes8                       % m 104
	a2 ~ a8 d c bes
	a c bes a g bes a g
	fis4. fis8 g a bes g
	a bes c a b g' f es                     % m 108
	d f es d c es d c
	b2 ~ b8 b c d
	es c d es f d es f
	g bes aes g f aes g f                   % m 112
	es g f es d2 ~
	d1 ~
	d8 fis, g a bes g a bes
	c a bes c d2 ~                          % m 116
	d2. c4 ~
	c bes a4. g8
	g1\fermata \bar "||"

	\time 3/2
	bes'2^\largo g2. fis8( g                % m 120
	a2) d,2. d4
	es2 c2. bes8( c
	d2) a2. a4
	bes2 a2. g4                             % m 124
	es'2 c2. f4
	f4( d) es2. f4
	d2 bes1 \bar "||"

	f'2 g2. a4                              % m 128
	bes2 g2. g4
	g4. a8 f2. e4
	e2 e2. e4
	f2 e2. e4                               % m 132
	e2 f2. g4
	f4. e8 e2. d4
	d2 d1
	bes2 b2. b4                             % m 136
	c2 c2. bes4
	a2 a2. g4
	fis2 fis2. d'4\p
	\mark \markup { \small \musicglyph #"scripts.segno" }
	d4( c) c2. c4                           % m 140
	c( bes) bes2. bes4
	bes( a) a2. g4
	g2 g1^\dalseg\fermata \bar "|."
}

vltwo = \relative c' {
	\clef treble \key g \minor \time 2/2
	r1
	r4 d es4. es8
	d4 g4. g8 fis4
	g4. a16 bes f4 g8. g'16         % m 4
	cis,4 d g4. g8
	f4 bes4. bes8 a8. bes16
	d,2 d ~
	d4 c8. d16 fis,4 e8( d)         % m 8
	r4 d'4 es4. es8
	d4 g4. g8 f4
	g g, f g
	aes4. aes8 g4 c ~               % m 12
	c8 c bes4 d d,
	f4. f8 e4 a ~
	a8 a g4 a a
	bes4. bes8 a4 d ~               % m 16
	d8 d cis4 d d,
	g4. g8 fis4 bes ~
	bes8 bes a4 fis e8( d)
	r2 r4 g                         % m 20
	bes4. bes8 a4 d ~
	d8 d c2 bes8. a16
	g4 a8. bes16 fis4 g ~
	g fis g2\fermata \bar "||"      % m 24

	\time 3/2
	r4 d'8 c bes4 es a, d
	g, c8 bes a4 d g, c
	f, bes8 a g4 c f, bes
	e, a fis g g4. fis8             % m 28
	g4 g c a bes g
	a f bes g a f
	g es aes f g es
	f d bes' g a2                   % m 32
	d,4 f bes g a fis
	g e a f g e
	f a d bes c a
	bes f'8 es d4 g c, f            % m 36
	bes, es8 d c4 f bes, es
	a, d8 c bes4 es a, d
	g, es' d c c4. b8
	c4 g c a bes g                  % m 40
	a f bes g a f
	g e a f g e
	f d g es f d
	es c f d es c                   % m 44
	d bes es c d g
	e f f2. e4
	f a d bes c a
	bes g c a bes g                 % m 48
	a f bes g a fis
	g g'8 f e4 a d, g
	c, f8 es d4 g c, f
	bes, es8 d c4 f bes, es         % m 52
	a, bes bes2. a4
	g bes es c d b
	c a d bes c a
	bes g c a bes g                 % m 56
	c bes a2. bes4
	bes d g e a f
	g e a f g e
	f d g e f d                     % m 60
	e f d2. cis4
	d bes8 a g4 c fis, bes
	e, a8 g fis4 bes e, a
	d, fis'8 e d2 c                 % m 64
	bes a1
	g1.\fermata \bar "||"

	\time 2/2
	b4 b8. b16 b2 ~
	b4 c ~ c b                      % m 68
	c es8. es16 es8( a,) g4 ~
	g fis8 e fis4 fis'8. fis16
	fis2. fis8. fis16
	fis4 g2 fis4                    % m 72
	g bes8. bes16 bes8( e,) d8. e16
	cis4 d2 cis4
	d f8. f16 f8( b,) bes4 ~
	bes a8. g16 a2                  % m 76
	r4 es'8. es16 es8( a,) a8. a16
	bes4 bes8. c16 a4. g8
	g4 g bes4. a16 g                % presto
	a8 d, d' c bes a g f            % m 80
	es c c'2 b4
	c e, f4. d8
	g4. c,8 f4. bes,8
	es2 d                           % m 84
	r2 r4 d'
	es4. d16 c d8 g, g' f
	es d c bes a d, d'4 ~
	d cis d a'                      % m 88
	bes4. a16 g a8 d, d' c
	bes a g f es d es f
	d2 ~ d8 g, es' d
	c4. bes16 aes bes4 g            % m 92
	c8 bes aes g f4 g
	aes4. g16 f g8 c, c' bes
	a g f es16 d c4 c' ~
	c8 bes bes2 a4                  % m 96
	bes f'4. bes,8 es4
	a, a bes4. a16 g
	a8 d, d' c b g c4 ~
	c b cis d                       % m 100
	gis, a2 gis4
	a8 g f e d d d'4 ~
	d c4. c8 bes4 ~
	bes8 bes a4. a8 g4 ~            % m 104
	g4. g8 fis bes a g
	fis a g f e g fis e
	d a' d2. ~
	d2 ~ d8 es d c                  % m 108
	b d c bes a c b a
	g2 ~ g8 g a b
	c a bes c d bes c d
	es g f es d f es d              % m 112
	c es d c bes d c bes
	a c bes a g bes a g
	fis d e fis g e fis g
	a fis g a bes bes a g           % m 116
	fis a g f e g fis e
	d4 g2 fis4
	g1\fermata \bar "||"

	\time 3/2     % largo
	d'2 d2. d4                      % m 120
	c2 c2. c4
	bes2 a2. g4
	fis2 fis2. fis4
	g2 d2. d'4                      % m 124
	g,2 a2. c4
	c( bes) bes2. a4
	bes2 f1 \bar "||"

	d'2 e2. fis4                    % m 128
	g2 e2. e4
	e4. f8 d2. cis4
	cis2 cis2. cis4
	cis2 b2. cis4                   % m 132
	d2 d2. d4
	d2 cis2. d4
	d2 fis,1
	g2 f2. f4                       % m 136
	e2 e2. d4
	es2 es2. es4
	d2 d2. bes'4\p
	bes4( a) a2. a4                 % m 140
	a( g) g2. g4
	g2 fis2. g4
	g2 g1\fermata \bar "|."
}

basso = \relative c {
	\clef bass \key g \minor \time 2/2
	r1 r1 r1
	r4 g bes4. bes8              % m 4
	a4 d4. d8 cis4
	d e f2
	fis2 ~ fis4 g8. d16
	es4. es8 d4 g ~              % m 8
	g8 g fis4 g c,
	g g aes4. aes8
	g4 c4. c8 b4
	c d es f                     % m 12
	g2 g,
	d' a'4 a,
	bes4. bes8 a4 d ~
	d8 d c4 d2                   % m 16
	e4 e, f4. f8
	e4 a4. a8 g4
	c2. bes4
	a d es4. es8                 % m 20
	d4 g4. g8 fis4
	g e f d
	es c d g,
	d2 g\fermata \bar "||"       % m 24

	\time 3/2         % vivace
	r1. r1. r1. r1.              % m 28
	r1. r1. r1. r1.              % m 32
	r4 d'8 c bes4 es a, d
	g, c8 bes a4 d g, c
	f, f'8 es d4 g c, f
	bes, bes 'bes g a f          % m 36
	g es aes f g es
	f d g es f d
	es c aes' f g g,
	c c'8 bes a4 d g, c          % m 40
	f, bes8 a g4 c f, bes
	e, a8 g f4 bes e, a
	d, bes es c d bes
	c a d bes c a                % m 44
	bes g c a bes g
	c f, c'1
	f,2 r r
	r1.                          % m 48
	r1.
	r4 g' c a bes g
	a f g es f d
	es c f d es c                % m 52
	d g, d1
	g4 g'8 f es4 aes d, g
	c,4 f8 es d4 g c, f
	bes, es8 d c4 f bes, es      % m 56
	a, bes f'2 f,
	bes4 bes'8 a g4 c a d
	g, c8 bes a4 d g, c
	f, bes8 a g4 c f, bes        % m 60
	e, d a'2 a,
	d1. ~
	d1. ~
	d1. ~                        % m 64
	d1.
	g,1.\fermata \bar "||"

	\time 2/2         % adagio
	g'2. g8. g16
	f4 es g g,                   % m 68
	c2. c4
	cis2 d ~
	d4 d'8. d16 d2
	c4 bes d d,                  % m 72
	g2. g4
	a2 a,
	d2. d4
	e2 f                         % m 76
	es d
	c d
	g, r
	r1                           % m 80
	r1 r1 r1          % presto
	r4 a' bes4. a16 g            % m 84
	a8 d, d' c bes a g f
	es c c'2 b4
	c c, f bes
	g a d, fis                   % m 88
	g es c d
	g, g' aes4. g16 f
	g8 g, g' f es d c bes
	aes f f'2 e4                 % m 92
	f2 bes
	bes, es ~
	es4 d f2
	f,2. f4                      % m 96
	bes4 d es4. d16 c
	d8 d, d' c bes g g'4 ~
	g4 fis g es
	f g2 f4                      % m 100
	e2 e,
	a4 a' bes4. a16 g
	a8 a, a' g fis a g f
	e g fis e d f es d           % m 104
	c es d c d2
	d,1 ~
	d4. d'8 e f g e
	fis g a fis g2               % m 108
	g,1 ~
	g8 g' f es d f es d
	c es d c bes aes g f
	es2 bes' ~                   % m 112
	bes4 a bes8 bes' a g
	fis a g f e g fis e
	d1 ~
	d2 ~ d8 d c bes              % m 116
	a c bes a g bes a g
	fis4 g d'2
	g,1\fermata \bar "||"

	\time 3/2      % largo
	g'2 g1 ~                     % m 120
	g2 fis1
	g2 es1
	d2 d2. c4
	bes2 b1                      % m 124
	c2 f2. a,4
	bes2 f1
	bes1. \bar "||"

	bes'1 a2                     % m 128
	g c2. c4
	f,2 g1
	a2 a2. a4
	a2 g2. a4                    % m 132
	f4. e8 d4. c8 bes2
	g a1
	d2 d1
	es2 d1
	c c2                         % m 136
	c2 c2. c4
	d2 d2. d4\p      % segno
	e2 fis2. fis4
	g2 c,2. c4                   % m 140
	d2 d,2. d4
	g2 g1 \fermata \bar "|."
}

continuo = {
	<<
	\new Voice \relative c'' {
		\clef soprano \key g \minor \time 2/2
		r4 g bes4. bes8
		\override Voice.Stem #'direction = #UP a4
		<<
		{ \voiceOne
			  d4 ~ d c
			d bes a2

		}
		\new Voice { \voiceTwo
			  d,4 es4. es8
			d4 g ~ g fis
			g4
		}
		>> \oneVoice
		\clef bass
		   g,,4 bes4. bes8         % m 4
		a4 d4. d8 cis4
		d e f2
		fis2 ~ fis4 g8. d16
		es4. es8 d4 g4 ~           % m 8
		g fis g c,
		g2 aes
		g4 c ~ c b
		c d es f                   % m 12
		g2 g,
		d' a
		bes a4 d ~
		d c d2                     % m 16
		e4 e, f2
		e4 a ~ a g
		c2 ~ c4 bes
		a d es2                    % m 20
		d4 g ~ g4 fis
		g e f d
		es c d g,
		d2 g\fermata \bar "||"      % m 24

		\clef soprano \time 3/2    % vivace
		r4 d'''8 c bes4 es a, d
		g, c8 bes a4 d g, c
		f, bes8 a g4 c f, bes
		e, a fis g2 ~ g8 fis8       % m 28
		g4 g c a bes g
		a f bes g a f
		g es aes f g es
		f d bes' g a2              % m 32
		d,4 \clef bass d,8 c bes4 es a, d
		g, c8 bes a4 d g, c
		f, f'8 es d4 g c, f
		bes, bes bes' g a f         % m 36
		g es aes f g es
		f d g es f d
		es c aes' f g g,
		c c'8 bes a4 d g, c          % m 40
		f, bes8 a g4 c f, bes
		e, a8 g f4 bes e, a
		d, bes es c d bes
		c a d bes c a                % m 44
		bes g c a bes g
		c f, c'1
		f,4 \clef soprano
		<<
		{ \voiceOne
			    c'''4 f d es c
			d bes es c d bes     % (I) m 48
			c a d bes c a
			bes
		}
		\new Voice { \voiceTwo
			    a4 d bes c a
			bes g c a bes g      % (II) m 48
			a f bes g a fis
			g
		}
		>> \oneVoice
		\clef bass g, c a bes g
		a f g es f d
		es c f d es c                % m 52
		d g, d1
		g4 g'8 f es4 aes d, g
		c,4 f8 es d4 g c, f
		bes, es8 d c4 f bes, es      % m 56
		a, bes f1
		bes4 bes'8 a g4 c a d
		g, c8 bes a4 d g, c
		f, bes8 a g4 c f, bes        % m 60
		e, d a1
		d,1. ~
		d1. ~
		d1. ~                        % m 64
		d1.
		g1.\fermata \bar "||"

		\time 2/2         % adagio
		g'2. g4
		f es g2                      % m 68
		c,2 ~ c
		cis2 d ~
		d d'
		c4 bes d d,                  % m 72
		g2 g
		a a,
		d2 ~ d
		e2 f                         % m 76
		es d
		c d
		g,4 \clef soprano
		    g'' bes4. a16 g     % presto
		a8 d, d' c bes a g f         % m 80
		es c c'4 ~ c b4
		c e, f4. d8
		g4. c,8 f4. bes,8
		<<
		{ \voiceOne
			es2
		}
		\new Voice { \voiceTwo
			r4 a,
		}
		>> \oneVoice \clef bass
		bes4. a16 g                  % m 84
		a8 d, d' c bes a g f
		es c c'4 ~ c b4
		c c, f bes
		g a d, fis                   % m 88
		g es c d
		g, g' aes f
		g4. f8 es d c bes
		aes f f'4 ~ f e4             % m 92
		f2 bes
		bes, es ~
		es4 d f2
		f,2 ~ f                      % m 96
		bes4 d es c
		d4. c8 bes g g'4 ~
		g fis g es
		f g ~ g f                    % m 100
		e2 ~ e
		a,4 a' bes g
		a4. g8 fis4 g8 fis
		e4 fis8 e d4 es8 d           % m 104
		c2 d
		d,1 ~
		d4. d'8 e fis g e
		fis g a fis g2               % m 108
		g,1 ~
		g1
		c2 bes
		es, bes' ~                   % m 112
		bes4 a bes8 bes' a g
		fis4 g8 fis e g fis e
		d1 ~
		d2 d,                        % m 116
		d1 ~
		d1
		g1\fermata \bar "||"

		\time 3/2        % largo
		g2 g'1 ~                     % m 120
		g2 fis1
		g2 es1
		d2 d2. c4
		bes2 b1                      % m 124
		c2 f2. a,4
		bes2 f1
		bes1. \bar "||"
		bes'1 a2                     % m 128
		g c1
		f,2 g1
		a a2
		a g1                         % m 132
		f4. es8 d4. c8 bes2
		g a1
		d,1.
		es'2 d1                      % m 136
		c1.
		c1.
		d1 d2     % segno
		e fis1                       % m 140
		g2 c,1
		d2 d,1
		g1.\fermata \bar "|."
	}

	\new FiguredBass {
		\figuremode {
			<_>1 <_>1 <_>1
			<_>4 <6>4 <5 4>4. <6 3>8     % m 4
			<6 _+>2 <4 2>4 <6 5>
			<_>4 <5> <4> <3>
			<6 5>4 <6 4> <_>2
			<7>4 <6> <6 _+> <_>          % m 8
			<2>2 <6 5>2
			<4>4 <3+> <7> <6>
			<6>2 <2>2
			<6- 5>2 <9>4 <7>             % m 12
			<4> <3> <_>2
			<_>2 <4>4 <3+>
			<7>2 <6>4 <6>
			<6 _+>4 <7> <4> <3+>         % m 16
			<7> <6+> <6>2
			<7>4 <7>2 <6+ 2>4
			<7> <6> <4+ 2> <_>
			<7>2 <7>4 <6>                % m 20
			<6>2 <2>
			<_>4 <6 5>2 <6>4
			<7> <6> <7>2
			<_>1

			<_>1. <_>1. <_>1. <_>1.
			<_>2 <_+>4 <_>2.
			<_>1. <_>1.
			<_>2 <4+> <_>                % m 32
			<_>1. <_>1. <_>1. <_>1.
			<_>1. <_>1. <_>1. <_>1.
			<_>1. <_>1. <_>1. <_>1.
			<_>1.
			<6>2 <6>4 <5 _+> <5>2        % m 36
			<_>1. <_>1. <_>1. <_>1.
			<_>1. <_>1.
			<_>2 <6 4> <5 3+>            % m 53
			<_>1. <_>1. <_>1. <_>1.
			<_>1. <_>1. <_>1.
			<_>2 <6 4> <5+ 3+>           % m 61 FIXME?
			<_>1. <_>1. <_>1. <_>1.
			<_>1.

			% adagio
			<_+>1                        % m 66
			<4+>1
			<_>2 <6>4 <5>
			<6 5>2 <_+>
			<_>1                         % m 70
			<6 4+>1
			<_>2 <6+>4 <5>
			<_>1
			<_>2 <6+>4 <6->              % m 72
			<6 5>2 <5>4 <6>
			<7>4 <6>4 <_+>2
			<7>1
			<_>1                         % m 76
			<_>1
			<_>2 <2>2
			<_>1
			<7>8 <6> <_>4 <7>8 <6> <_>4  % m 80
			<_>2 <6>2
			<7>2 <6>2
			<_>2 <2>2
			<_>4 <_+> <7> <_>            % m 84
			<6+ 5> <_+> <_>2
			<9>2 <6 5>
			<_>4 <6>8 <5> <_>2
			<4>4 <_3+> <_>2              % m 88
			<_>2 <2>
			<_-> <3 5>4 <4 6>
			<4 7-> <3> <5> <6>
			<2>2 <4>4 <3>                % m 92
			<6- 5> <4> <4> <3>
			<3- 5> <5-> <9>2
			<4>4 <3+> <6>2
			<2> <6 _+>4 <6 3>            % m 96
			<6 5> <_+> <4+ 2> <6>
			<6 4+>2 <5+ 4>4 <_+>
			<_+>8 <6> <3>4 <_>2
			<4>4 <3> <6 5>2              % m 100
			<6 5> <6 5>
			<6 5> <_>

			<_>1 <_>1 <_>1 <_>1
			<_>1 <_>1 <_>1
			<2>1                         % m 113
			<_>1 <_>1 <_>1 <_>1
			<_>1 <_>1

			<_>1.       % largo            m 120
			<2>2 <6 5>1
			<6>2 <6 4> <3>
			<_>1.
			<6>2 <7> <6>                 % m 124
			<_>1.
			<9>4 <8> <_>1

			<_>1. <_>1. <_>1.
			<9 7+>1.
			<_+>1.
			<6 _+>2 <6+ _+>1             % m 132
			<6>1.
			<7>1.
			<_>1.
			<_>2 <6+>1                   % m 136
			<_+>1.
			<_- 6>2 <5>1
			<_>1 <6>2
			<7>4 <6 5> <5>1              % m 140
			<4 9>4 <3 8> <7>1
			<6>4 <5>4 <_>1
			<_>1.
		}
	}
	>>
}

\header {
	title    = "Sonata I"
	subtitle = "Z 790"
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
