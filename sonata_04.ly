\version "2.18.2"

\include "config.ly"

alleg = \markup { \bold Allegro }
canz  = \markup { \bold Canzona }
plarg = \markup { \bold "Poco Largo" }

vlone = \relative c'' {
	\clef treble \key f \major \time 2/2
	c4 d8. e16 f4. d8
	es4. f8 d4. d8
	c4. c8 bes4 bes8. c16
	a2\fermata r                    % m 4
	g'4 a8. bes16 c4. a8
	bes4. c8 a4. a8
	g4. g8 f4 f8. g16
	e2\fermata r8 e f g             % m 8
	a bes c c, d e f g
	a a, bes c d e f g
	e4 d c f ~
	f e d g ~                       % m 12
	g f e2
	d c
	b4. b8 c d e f
	g a bes g, a bes c d            % m 16
	e f g e f2
	e4 a2 g4 ~
	g f2 e4
	f8 a, bes c d e f g             % m 20
	a c, d e f g a bes
	c4 f,2 e4
	f1 \bar "||"

	c2^\canz a4 bes                 % m 24
	c d e f ~
	f e f2
	r8 bes, g c a d bes es
	c f d g c, d es d16 c           % m 28
	d8 bes r4 r2
	r2 r8 f'8 d g
	e a f bes g e a f
	bes4 a4. a8 g f                 % m 32
	e c f2 e4
	f8 f, d g e a f d
	g e c f g2
	r4 f d e                        % m 36
	f g a bes ~
	bes a bes bes
	a b c d
	e f2 e4 ~                       % m 40
	e d4. g,8 c4 ~
	c bes2 a4 ~
	a g4. c,8 f4 ~
	f e d2                          % m 44
	c4 r8 f d g e a
	g4 r g'2
	e4 f g a
	b c2 b4                         % m 48
	c8 g e a f bes g c
	a f bes2 a4
	bes8 bes, g e c f' d g
	c, c' f, bes g e a8. bes16      % m 52
	g2 f
	e d
	c4 f2 e4
	f r8 bes, g c a d               % m 56
	bes es c f d g e a
	f bes g c a4. a8
	g2 a \bar "||"

	\time 3/2
	c,2^\plarg f2. g4               % m 60
	e2. e4 f2
	g2 c,2. bes4
	a2. g4 f2
	a c2. d4                        % m 64
	bes2. c4 a2
	d e2. f4
	cis2 e a ~
	a f g ~                         % m 68
	g f1
	e2 e2. d4
	d2 a d ~
	d bes c ~                       % m 72
	c bes1
	a2 a2. g4
	g1.
	d'2 g2. a4                      % m 76
	fis2. e4 d2
	e c2. b4
	b1.
	b2 e2. f4                       % m 80
	d2. e4 c2
	f2 e2. d4
	d2 d g
	g e f ~                         % m 84
	f e es
	d d2. c4
	c2 g c ~
	c a bes                         % m 88
	a1 aes2
	g g2. f4
	f2 a\p c ~
	c a bes                         % m 92
	a1 aes2
	g g2. f4
	f1. \bar "||"

	R1.^\alleg                      % m 96
	R1.
	r4 f' e g f e
	f d b f' e d
	e c f d g2                      % m 100
	c, d1
	g,4 c a d c b
	c e c f e d
	e c a d c bes                   % m 104
	c a f bes a g
	a f d a' g f
	e g' e a g f
	g e c f e d                     % m 108
	e c f d g2
	c, d e
	f1 es2
	d1 d2                           % m 112
	c c2. bes4
	bes f' d g f es
	f d bes es d c
	d bes g bes a g                 % m 116
	a f bes g c2
	f, g4 e a2
	d,4 g e a f2
	e e2. d4                        % m 120
	d1.
	r4 d' bes es d c
	d bes g c bes a
	bes2 a2. g4                     % m 124
	g g c a d2
	bes4 es c f d g
	e a f d g2
	c,4 f d bes es2                 % m 128
	a,4 d bes g c2
	f,4 c' d c bes a
	g g' e a g f
	g e c c' bes a                  % m 132
	bes g e bes' a g
	a g8 f f2. e4

	\time 2/2 f e d c
	es d c bes                      % m 136
	a g8 f c'2 ~
	c b
	c4 bes a g
	bes a g2                        % m 140
	f4 r bes'2 ~
	bes a
	bes4 a g f
	aes g f es                      % m 144
	d e f2 ~
	f e
	f4 es d c
	es d c bes                      % m 148
	a2 a ~
	a g ~
	g4 f e d
	e2 a ~                          % m 152
	a4 g f e
	d2 g'4 f
	e d f e
	d c es d                        % m 156
	c1 ~
	c4 bes a g
	bes a g f
	g2 a                            % m 160
	bes c
	a bes
	c4 d es f
	d e f g                         % m 164
	e c f2 ~
	f e
	f1\fermata \bar "|."
}

vltwo = \relative c'' {
	\clef treble \key f \major \time 2/2
	a4. bes8 c4 d
	c2 ~ c8. c16 bes4 ~
	bes8 bes a4. a8 g8. a16
	f2\fermata r                    % m 4
	e'4. f8 g4 a
	g2 ~ g8. g16 f4 ~
	f8 f e4. e8 d8. e16
	c2\fermata r8 c d e            % m 8
	f g a a, bes c d e
	f f, g a bes c a bes
	g4 bes2 a4
	g c2 bes4                       % m 12
	a d2 c4 ~
	c b2 a4 ~
	a gis8 gis a b c d
	e f g e f g a f,                % m 16
	g a b cis d2 ~
	d4 c b bes
	a2 g ~
	g8 f g a bes c d e              % m 20
	f a, bes c d e f g
	e d c bes16 a g2
	a1 \bar "||"

	r2 r8 f d g         % canzona     m 24
	e a f bes g c a d
	g, a bes a16 g a8 c d e
	f4 g c,8 f, d g
	f4 r f'2                        % m 28
	d4 e f g
	a8 b c2 b4
	c r r8 c,8 a d
	bes es c f d c bes a            % m 32
	g a16 bes c8 d g,2
	c4 r r r8 bes
	g c a d bes es c8. bes16
	a4 r r c                        % m 36
	a bes c d
	e f2 e4
	f8 f d g e a f bes
	g c a bes16 a g2                % m 40
	f e
	d c
	bes a
	g4 c2 b4                        % m 44
	r8 c a d b e c f
	d g e a d,2
	c4 r r8 g' e a
	f d g e d2                      % m 48
	e4 r8 c a d bes es
	c f d g c,2
	d4 c a bes
	c d e f ~                       % m 52
	f e2 d4 ~
	d c2 bes4 ~
	bes a g2
	r8 f d g e a f bes              % m 56
	g c a4 bes c
	d e4. e8 f4 ~
	f e f2 \bar "||"

	\time 3/2 a,2 b1    % largo       m 60
	c2. bes4 a2
	bes4 a g4. f8 e2
	f1 c2
	f g1                            % m 64
	f e2
	f g1
	a2 cis f ~
	f d e ~                         % m 68
	e d1 ~
	d2 cis2. d4
	d2 f, bes ~
	bes g a ~                       % m 72
	a g1 ~
	g2 fis2. g4
	g1.
	b2 cis1                         % m 76
	d2. c4 b2
	c fis,2. g8( a)
	gis1.
	g2 c2. b4                       % m 80
	a1 g2
	a b c
	b b e ~
	e c d ~                         % m 84
	d c1 ~
	c2 b2. c4
	c2 e, a ~
	a f g ~                         % m 88
	g f1 ~
	f2 e2. f4
	f2 f\p a ~
	a f g ~                         % m 92
	g f1 ~
	f2 e2. f4
	f1. \bar "||"    % repeat?

	R1.        % allegro              m 96
	r4 c' a d c bes
	c a f bes a g
	a f d2 g
	g4 a f bes a g                  % m 100
	a f d a' g f
	g e c f e d
	e c f d g2
	c, d e                          % m 104
	f2. f4 g2
	c, r r
	R1.*2                           % m 108
	r4 c' a d c bes
	c a f bes a g
	a f bes g c2 ~
	c4 f, bes1                      % m 112
	bes2 a2. bes4
	bes1 r2
	r4 bes g c bes a
	bes g e g f e                   % m 116
	f d g e a2
	d, e4 c f2
	b,4 e c f d2
	d cis2. d4                      % m 120
	d a' f bes a g
	a f d g f2
	r4 g e a g fis
	g2 fis2. g4                     % m 124
	g e a f bes2
	g4 c a d b e
	c a d bes a g
	a f bes g c2                    % m 128
	f,4 d g e a2
	d,4 a' g2. f4
	e e' c f e d
	e c a a' g f                    % m 132
	g e c g' f e
	f e8 d c2 bes

	\time 2/2 a bes4 a
	g f aes g                       % m 136
	c bes a g
	bes a g f
	e d8 c f2 ~
	f e                             % m 140
	f'4 es d c
	es d c2 ~
	c4 f, bes2 ~
	bes a                           % m 148
	bes4 c bes a
	g f aes g
	f2 f'
	b, g' ~                         % m 152
	g fis
	g4 f e d
	cis2 d ~
	d4 c b a                        % m 156
	b2 c ~
	c b
	c4 g c bes
	a g bes a                       % m 160
	g f e d
	c2 d
	e f ~
	f4 d e2                         % m 164
	f4 e d c
	es d c bes
	f'2 c'
	bes a                           % m 168
	g bes
	a g
	f1\fermata \bar "|."
}

basso = \relative c {
	\clef bass \key f \major \time 2/2
	f4. g8 a4 bes ~
	bes a bes bes,
	c d e c
	f2\fermata r                    % m 4
	c4. d8 e4 f ~
	f e f f
	g a b g
	c2\fermata c,4. bes8            % m 8
	a4 f bes2
	a g4 f
	r8 c' d e f g a bes
	c d, e f g a bes c              % m 12
	d e, f g a bes c c,
	d e f g a b, c d
	e4 e, a a
	g2 f                            % m 16
	e r8 d f g
	a bes c d e f g e,
	f g a bes c g c bes
	a2 g                            % m 20
	f4. e'8 d2
	c4 a c2
	f,1 \bar "||"

	R1           % canzona          % m 24
	R1
	r2 f'
	d4 e f g
	a bes2 a4
	bes8 bes, g c a d c e           % m 28
	f g e a d,4 g
	c,8 f d g e a f bes
	g4 a bes bes, ~
	bes a8 f c'2                    % m 32
	a4 b c d
	e f2 e4
	f8 c' a d bes g e a
	f d bes es c a g f              % m 36
	e c f a g a16 bes c4
	f, r r2
	r2 r4. c'8
	a a' f bes g c a g              % m 40
	fis e d f e g fis a
	g a, bes es c f d c
	b g e f g4 g'
	e f g a                         % m 44
	b c2 b4
	c8 c, a d b e c f
	d g e c g'2
	c, r                            % m 48
	r f
	d4 e f g
	a bes2 a4
	r8 bes g c a d f, bes           % m 52
	g c e, a f d g, g'
	e c a f c'4 c'
	a bes c2 ~
	c1 ~                            % m 56
	c2 r8 c a d
	bes g c c, f2\fermata \bar "||"

	\time 3/2    % poco largo
	f2 d1
	a'2. g4 f2 ~                    % m 60
	f e4. d8 c2
	f1 f,2
	f'1 e2
	d1 c2                           % m 64
	bes1.
	a2 bes' f
	bes1 g2
	a f d                           % m 68
	g a a,
	d1 bes2
	es1 c2
	d1 bes2                         % m 72
	c2 d d,
	g1.
	g'2 e1
	d g2                            % m 76
	c, a1
	e'1.
	e2 c2. c4
	f1 e2                           % m 80
	d2 c1
	g' e2
	a1 f2
	g e c                           % m 84
	f g g,
	c1 a2
	d1 g,2
	c a f                           % m 88
	bes c1
	f1 a,2
	d1 g,2
	c a f                           % m 92
	bes c1
	f,1.\fermata \bar "||"

	r4 c'' a d c bes     % allegro
	c a f bes a g                   % m 96
	a f bes g c2
	f, g1
	c,4 f d g f e
	f d b f' e d                    % m 100
	e c f d g2
	c,4 c a d c b
	c a f bes a g
	a f d2 e                        % m 104
	f bes b
	c1 r2
	r4 c' a d c bes
	c a f bes a g                   % m 108
	a f bes g c2
	f, g a4 f
	bes2. bes,4 d bes
	es c f2 f,                      % m 112
	bes1 r2
	R1.*2
	r4 bes' g c bes a               % m 116
	bes g e a g f
	g e a f bes a
	g2 a a,
	d1 e2                           % m 120
	f g a
	bes c d
	g, d1
	g,4 c a d c bes                 % m 124
	es c f d g e
	a f d g f e
	f d bes es d c
	d bes g c bes a                 % m 128
	bes a bes g a bes
	c1. ~
	c ~
	c                               % m 132
	bes2 c1

	\time 2/2 f,2 f' ~
	f e
	f f4 e                          % m 136
	d c es d
	c2 d
	g, c'4 bes
	a f bes a                       % m 140
	g es f es
	d2 es4 d
	c bes des c
	bes a g f                       % m 144
	c'2 c4 bes
	a2 aes
	g'4 f es d
	f es d c                        % m 148
	b2 bes
	a g
	gis a
	e' d4 c                         % m 152
	g'2 g,
	c'4 bes a g
	f e g f
	e d c bes                       % m 156
	a2 bes
	c d
	bes c
	d e                             % m 160
	f g
	a a
	bes1
	c4 c, d2                        % m 164
	c1
	f,\fermata \bar "|."
}

continuo = {
	<<
	\new Voice \relative c {
		\clef bass \key f \major \time 2/2
		f4. g8 a4 bes ~
		bes a bes bes,
		c d e c
		f2\fermata r               % m 4
		c4. d8 e4 f ~
		f e f f
		g a b g
		c2\fermata c,4. bes8       % m 8
		a4 f bes2
		a g4 f
		c' d8 e f4 a
		c c, g' g,                 % m 12
		d' d, a'2
		d4. e8 f4 c
		e2 a,2
		g f                        % m 16
		e d
		a' e
		f c'4. bes8
		a2 g                       % m 20
		f4. e'8 d2
		c4 a c2
		f,1 \bar "||"

		\clef soprano     % canzona
		<<
		{ \voiceOne
			c'''2 a4 bes       % m 24
			c d e f ~
			f e
		}
		\new Voice { \voiceTwo
			s2 r8 f, d g        % m 24
			e a f bes g c, d bes
			c2
		}
		>> \oneVoice \clef bass
		    f,2
		d4 e f g
		a bes ~ bes a               % m 28
		bes8 bes, g c a d c e
		f g e a d,4 g
		c,8 f d g e a f bes
		g4 a bes bes, ~             % m 32
		bes a c2
		a4 b c d
		e f ~ f e
		f4. d8 g4. c,8              % m 36
		d4 bes8 es c a g f
		e c f a g4 c
		f, \clef soprano b'' c d
		e f c \clef bass c,,        % m 40
		a bes c2
		d4 d, e fis
		g2 a4 f
		g2 ~ g4 g'                  % m 44
		e f g a
		b c ~ c b
		c8 c, a d b e c f
		d g e c g'2                 % m 48
		c,4. \clef soprano c''8
		    a d bes es
		c f d bes f4 \clef bass f,
		d e f g
		a bes ~ bes a8 f            % m 52
		bes,4 c d4. g,8
		c4. a8 f4 g
		e f c' c'
		a bes c2 ~                  % m 56
		c1 ~
		c2 ~ c8 c, d4
		bes c f,2 \bar "||"

		\time 3/2   % poco largo
		f'2 d1                      % m 60
		a'2. g4 f2 ~
		f e c
		f1 f,2
		f' ~ f e                    % m 64
		d1 c2
		bes1.
		a2 a' f
		bes1 g2                     % m 68
		a f d
		g a a,
		d1 bes2
		es1 c2                      % m 72
		d bes g
		c d1
		g,1.
		g'2 e1                      % m 76
		d g2
		c, a1
		e'1.
		e2 c1                       % m 80
		f1 e2
		d c1
		g'1 e2
		a1 f2                       % m 84
		g e c
		f g1
		c,1 a2
		d1 g,2                      % m 88
		c a f
		bes c1
		f1 a,2
		d1 g,2                      % m 92
		c a f
		bes c1
		f,1. \bar "||"

		r4 c'' a d c bes            % m 96
		c a f bes a g
		a f bes g c2
		f, g1
		c,4 f d g f e               % m 100
		f d b f' e d
		e c f d g2
		c,4 c a d c b
		c a f bes a g               % m 104
		a f d2 e
		f bes b
		c1. ~
		c4 c' a d c bes             % m 108
		c a f bes a g
		a f bes g c2
		f, g a
		bes1 d,2                    % m 112
		es f f,
		bes1. \clef soprano
		r4 bes'' d c bes a
		bes g e g f e               % m 116
		f \clef bass bes, g c bes a
		bes g e a g f
		g e a f bes a
		g2 a a,                     % m 120
		d1 e2
		f g a
		bes c d
		g, d1                       % m 124
		g,4 c a d c bes
		es c f d g e
		a f d g f e
		f d bes es d c              % m 128
		d bes g c bes a
		bes a bes g a bes
		c1. ~
		c ~                         % m 132
		c
		bes2 c1

		\time 2/2 f,2 f' ~
		f e                         % m 136
		f f4 e
		d c es d
		c2 d
		g,2 c'4 bes                 % m 140
		a2 bes4 a
		g es f es
		d c es d
		c bes f2                    % m 144
		bes4 a g f
		c'2 ~ c4 bes
		a2 aes
		g es'4 d                    % m 148
		c2 d4 c
		b2 bes
		a g
		gis a                       % m 152
		e' d4 c
		g'1
		c4 bes a g
		f e g f                     % m 156
		e d c bes
		a2 bes
		c d
		bes c                       % m 160
		d e
		f g
		a1
		bes                         % m 164
		c4 c, d2
		c1
		f,\fermata \bar "|."
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure #'font-size = #-1
		\figuremode {
			r4. <6>8 <6>4 r
			<4- 2>4 r2.
			<7>4 r <5- 4> <7>
			r1                      % m 4
			<5>4 <6>8 <6+> <6>2
			<2> <9>4 <8>
			<7>2 <5 4>4 <7>
			r1                      % m 8
			r
			r
			r2 <4>
			<4> <4>                 % m 12
			<4> <4>4 <3>
			<7> <6+> <4> <6>
			<4> <3+> r2
			<6> r                   % m 16
			r1
			<5+ 4>4 <5- 3> <4> <3>
			<9> <8> r2
			r1                      % m 20
			r
			r
			r

			r1   % canzona            m 24
			r
			r
			<6>
			r2 <2>                  % m 28
			r4 <6> <6> r
			r2 <7>
			r1
			r2 <7>4 <6>             % m 32
			<2>2 <4>4 <3>
			r1
			r2 <2>
			r1                      % m 36
			r
			<6 5>2 <7>4 <7>
			r1
			r                       % m 40
			<6 5>2 <9>4 <8>
			<7> <6> <6 5> r
			<9> <8> <7> r
			<7> <6> <4> <3+>        % m 44
			r1
			r2 <2>
			r4 <6> <6> <6>
			<6+>2 r                 % m 48
			r4. <6>8 <6> <6> <6>
			    <6>
			<6>4 <6> <4> r
			r <6> r2
			r <2>                   % m 52
			<6 5> <9>4 <8>
			<9> <8> <6 5>2
			<6 5>1
			r                       % m 56
			r
			r
			<6 5>

			r2 <6+>1   % p largo      m 60
			r1.
			<2>
			r1.
			r2 <2>1                 % m 64
			<6>1 <6>2
			<7>2 <6>1
			r1.
			<7>2 <5> r              % m 68
			<7> r1
			r1.
			r
			<7>2 <5> r              % m 72
			<7> r1
			r1.
			r
			<_+>2 <6+>1             % m 76
			<_+>1 <_+>2
			r2 <6+>1
			<_+>1.
			<_->2 r1                % m 80
			<6>1.
			r
			r
			<7>2 <5> r              % m 84
			<7> r <_->
			r1.
			r
			<7>2 <5> r              % m 88
			<6 5>2 r <_->
			<6 5>2 r1
			r1.
			<7>2 <5> r              % m 92
			<6 5>2 r <_->
			r1.
			r

			% allegro
			r1. r r r
			r r r r
			r r r r
			r r r
			r1 <5->2
			r1.                     % m 112
			r r r r
			r r r r
			r r r r
			r r r r
			r r r r
			r r

			r2 <6 4>4 <5 3>
			\bassFigureExtendersOn
			<7- 2> <6 2> \bassFigureExtendersOff
			    <6 4-> <5 3>        % m 136
			r1
			<7>
			r
			<7>                     % m 140
			r
			<6->
			<6>4 <6> r2
			<6->4 <6> <6-> <5>      % m 144
			r1
			<4>2 <6- 3>4 <6>
			<6> <5> <4> <3>
			<6-> <5> <6> <6>        % m 148
			<6 5>2 <_+>
			<7> <4>4 <3>
			<7 _+> <6> r2
			<6 5> r                 % m 152
			<4 _+>4 <5 3> r2
			<4> <3+>
			r2 <6>4 <6>
			<6> <6> <6-> <6>        % m 156
			r1
			r
			r
			<6 5>2 <6>              % m 160
			<6> <6>
			r1
			<6>2 <5->
			r1                      % m 164
			r2 <6>
			<4 6> <3 5>
		}
	}
	>>
}

\header {
	title    = "Sonata IV"
	subtitle = "Z 793"
	composer = "Henry Purcell"
	tagline  = ""
}

\score {
	<<
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
