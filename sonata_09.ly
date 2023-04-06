% See LICENSE.txt for license details
\version "2.18.2"

\include "config.ly"

adag  = \markup { \bold Adagio }
alleg = \markup { \bold Allegro }
canz  = \markup { \bold Canzona }
larg  = \markup { \bold Largo }

vlone = \relative c''' {
	\clef treble \key g \minor \time 2/2
	r8 g g g g aes d, es
	e4 f4. d8 es d16 c
	g'4 f2 es4
	d2 c4. c8                                          % m 4
	bes2 ~ bes4. bes8
	a d d d d es a, bes
	b4 c2 bes4
	a4 bes2 a4                                         % m 8
	g8 g g g g aes d, es
	e4 f2 es4 ~
	es des c2
	bes8 bes' bes bes b c g aes                        % m 12
	e4 g'2 f4 ~
	f es d8 d d d
	d es a, bes b4 c ~
	c bes4. a8 a a                                     % m 16
	a bes e, f fis d' d d
	d es a, bes b4 c ~
	c bes2 aes4 ~
	aes g f2                                           % m 20
	r8 g' g g g aes d, es
	e4 f b, c ~
	c b c8 g g g
	g aes d, es e4 f ~                                 % m 24
	f es d8 d' es f
	d4. c8 c2\fermata \bar "||"

	% largo
	\time 3/2 \mark \larg g'2 g g
	g2. aes4 g2                                        % m 28
	f d2. c8( d)
	es2. d4 c2
	g' aes bes
	bes aes g                                          % m 32
	c g4( f) aes( g)
	d2. es4 d2
	d es f
	f4( es) d4. es8 c2                                 % m 36
	f c2. \shape #'((0 . 0) (0 . -0.3) (0 . -0.3) (0 . 0)) Slur
	    bes8( c)
	d2. c4 bes2
	a bes c
	c4( fis,) g4. a8 g2                                % m 40
	a2 a2. g4
	g2 bes2. bes4
	bes4. c8 bes4( aes) bes( g)
	aes2 f2. f4                                        % m 44
	bes2 f2.( g8 aes)
	g2 es'2. d4
	c2 f2. es4
	d2 g1 ~                                            % m 48
	g2. aes4 f2
	g1. ~
	g2 g d
	f b, c                                             % m 52
	d2. c4 bes4. a8
	c2. d4 c4. bes8
	a4. bes8 g2. c4
	a2. g4 f2                                          % m 56
	R1.
	r2 c' g
	a e f
	gis bes g                                          % m 60
	a d, e
	f1 f2 ~
	f e1 ~
	e2 d c ~                                           % m 64
	c b1
	c1.
	r2 g'' d
	f b, c                                             % m 68
	d1 d2
	c1. ~
	c2 c' g
	bes f g                                            % m 72
	aes g1 ~
	g2 f1 ~
	f2 g c,
	es b c                                             % m 76
	d g, es'
	d d2. c4
	c1.\fermata \bar "||"

	% canzona
	\time 2/2 \mark \canz r8 c16 d e8 c d e f d        % m 80
	es c aes'16 g f es d8 c c8. b16
	c8 bes16 a g8 g' f g16 f es8 f16 es
	d8 es16 d c4. bes8 a4
	g r8 aes'4 g f8 ~                                  % m 84
	f es4 d16 c b8 c f, g
	es g16 a bes8 g a b c a
	bes g es'16 d c bes a8 g g8. fis16
	g f es d c8 c' bes c16 bes aes8 bes16 aes          % m 88
	g8 aes16 g f4. es8 d4
	c r8 es'4 d c8 ~
	c bes4 a16 g fis8 g c, d
	b c'16 d es8 c d e f d                             % m 92
	es c aes'16 g f es d8 c c8. b16
	c8 g16 a bes8 g a b c a
	bes g es'16 d c bes a bes c a f'4 ~
	f8 es d g4 f8 es4                                  % m 96
	d c bes8 es4 d8
	es g16 a bes8 g aes f g d16 es
	f8 d es f g es f d
	es c bes es d4 c8 d ~                              % m 100
	d c4 bes8 a4 a8. g16
	g8 g' f g16 f es4 r
	r8 aes g aes16 g f4 r
	r8 bes aes bes16 aes g8 aes16 g f8 g16 f           % m 104
	es8 aes4 g f e8
	f f16 es d8 f es d c f16 es
	d8 f es d c es d es ~
	es d4 c bes aes8                                   % m 108
	g aes4 g f es8
	d4 r8 c'16 d es8 c d e
	f d es c aes'16 g f es d es d c
	b4 r8 g'16 f es8 g f es                            % m 112
	d f es4 d c
	b8 g'4 f es8 d g16 f
	es8 g\p f4 es d
	c r r2                                             % m 116

	% adagio
	\mark \adag
	e4 e8. e16 f4. g8
	e2 es4 es8. es16
	es4 f b,\fermata r
	b4 b8. b16 c4. d8                                  % m 120
	b2 d4 d8. d16
	d4 es a, r
	bes2 a4 aes
	g2 f                                               % m 124
	e4 es d d'
	es e f fis
	g g aes a
	b c f,8 g16 d es8. f16                             % m 128
	d4. c8 c2\fermata \bar "||"

	\time 6/4    % really 12/8, so fix beaming
	\set Timing.beamExceptions = #'()
	\set Timing.baseMoment = #(ly:make-moment 1/8)
	\set Timing.beatStructure = #'(3 3 3 3)
	\mark \alleg
	c8. c16 d8 es8. d16 c8 d4 g8 g8.
	    aes16 f8
	g4. r d g
	f es d r                                           % m 132
	r2. fis,8. fis16 g8 a8. g16 fis8
	g4 c8 c8. d16 b8 c4. g'
	f es d8. d16 es8 f8. es16 d8
	e4 aes8 aes8. bes16 g8 aes8. aes16 g8 f8. es16 f8  % m 136
	bes8. aes16 bes8 g8. f16 g8 c8. c16 bes8 aes8.
	    aes16 g8
	f8. es16 d8 es8. es16 d8 c8. d16 es8 d4 c8
	b8. a16 g8 d'4 d8 d2.
	g4 c8 c f, bes bes es, aes aes4 g8                 % m 140
	aes4. g f es
	d4 g8 g c, f f bes, es es4 d8
	es4 g8 g c, f f bes, es c4 d8
	b4 bes'?8 aes4. g f                                % m 144
	bes,4 es8 es a, d d g, c a4.
	g r r2.
	c4 f8 f bes, es es a, d c8. d16 es8
	d8. c16 bes8 es8. es16 f8 g8. g16 f8 aes8. aes16
	    g8                                             % m 148
	f8. f16 es8 d4 c8 b4 g'8 g c, f
	f bes, e e a, d d g, c c4 b8
	c g es c es g c2.\fermata \bar "|."
}

vltwo = \relative c'' {
	\clef treble \key g \minor \time 2/2
	r4 c2 bes4 ~
	bes aes g2
	r2 r8 g' g g
	g aes d, es e4 f ~                           % m 4
	f8 bes, es4 d c ~
	c bes a8 a d d
	d es g, a fis4 g ~
	g f c f ~                                    % m 8
	f es2 d4
	c8 c' c c c des g, aes
	a4 bes2 aes4 ~
	aes g4. c,8 des4                             % m 12
	c r r8 c' c c
	c d g, a fis4 g ~
	g f2 es4
	d2 c4 d' ~                                   % m 16
	d c2 bes4
	a r r8 g' g g
	g aes d, es e4 es
	bes es2 des8 c                               % m 20
	des2 c
	bes4 aes g8 g g g
	a bes d, es e4. e8
	f4. g16 aes g8 c c c                         % m 24
	d es a, bes b4 c ~
	c b c2\fermata \bar "||"

	% largo
	\time 3/2 es2 es d
	c2. b4 c2                                    % m 28
	d b2.( a8 b)
	c1 c2
	bes c d
	es1 d2                                       % m 32
	d4. es8 c2( b4 c)
	c1 b2
	b c d
	d4( c) bes4. c8 a2                           % m 36
	bes bes a
	bes2. a4 g2
	g f es
	es( d) g                                     % m 40
	g fis2. g4
	g2 g2. g4
	g4. a8 g4( f) g( e)
	f2 d2. d4                                    % m 44
	es2 es d
	es g2. g4
	aes2. g4 f2
	bes2. aes4 g4. d'8                           % m 48
	es4. d8 c2 d
	b es b
	d g, a
	b g' a,                                      % m 52
	bes e, fis
	g f1 ~
	f2 f e
	f f' c                                       % m 56
	es a, bes
	c1. ~
	c
	r2 d bes                                     % m 60
	c fis, g
	a1 a2
	g1 g2
	f2. g4 es2                                   % m 64
	d g' d
	es b c
	d g,1 ~
	g2 f4. g8 aes2                               % m 68
	b, bes'?1 ~
	bes2 aes1 ~
	aes2 g1
	f1 r2                                        % m 72
	r es' c
	d a b
	c c2. d4
	b2 g' es                                     % m 76
	f b, c ~
	c b2. c4
	c1.\fermata \bar "||"

	% canzona
	\time 2/2 R1*2
	r8 g16 a bes8 g a b c a
	bes g es'16 d c bes a8 g g8. fis16
	g f es d c8 c' bes c16 bes aes8 bes16 aes    % m 84
	g8 aes16 g f4. es8 d4
	c r8 es'4 d c8 ~
	c bes4 a16 g fis8 g c, d
	b8 c'16 d es8 c d e f d                      % m 88
	es c aes'16 g f es d8 c c8. b16
	c8 bes16 a g8 g' f g16 f es8 f16 es
	d8 es16 d c4. bes8 a4
	g r8 aes'4 g f8 ~                            % m 92
	f es4 d16 c b8 c f, d16 d
	es8 c d e f d es f
	g16 f es d c d es c f g f es d es f d
	g4 f8 es'4 d c8 ~                            % m 96
	c bes4 aes g8 f4
	es8 es' d es16 d c8 d16 c b8 bes
	a bes16 aes g8 f es8 aes d, g
	c, aes' g c4 bes8 a bes ~                    % m 100
	bes a4 g g8 g fis
	g es' d es16 d c4 r
	r8 f es f16 es d8 es16 d c8 d16 c
	bes8 es4 d c b8                              % m 104
	c es d es16 d c8 d16 c bes8 c16 bes
	a8 c bes a g bes bes a
	bes bes'16 aes g8 bes aes g f g
	f4 es d c                                    % m 108
	bes8 c bes4 aes g8 g16 a
	b8 g a b c a bes g
	aes f g aes16 bes c bes aes g f g f es
	d8 d'16 c b8 d c bes a c                     % m 112
	b a g f4 es f16 es
	d8 es'4 d c b8
	c es4\p d c b8
	c4 r r2                                      % m 116

	% adagio
	g4 g8. g16 aes4. bes8
	g2 g4 g8. g16
	g4 aes d,\fermata r
	d d8. d16 es4. f8                            % m 120
	d2 bes'4 bes8. bes16
	bes4 c fis, a ~
	a g2 f4 ~
	f es2 d4 ~                                   % m 124
	d c b b'
	c c d d
	es e f f
	g g8 c, b4 c ~                               % m 128
	c b c2\fermata \bar "||"

	\time 6/4
	\set Timing.beamExceptions = #'()
	\set Timing.baseMoment = #(ly:make-moment 1/8)
	\set Timing.beatStructure = #'(3 3 3 3)
	c,4. c' bes aes
	g8. g16 a8 bes8. a16 g8 a4 d8 d8. es16 c8
	d8. es16 d8 c8. b16 c8 b8. a16 g8 d'4.       % m 132
	c bes a8. a16 bes8 c8. bes16 a8
	b4 es8 es8. f16 d8 es8. es16 d8 c8. d16 es8
	d4. c b8. b16 c8 d8. c16 b8
	c4 f8 f8. g16 e8 f8. f16 es8 d8. c16 d8      % m 136
	g8. f16 g8 es8. es16 d8 c4. ~ c4 c8
	b8. c16 d8 g,4. ~ g8. f16 g8 aes4.
	g4 d'8 b4 b8 b2. \bar "||"
	es4. d c bes                                 % m 140
	c4 d8 d g, c c f, bes bes4 a8
	bes4 d8 c4. bes aes
	g'4 bes8 bes es, aes aes d, g g4 f8
	g4. r r2.                                    % m 144
	g,4 c8 c f, bes bes e, a fis4.
	g4 es'8 d4. c bes8. aes16 g8
	aes4 d8 d g, c c f, bes bes4 a8
	bes4 f8 bes4. ~ bes8. c16 d8 es8. es16 d8    % m 148
	c4 bes8 aes4. g4 es'8 es a, d
	d g,4 f4. es d
	c8 es g c g es c2.\fermata \bar "|."
}

basso = \relative c {
	\clef bass \key g \minor \time 2/2
	c1 ~
	c2 r8 c' c c
	d es a, bes b4 c ~
	c bes2 aes4                                  % m 4
	g8 g g g a bes e, f
	fis4 g2 f4 ~
	f es d2
	r8 d d d e f a, bes                          % m 8
	b4 c f, bes ~
	bes aes g2
	f8 f' f f g aes c, des
	d?4 es aes, bes                              % m 12
	c8 c' c c d es a, bes
	b4 c2 bes4
	a2 r8 g g g
	g aes d, es e4 f                             % m 16
	bes, c d g ~
	g f2 es4
	d2 c8 c c c
	d es g, aes a2                               % m 20
	bes4 bes' aes2
	g4 f2 es4
	d g c,2 ~
	c4 bes2 aes4                                 % m 24
	g2 f4 es
	g2 c\fermata \bar "||"

	% largo
	\time 3/2 c2 c' bes
	aes1 es2                                     % m 28
	f g1
	c,1 c4. d8
	es1 d2
	c1 bes2                                      % m 32
	aes1 f2
	g1 g2
	g'1 g,2
	c1 f2                                        % m 36
	d es f
	bes,1 bes2
	c1 c2
	d1 es2                                       % m 40
	c d d,
	g1 g'2
	e2 c1
	f2 bes aes                                   % m 44
	g4. aes8 bes2 bes,
	es2. d4 c2
	f2. es4 d2
	g2. f4 es4. d8                               % m 48
	c4. bes8 aes1
	g2 c' g
	bes es, f
	g1. ~                                        % m 52
	g2 g d
	es a, bes
	c1 c2
	f,1. ~                                       % m 56
	f2 f'1
	e1.
	es?2 c1
	d1. ~                                        % m 60
	d ~
	d2 d' a
	b c g
	aes d, es                                    % m 64
	f g g,
	c1 c'2
	b bes1
	a2 aes1                                      % m 68
	g2 g d
	f c d
	es1 es2
	d d' b                                       % m 72
	c g a
	bes f g
	aes1.
	g ~                                          % m 76
	g
	f2 g1
	c,1.\fermata \bar "||"

	% canzona
	\time 2/2 R1*4
	r8 c16 d es8 c d e f d                       % m 84
	es c aes'16 g f es d8 c c8. b16
	c8 bes16 a g8 g' f g16 f es8 f16 es
	d8 es16 d c4. bes8 a4
	g r8 aes'4 g f8 ~                            % m 88
	f es4 d16 c b8 c f, g
	c g'16 a bes8 g a b c a
	bes g es'16 d c bes a8 g g8. fis16
	g16 f es d c8 c' bes c16 bes aes8 bes16 aes  % m 92
	g8 aes16 g f4. es8 d4
	c r r2
	R1
	r8 g'16 a bes8 g a b c a                     % m 96
	bes g aes16 g f es d8 es bes4
	es, r r2
	R1
	r8 c'16 d es8 c d e f d                      % m 100
	es c d bes c a d d,
	g4 r r8 aes' g aes16 g
	f4 r r8 bes aes bes16 aes
	g8 aes16 g f8 g16 f es8 f16 es d8 es16 d     % m 104
	c8 c' bes c16 bes aes8 bes16 aes g8 c
	f, f g d es bes f' f,
	bes4 r r8 g'16 a bes8 g
	a b c es, f g aes c,16 d                     % m 108
	es8 c d e f d es c
	g' f es d c f bes, c
	f, bes es, aes f2
	g1 ~                                         % m 112
	g8 a'16 b c8 a bes g aes f
	g es f d es f g g,
	c g\p aes f g es f g
	c4 r r2                                      % m 116

	% adagio
	c2. b4
	c2 c'4. bes8
	aes8. g16 f4 g\fermata r
	g,4. g8 fis2                        % m 120
	g g'4. f8
	es8. d16 c4 d d,
	d' es e f
	g aes a bes                         % m 124
	b c g2
	g,1 ~
	g4 g'2 f4 ~
	f es d c                            % m 128
	g2 c\fermata \bar "||"

	\time 6/4
	\set Timing.beamExceptions = #'()
	\set Timing.baseMoment = #(ly:make-moment 1/8)
	\set Timing.beatStructure = #'(3 3 3 3)
	R1.
	g4. g' f es
	d4 b8 c4 f,8 g'8. g16 a8 bes8. a16 g8   % m 132
	a4 d8 d8. es16 c8 d4. d,
	g g, c8. c16 d8 es8. d16 c8
	d4 g8 g8. a16 f8 g4. g,
	c ~ c f4 f8 bes4 bes8                   % m 136
	g4 g8 c4 bes8 aes4 g8 f4 es8
	d4 b8 c4 bes8 aes4 g8 f4.
	g2. ~ g \bar "||"
	R1.                                     % m 140
	f'4. es d c
	bes aes' g f
	es4 g,8 c4 aes8 bes4 g8 aes4.
	g4 g'8 g c, f f bes, es es4 d8          % m 144
	es4 c8 d4 bes8 c4 a8 d4.
	g,4 c8 c f, bes bes es, aes g8. f16 e8
	f f' d es4 c8 d4 es8 f4 f,8
	bes8. bes'16 aes8 g4 f8 es4 d8 c4 bes8  % m 148
	aes4 g8 f4. g2.
	g1.
	c\fermata \bar "|."
}

continuo = {
	<<
	\relative c {
		\clef bass \key g \minor \time 2/2
		c2 ~ c ~
		c ~ c ~
		c4 f g c ~
		c bes ~ bes aes         % m 4
		g4. es8 bes4 c
		d g ~ g f ~
		f es d2 ~
		d f                     % m 8
		b,4 c f, bes ~
		bes aes g2
		f ~ f
		bes4 es aes, bes        % m 12
		c2. f4
		d c ~ c bes
		c d g, es
		f g c f                 % m 16
		bes, c d g ~
		g f ~ f es
		d2 c
		es a,                   % m 20
		bes4 bes' aes2
		g4 f ~ f es
		d g c,2 ~
		c4 bes ~ bes aes        % m 24
		g2 f4 es
		g2 c\fermata \bar "||"

		% largo
		\time 3/2 c c' bes
		aes1 es2                % m 28
		f g1
		c,1 c4. d8
		es1 d2
		c1 bes2                 % m 32
		aes1 f2
		g1.
		g'1 g,2
		c1 f2                   % m 36
		d es f
		bes,1 bes2
		c1 c2
		d1 es2                  % m 40
		c d1
		g, g'2
		e c1
		f2 bes aes              % m 44
		g4. aes8 bes2 bes,
		es2. d4 c2
		f2. es4 d2
		g2. f4 es4. d8          % m 48
		c4. bes8 aes1
		g2 c' g
		bes es, f
		g1. ~                   % m 52
		g2 g d
		es a, bes
		c1 c2
		f,1. ~                  % m 56
		f2 f'1
		e1.
		es?2 c1
		d1. ~                   % m 60
		d ~
		d2 d' a
		b c g
		aes d, es               % m 64
		f g g,
		c1 c'2
		b bes1
		a2 aes1                 % m 68
		g2 g d
		f c d
		es1.
		d2 d' b                 % m 72
		c g a
		bes f g
		aes1.
		g ~                     % m 76
		g
		f2 g1
		c,1.\fermata \bar "||"

		% canzona
		\time 2/2 \clef treble
		r8 c''16 d es8 c d e f d                      % m 80
		es c aes'16 g f es d8 c c8. b16
		c8 g16 a bes8 g a b c a
		bes g c,4 d2
		\clef bass g,8 c,16 d es8 c d e f d           % m 84
		es c aes'16 g f es d8 c ~ c b
		c bes16 a g8 g' f g es f
		d es c4. bes8 a4
		g r8 aes'8 ~ aes g ~ g f ~                    % m 88
		f es ~ es d16 c b8 c f, g
		c g'16 a bes8 g a b c a
		bes g \clef tenor es'16 d c bes a8 g ~ g fis
		\clef bass g16 f es d c8 c' bes c aes bes     % m 92
		g aes f4. es8 d4
		c8 \clef alto c' d e f d es f
		g es c4 f d
		g8 g,16 a \clef bass bes8 g a b c a           % m 96
		bes g aes16 g f es d8 es bes4
		es,8 \clef soprano es''' d es c d b bes
		a bes g f es aes d, g
		c, \clef bass c,16 d es8 c d e f d            % m 100
		es c d bes c a d d,
		g2 aes8 aes' g4
		f2 bes4 aes
		g f es d                                      % m 104
		c8 c' bes4 aes g
		f g8 d es bes f4
		bes es f8 g16 a bes8 g
		a b c es, f g aes c,16 d                      % m 108
		es8 c d e f d es c
		g' f es d c f bes, c
		f, bes es, aes f2
		g1 ~                                          % m 112
		g8 a'16 b c8 a bes g aes f
		g es f d es f g g,
		c g\p aes f g es f g
		c4 r r2                                       % m 116

		% adagio
		c2. b4
		c2 c'4. bes8
		aes4 f g\fermata r
		g,2 fis                        % m 120
		g g'4. f8
		es4 c d d,
		d' es e f
		g aes a bes                    % m 124
		b c g2
		g, ~ g ~
		g4 g' ~ g f ~
		f es d c                       % m 128
		g2 c\fermata

		% allegro
		\time 6/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/8)
		\set Timing.beatStructure = #'(3 3 3 3)
		\clef soprano c'4. c' bes aes
		\clef bass g,, g' f es
		d4 b8 c4 f,8 g4. g' ~                       % m 132
		g4 fis8 g4 c8 d4. d,
		g g, c2. ~
		c4 b8 c4 f8 g4. g,
		c ~ c f bes                                 % m 136
		g c4 bes8 aes4 g8 f4 es8
		d4 b8 c4 bes8 aes4 g8 f4.
		g1. \bar "||"
		\clef soprano es'''4. d c bes               % m 140
		\clef bass f, es d c
		bes aes' g f
		es4 g,8 c4 aes8 bes4 g8 aes4.
		g4 g'8 ~ g c, f ~ f bes, es ~ es4 d8        % m 144
		es4 c8 d4 bes8 c4 a8 d4.
		g,4 c8 ~ c f, bes ~ bes es, aes g8. f16 e8
		f f' d es4 c8 d4 es8 f4 f,8
		bes8. bes'16 aes8 g4 f8 es4 d8 c4 bes8      % m 148
		aes4 g8 f4. g2. ~
		g1.
		c\fermata \bar "|."
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure #'font-size = #-1
		\figuremode {
			r2 <8>4 <7>
			<_+ 7> <4 6-> <4> <3>
			r2 <7>
			<4+ 2> <2>              % m 4
			<7>4 <6> r2
			<7> <2>
			<2> <_+ 7>4 <4 6>
			<4 5>4 <3 6> <4> <3>    % m 8
			<6 5>2 <7>
			<2> <7>4 <6>
			<_+ 7> <4 6-> <4> <_->
			<7>2 <7>                % m 12
			<_+> <_->
			<6+> <2 4+>
			<6 5> <7>
			<6 5> <7>4 <6>          % m 16
			r2 <7>
			<2> <2>
			<7>4 <6> <7> <6->
			<4> <3> <6 5>2          % m 20
			<6>4 <6> <7> <6>
			<6+>2 <2>
			<7> <_+>
			<6- 4> <2>              % m 24
			<7>4 <6> <6 4+> <6>
			r1

			% largo
			r1.
			<7>2 <6> <6>                        % m 28
			<6> r1
			r1.
			<5>2 <6> <6>
			<7> <6-> <6>                        % m 32
			<4> <3> r
			R1.*3
			r2 <6 5> r
			r1 <6>2
			<6 5>1 r2
			<9> <8> r                           % m 40
			<6 5> r1
			R1.*3
			<6>1.
			r
			<_->
			r                                   % m 48
			r2 <7> <6>
			r1.
			<6>
			<3+>1 <4>2                          % m 52
			<3> <6+> r
			<6>1.
			<6 4>2 \bassFigureExtendersOn <5 4>
			    \bassFigureExtendersOff <3+>
			r1.                                 % m 56
			<7>2 <6> r
			r1.
			<4>2 r1
			<5 3+>2 <6 4> r                     % m 60
			<7 5> r <6 4>
			r1.
			<6 5>
			<6 5>2 r <6>                        % m 64
			<6 5>1.
			r
			r
			<7>2 <6>1                           % m 68
			<_+>2 <_-> r
			<4> <6-> r
			<6 4-> \bassFigureExtendersOn <6 3>
			    \bassFigureExtendersOff r2
			<6> r <6>                           % m 72
			<6-> <6> r
			<6> r1
			<6>2 <7> <6>
			<6>1.                               % m 76
			<5>1 <6 4>2
			<6 5>1.
			r1.

			% canzona
			R1*3                                     % m 80
			r2 <7>8 <6> <5>4
			r4 <6>8 <6-> <6 5>4 <9>                  % m 84
			<9> <6 5> r <2>
			r r8 <6> <7>4 <7>
			r1
			r2 <2>4 <2>                              % m 88
			<2> <2> <6 5> <6 5>
			r <6>8 <6> <6 5>4 <9>
			<9> <6 5> <6+> <2>
			r r8 <6-> <7>4 <7>                       % m 92
			<7> <7>8 <6> <2> r4.
			r4 <6> r8 <6> <6>4
			r1
			<7>8 <6> r <6> <6 5>4 <9>                % m 96
			<9> <9> <6 5> r
			r <6> <6-> r
			<6> <6> r2
			r8 <6-> r4 <7> r                         % m 100
			<7> <7> <6 5> r
			r1
			r
			<5>8 <6> <7> <6> <7> <6> <7> <6>         % m 104
			r8 <6-> <7> <6> <7> <6> <7> <6>
			r2. <4>8 <3>
			r1
			<6 5>4 <9> <6 5> <9>8 <6->               % m 108
			r <6-> <6 5> r <9>4 <9>
			r1
			<_->
			<5 3+>2 <6 4>                            % m 112
			r8 <6> r <6 5> r <6 5> r <6 5>
			r4 <7> <6>2
			r4 <6 5> <6 5> <6 5>
			r1                                       % m 116
			<_+>2 <4 6->
			<_+> <_->
			<7>1
			r2 <5 7>                                 % m 120
			r <_->
			<7>1
			<6 5>2 <4 3>4 <3->
			<7> <7> <6 5>2                           % m 124
			<4+ 3>4 <_-> r2
			<6 4>4\bassFigureExtendersOn <6+ 4>
			    <7 5> <7+ 5>\bassFigureExtendersOff
			<6> <6+> <2- 7> <3+>
			<4+ 2>2 <6+>                             % m 128
			r1

			% allegro
			r2. r4. <7>4 <6>8
			r2. r4. <6>
			r1.                                  % m 132
			<2>
			r1.
			<2>
			r2. <_->                             % m 136
			R1.*3
			r4. <7>8 <6>4 <7>8 <6>4 <7>8 <6>4    % m 140
			r4. <7>8 <6>4 <7>8 <6>4 <7>8 <6>4
			r4. <7>8 <6>4 <7>8 <6>4 <7>8 <6>4
			r4. <7>8 <6->4 <7>8 <6>4 <7>8 <6>4
			r4. <2-> <2> <2>                     % m 144
			r4. <9 7>8 <8 6>4 <9 7>8 <8 6>4 r4.
			r4. <2> <2> r
			r4. <9 7>8 <8 6>4 <9 7>8 <8 6>4 r4.
			r2. r4. <6->4 <6>8                   % m 148
			r1.*3
		}
	}
	>>
}

\header {
	title    = "Sonata XI"
	subtitle = "Z 798"
	composer = "Henry Purcell"
	tagline  = ""
}

\score {
	<<
	\override Score.Script.staff-padding = #0.8
	\override Score.RehearsalMark #'font-size = #0
	\override Score.RehearsalMark #'self-alignment-X = #-1
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
