\version "2.18.2"

\include "config.ly"

alleg = \markup { \bold Allegro }
canz  = \markup { \bold Canzona }
larg  = \markup { \bold Largo }

parp = \markup {
	\center-align \concat {
		\bold { \italic ( }
		\dynamic p
		\bold { \italic ) }
	}
}

vlone = \relative c'' {
	\clef treble \key c \major \time 2/2
	c1
	d
	e ~
	e2 d4 c                            % m 4
	f1 ~
	f2 e
	d e4 f
	g1 ~                               % m 8
	g4 c, f2 ~
	f4 e d2
	c4 g a b ~
	b8 a16 g c8 b a b16 c d4 ~         % m 12
	d8 b c d e2 ~
	e4 d8 c f4 g
	a4. g16 f bes4. a8
	g a16 bes c4 fis, g ~              % m 16
	g fis g2
	r1
	d2 e
	fis2. e8 d                         % m 20
	g2. fis4
	e fis8 g a2 ~
	a4 g8 fis g4 d
	f1 ~                               % m 24
	f4 e8 d e4. e8
	d2. c8 b
	c2 ~ c8 d b8. c16
	a4 b2 c4 ~                         % m 28
	c b8 a d2 ~
	d4 c b c8 d
	e1 ~
	e4 d8 c f2 ~                       % m 32
	f4 e d4. e16 f
	e2 e ~
	e4 fis8 g a4 g
	fis e8 d g2 ~                      % m 36
	g4 g f2 ~
	f4 g8 f e4 d
	e c d e ~
	e8 d16 c f4. e8 d e16 f            % m 40
	g4. f8 e2
	g, a
	b2. a8 g
	c2. b4                             % m 44
	a b8 c d4. c8
	b4 c2 c4 ~
	c b c2\fermata \bar "||"

	% canzona
	\mark \canz
	r8 g c e c e g c,                  % m 48
	b8. c16 d8 d16 e fis8 g g8. fis16
	g8. fis16 e8 d16 c b8 g16 a b a b c
	d8 d16 c b8 e d c f g
	e8. d16 c4. c8 b a                 % m 52
	g f16 e d8 d' c b a4
	g8 d g b g b d g,
	fis8. fis16 g8 g16 a b8 c c8. b16
	c8. b16 a8 g16 f e8 c16 d e d e f  % m 56
	g8 a16 g fis8 b a g c d
	b8. a16 g4. g8 fis e
	d16 c' b a g8 g' f e d4
	c8 g c e c e g c,                  % m 60
	b g a d c b a4
	g8 d g b g g16 a b a b c
	d8 d16 c b8 bes a g f8. g16
	e4 r r8 g16 a b a b c              % m 64
	d4. d8 c b a4
	g8 g16 a b a b c d4 r
	r8 d16 e fis e fis g a8 g16 fis
	    e8 fis16 g
	fis8. e16 d8 d, g b g g            % m 68
	c e c c f a f d
	g bes g e c f16 e d8 g16 f
	e8 d16 e f e d c b8 e c8. b16
	a8 e' cis e a, b16 cis d8 d        % m 72
	b d g, a16 b c8 c a c
	f, g16 a bes8 g' e g c,4
	r8 c a c f, bes' g bes
	e, c a d g, c f, bes               % m 76
	e,8 f16 g f4. f8 e4 ~
	e8 f' f e e d d c
	c bes bes a g g' g f
	f es es d c c' c bes               % m 80
	bes a aes g f2 ~
	f8 f f es es des des c
	des c c bes bes aes aes g
	g2 ~ g8 g g f                      % m 84
	f es es d d d' d d
	d c c b bes4 a
	r8 a' a a a g g g
	g f f e e f f f                    % m 88
	f e es es es d d c
	b bes bes aes aes g g f
	f es es d d g' g f
	f es es d d4. c8                   % m 92
	c1\fermata \bar "||"

	% largo
	\time 3/4 \mark \larg
	g'4 g a
	g4. f8 e4
	f f4. e8                           % m 96
	d4. c8 b4
	c c4. d8
	b4. a8 g4
	g8. a16 a4. g8                     % m 100
	g2.
	d'4 d e
	d4. c8 b4
	e c4. b8                           % m 104
	c4. b8 a4
	f'4 f4. e8
	d4. g8 e4
	f d4. g8                           % m 108
	e4 c2 \bar "||"

	g'4 g g
	gis4. gis8 a4
	e4. e8 f4                          % m 112
	e e4. d8
	e4 e2
	c4 c c
	cis4. cis8 d4                      % m 116
	a4. a'8 bes4
	a4 a4. g8
	a g f4 e
	f2 f4                              % m 120
	f8 e d4 c
	d2 d4
	d8 c b4 a
	b2 c4                              % m 124
	b8 a g4 fis
	g2 gis4
	a e e'
	f8 e d4 cis                        % m 128
	d a a'
	bes8 a g4 fis
	g8. a16 g8. f16 e4
	f8 e d4 c                          % m 132
	d g,2
	a4 b4. c8
	c2.\fermata \bar "||"

	% allegro
	\time 3/8 \mark \alleg
	r8 c16 b c d                       % m 136
	e8 c e
	d g16 f e d
	c8 e16 d e fis
	g4 g8                              % m 140
	g fis4
	g16 f e8 d
	c e c
	f d g                              % m 144
	e g,16 fis g a
	b8 g b
	a d16 c b a
	g8 a16 g a b                       % m 148
	c4 c8
	c b4
	c8 b a
	g b g                              % m 152
	c a d
	b c d
	g,4 g'8
	f f8. e16                          % m 156
	e8 c16 b c d
	e8 c e
	d g16 f e d
	c8 a d                             % m 160
	b4 r8
	r8 d,16 c d e
	f8 e a
	g g16 fis g a                      % m 164
	b8 g bes
	a d16 c b a
	g8. g16 a b
	c8 f16 e f g                       % m 168
	a8 f a
	g c16 b a g
	f e d8. c16
	c4 r8                              % m 172
	r8 f16_\parp e f g
	a8 f a
	g c16 b a g
	f e d8. c16                        % m 176
	c4.\fermata \bar "|."
}

vltwo = \relative c'' {
	\clef treble \key c \major \time 2/2
	r2 g
	a b ~
	b4 a8 g c2 ~
	c4 b a b8 c                        % m 4
	d4. c8 b4 a
	g2. c4 ~
	c b a2
	g4 c8 g bes4. c8                   % m 8
	a4. b16 c d4. c8
	b4 c2 b4
	c r c, d
	e4. d16 c f8 e d e16 f             % m 12
	g4 a8 b c2 ~
	c4 b8 a d4 e
	f2 ~ f8 e d e16 f
	e4 es d4. d8                       % m 16
	c b c2 b8 a
	b4 d, e fis ~
	fis8 e16 d g4. fis8 e fis16 g
	a2. g8 fis                         % m 20
	g4 a b4. a16 g
	c2 ~ c8 b a b16 c
	d1 ~
	d4 e8 d c4 b                       % m 24
	c4. b16 a g4 e
	fis2 gis
	a4 e g2 ~
	g4 fis g2                          % m 28
	a2. g8 fis
	b4 a g r
	g1
	a                                  % m 32
	b ~
	b2 a4 g
	c1 ~
	c2 b                               % m 36
	a b4 c
	d1
	g,2 g
	a b ~                              % m 40
	b4 a8 g c2 ~
	c4 b a b8 c
	d2. c8 b
	e2. d4                             % m 44
	c4 d8 e f2 ~
	f4 e es4. d8
	d4. c8 c2\fermata \bar "||"

	R1*2  % canzona                    % m 48
	r8 d, g b g b d g,
	fis8. fis16 g8 g16 a b8 c c8. b16
	c8. b16 a8 g16 f e8 c16 d e d e f  % m 52
	g8 a16 g fis8 b a g c d
	b8. a16 g4. g8 fis e
	d16 c' b a g8 g' f e d4
	c8 g c e c e g c,                  % m 56
	b8. c16 d8 d16 e fis8 g g8. fis16
	g8. fis16 e8 d16 c b8 g16 a
	    b a b c
	d8 d16 c b8 e d c f g
	e8. d16 c4 r8 g c e                % m 60
	d b d g, fis g g fis
	g4 r8 d' g b a g
	fis f e es d c c8. b16
	c8 c,16 d e d e f g4 r             % m 64
	r8 d16 e fis e fis g a8 b c d
	b d, g b g b d g,
	fis8. g16 a8 a16 b cis8 d d8. cis16
	d8 a b d b d, e g                  % m 68
	e e a c a a d f
	d d e c a d16 c b8 e16 d
	c8 b16 c d c b a gis8 a a8. gis16
	a4 r r8 a f a                      % m 72
	d, g e g c, d16 e f8 f'
	d f bes, c16 d g,4 r8 c'
	a c f, a d, d bes d
	g, g' c, f bes, es a, d            % m 76
	g, a16 bes c8 a g c c bes
	bes a a g g4 fis
	g8 es' es d d c c b
	c aes' aes g g f f8. e16           % m 80
	f8 f f es es d des c
	c bes bes4. bes8 a4
	bes8 aes aes g g f f e
	e es es d d c c8. d16              % m 84
	b8 c' c bes bes a a g
	g g' g g g f f e
	e4. e8 d4. e8
	cis d d d d c c b                  % m 88
	b4 bes a8 aes aes aes
	aes g g f f es es d
	d c c b b es' es d
	d c c4. c8 b4                      % m 92
	c1\fermata \bar "||"

	\time 3/4        % largo
	e4 e f
	e4. d8 c4
	d4 d4. c8                          % m 96
	b4. a8 g4
	a4 a2 ~
	a4 g d
	e fis2                             % m 100
	g2.
	b4 b c
	b4. a8 g a
	b4. a8 gis4                        % m 104
	a4. b8 c4
	d d4. c8
	b4. b8 c4
	d b4. c8                           % m 108
	c4 g2
	e'4 e e
	d4. d8 c4
	b4. b8 c4                          % m 112
	b4 a4. b8
	gis4 gis2
	a4 a a
	g4. g8 f4                          % m 116
	e4. e'8 f4
	e d4. e8
	cis4 d e
	e8 d c4 b                          % m 120
	c2 c4
	c8 b a4 g
	a2 a4
	a8 g fis4 e                        % m 124
	e2 dis4
	e2 d'4
	e8 d c4 b
	c a g'                             % m 128
	a8 g f4 e
	f8 e d4 c
	d2 g4
	a8 g f4 e                          % m 132
	f d e ~
	e8 f d4. c8
	c2.\fermata \bar "||"

	\time 3/8    % allegro
	R4.*3
	r8 g16 fis g a
	b8 g b                             % m 140
	a d16 c b a
	g8 a16 g a b
	c4 c8
	c b4                               % m 144
	c8 b a
	g b g
	c a d
	b c16 b c d                        % m 148
	e8 c e
	d g16 f e d
	c8 e16 d e fis
	g4 g8                              % m 152
	g fis4
	g8 f f
	f e e
	d d4                               % m 156
	c8 r4
	r8 g16 fis g a
	b8 g b
	a d16 c b a                        % m 160
	g4 r8
	R4.
	r8 c,16 b c d
	e8 c e                             % m 164
	d g16 f e d
	c8 f16 e d c
	b8 c'16 b c d
	e8 c e ~                           % m 168
	e d c
	b c4
	c b8
	c8 c16\p b c d                     % m 172
	e8 c e ~
	e d c
	b c4
	c b8                               % m 176
	c4.\fermata \bar "||"
}

basso = \relative c {
	\clef bass \key c \major \time 2/2
	c4 d e4. d16 c
	f4. e8 d e16 f g4
	c,2. b4
	a g f e                            % m 4
	d a' d c
	b a8 g c4 e
	g2. f4
	e4. d8 e4 c                        % m 8
	f2. d4
	g2 g,
	c r
	c d                                % m 12
	e2. d8 c
	f2. e4
	d e8 f g2
	c,2. b4                            % m 16
	a2 g ~
	g g'4 a
	b4. a16 g c4. b8
	a b16 c d4 b2 ~                    % m 20
	b4 a8 g g,2
	a1
	b ~
	b2 a4 g                            % m 24
	c1 ~
	c2 b
	a b4 c
	d2 e                               % m 28
	fis2. e8 d
	g2 ~ g8 f e d
	c4 d e4. d16 c
	f4. e8 d4. e16 f                   % m 32
	g4 a b4. a16 g
	c2. b4
	a2. b8 c
	d2 g,                              % m 36
	d2. c4
	b4. a8 b4 g
	c2 r
	R1                                 % m 40
	r2 c4 d
	e4. d16 c f4. e8
	d e16 f g4 e2 ~
	e4 d8 c f2 ~                       % m 44
	f4 e d e8 f
	g4 c, f,2
	g c\fermata \bar "||"

	R1*4        % canzona
	r8 g c e c e g c,                  % m 52
	b8. c16 d8 d16 e fis8 g g8. fis16
	g8. fis16 e8 d16 c b8 g16 a
	    b a b c
	d8 d16 c b8 e d c f g
	e8. d16 c4. c8 b a                 % m 56
	g f16 e d8 d' c b a4
	g8 d' g b g b d g,
	fis8. fis16 g8 g16 a b8 c c8. b16
	c8. b16 a8 g16 f e8 c16 d e d e f  % m 60
	g8 a16 g fis8 b a g c d
	b8. a16 g4. g8 fis e
	d16 c b a g8 g' f e d g
	c, g c e c e g c,                  % m 64
	b8. c16 d8 d16 e fis8 g g8. fis16
	g4 r r8 g,16 a b a b c
	d4. cis16 b a8 b g a
	d d g b g g, c e                   % m 68
	c c f a f f bes d
	b g c c, f d g e
	a a, d16 e f d e8 c d e
	a,4 r8 a' f a d, e16 f             % m 72
	g8 a16 b c8 c a c f, g16 a
	bes8 a g b, c bes a e
	f2 bes
	c1 ~                               % m 76
	c8 c a f c'2
	cis d8 bes' bes a
	a g g f es4 d
	c8 c' c bes aes4 g                 % m 80
	f2 ~ f8 f f es
	es des des4 c f
	bes,1
	c8 c c bes bes aes aes g           % m 84
	g4 r8 g' g f f e
	es2 d8 d' d d
	d c c b bes2
	a4 g a4. a8                        % m 88
	g4. g8 f2
	g1
	g, ~
	g4. f8 g2                          % m 92
	c1\fermata \bar "||"

	\time 3/4     % largo
	c'4 c f,
	c2 c'4 ~
	c b c                              % m 96
	g2 g4 ~
	g fis d
	g g, b
	c d d,                             % m 100
	g2.
	g'4 g c,
	g2 g'4
	gis e2                             % m 104
	a4. g8 f e
	d4 e f
	g e a
	f g g,                             % m 108
	c2 c4 \bar "||"
	c'4 c c
	b4. b8 a4
	gis4. gis8 a4                      % m 112
	g4 f2
	e4 e,2
	f'4 f f
	e4. e8 d4                          % m 116
	cis2 d'4
	c bes2
	a4 b cis
	d2 d,4                             % m 120
	a'2 e4
	fis g b,
	c d d,
	g2 a4                              % m 124
	b2 b4
	e8 d c4 b
	c gis gis'
	a8 g f4 e                          % m 128
	f cis cis'
	d8 c bes4 a
	b2 c4
	f,4. g8 a4                         % m 132
	b,2 c4
	f,4 g2
	c2.\fermata \bar "||"

	\time 3/8     % allegro
	R4.*6
	r8 c16 b c d
	e8 c e
	d g16 f e d                        % m 144
	c8 e16 d e fis
	g4 g8
	g fis4
	g16 f e8 d                         % m 148
	c e c
	f d g
	e g16 fis g a
	b8 g b                             % m 152
	a d16 c b a
	g8 a16 g a b
	c4 c8
	c b4                               % m 156
	c4.
	c,
	b8. a16 g8 ~
	g fis4                             % m 160
	g8 g16 fis g a
	b8 g b
	a4 f8
	c'16 d e d e fis                   % m 164
	g4 g8 ~
	g f4 ~
	f8 e d
	c16 bes a8 g                       % m 168
	f4. ~
	f8 e f
	g4.
	c4 g8_\parp                        % m 172
	c16 bes a8 g
	f4. ~
	f8 e f
	g4.                                % m 176
	c\fermata \bar "|."
}

continuo = {
	<<
	\new Voice \relative c {
		\clef bass \key c \major \time 2/2
		c4 d e c
		f2 d4 g
		c,2 ~ c4 b
		a g f e                          % m 4
		d a' d c
		b2 c4 e
		g2 ~ g4 f
		e2 ~ e4 c                        % m 8
		f2 ~ f4 d
		g2 g,
		c c'4 d
		c,2 d                            % m 12
		e2 ~ e4 c
		f2 ~ f4 e
		d2 g4 g,
		c2 ~ c4 b                        % m 16
		a2 g ~
		g g'4 a
		b g c2
		a4 d b2 ~                        % m 20
		b4 a8 g g,2
		a1
		b ~
		b2 a4 g                          % m 24
		c1 ~
		c2 b
		a b4 c
		d2 e                             % m 28
		fis2 ~ fis4 d
		g2 ~ g8 f e d
		c4 d e c
		f2 d                             % m 32
		g4 a b g
		c2 ~ c4 b
		a2. b8 c
		d2 g,                            % m 36
		d ~ d4 c
		b4. a8 b4 g
		c2 \clef soprano g''
		a b ~                            % m 40
		b4 g \clef bass c,, d
		e c f2
		d4 g e2 ~
		e4 c f2 ~                        % m 44
		f4 e d e8 f
		g4 c, f,2
		g c\fermata \bar "||"

		\clef soprano    % canzona
		r8 g'' c e c e g c,              % m 48
		b8. c16 d8 d16 e fis8 g
		    g8. fis16
		<<
		{ \voiceOne
			g8. fis16 e8 d16 c
		}
		\new Voice { \voiceTwo
			r8 d, g b g b d g,
		}
		>> \oneVoice
		fis8. fis16 g8 g16 a b8 c
		    c8. b16
		c8 \clef bass g,, c e c e g c,  % m 52
		b8. c16 d8. e16 fis8 g4 fis8
		g8. fis16 e8 d16 c b8 g b c
		d8. c16 b8 e d c f g
		e8. d16 c4. c8 b a              % m 56
		g f16 e d8 d' c b a4
		g8 d' g b g b d g,
		fis4 g8. a16 b8 c4 b8
		c8. b16 a8 g16 f e4 c           % m 60
		g' fis8 b a g c d
		b8. a16 g4. g8 fis e
		d16 c b a g8 g' f e d4
		c8 g c e c e g c,               % m 64
		b8. c16 d8. e16 fis8 g4 fis8
		g2 ~ g8 g, b c
		d4. b8 a b g a
		d4 g,2 c4 ~                     % m 68
		c8 c f4. f8 bes4 ~
		bes8 g c c, f d g e
		a a, d4 e8 c d e
		a,4. a'8 f a d, f               % m 72
		g b c4 a8 c f, a
		bes a g b, c bes a e
		f2 bes
		c ~ c ~                         % m 76
		c4 a8 f c'2
		cis d
		g, ~ g
		c ~ c                           % m 80
		f, a
		bes f
		bes1
		c2 bes4 aes                     % m 84
		g2 g'4 f
		es2 d
		d'4 c bes2
		a4 g a2                         % m 88
		g f
		g ~ g
		g, ~ g ~
		g4. f8 g2                       % m 92
		c1\fermata \bar "||"

		\time 3/4     % largo
		c'2 f,4
		c2 c'4 ~
		c b c                           % m 96
		g2 g4 ~
		g fis d
		g g, b
		c d2                            % m 100
		g,2.
		g'2 c,4
		g2 g'4
		gis e2                          % m 104
		a4. g8 f e
		d4 e f
		g e a
		f g g,                          % m 108
		c2. \bar "||"
		c'2 c4
		b2 a4
		gis2 a4                         % m 112
		g f2
		e4 e,2
		f'2 f4
		e2 d4                           % m 116
		cis2 d'4
		c bes2
		a4 b cis
		d2 d,4                          % m 120
		a'2 e4
		fis g b,
		c d d,
		g2 a4                           % m 124
		b2.
		e8 d c4 b
		c gis gis'
		a8 g f4 e                       % m 128
		f cis cis'
		d8 c bes4 a
		b2 c4
		f,4. g8 a4                      % m 132
		b,2 c4
		f, g2
		c2.\fermata \bar "||"

		\time 3/8 \clef soprano   % allegro
		r8 c''16 b c d                  % m 136
		e8 c e
		d g16 f e d
		c8 g16 fis g a
		b8 g b                          % m 140
		a d16 c b a
		g8 \clef bass c,,16 b c d
		e8 c e
		d g16 f e d                     % m 144
		c8 e fis
		g4. ~
		g8 fis4
		g16 f e8 d                      % m 148
		c8. b16 a g
		f8 g g'
		e g16 f g a
		b8 g b                          % m 152
		a d16 c b a
		g8 a b
		c4. ~
		c8 b4                           % m 156
		c4.
		c,
		b8. a16 g8 ~
		g fis4                          % m 160
		g a8
		b g b
		a4 f8
		c'16 d e d e fis                % m 164
		g4 g8 ~
		g f4 ~
		f8 e d
		c16 bes a8 g                    % m 168
		f4. ~
		f8 e f
		g4.
		c4 g8\p                         % m 172
		c16 bes a8 g
		f4. ~
		f8 e f
		g4.                             % m 176
		c\fermata \bar "|."
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure #'font-size = #-1
		\figuremode {
			r1
			<6 5>2 <6>
			<7>4. <5>8 r2
			r2 <6>4 <6>             % m 4
			r2 <6>4 <6>
			<6 5>2 r
			<4>4 <3> <2> r
			r2 <5->                 % m 8
			<9> <6>
			<7>4 <6> r2
			r <6>4 <6>
			<7> <6> <5> <6>         % m 12
			<7> <5> <6>2
			<7>4 <5> <6>2
			r <7 _->
			r4 <3->4 <2>2           % m 16
			<7>4 <6> r2
			r <6>4 <6+>
			<5>2 r
			<6+> <7>4 <5+>          % m 20
			<6>1
			r
			<7>2 <6>
			r1                      % m 24
			<4>2 <3>
			<4+ 2>2 <6+>
			r2 <9 6>4 <7>
			<4> <3+> <5> <6>        % m 28
			<5> <6> r2
			r1
			r
			<7>4 <5> r2             % m 32
			<7> r
			<7> <6>4 <6>
			r1
			<7>2 r                  % m 36
			<4> <3>
			<6 5>1
			r2 <5>4 <6>
			<5> <6> <5> <6>         % m 40
			r1
			r
			<6>2 <7>4 <5>
			<6>2 <7>4 <6>           % m 44
			<5>2 r
			<7> <7->
			r1

			R1*3         % canzona    m 48
			r4 <6> r <4>
			r <6> r8 <6> <6>4       % m 52
			r <6> r8 <3> <2> r
			r1
			r2 <6>4 <6 5>
			r <6>8 <5> r2           % m 56
			r4 <6> <6 4+> <7>8 <6+>
			r4 <6> r8 <6> <6>4
			r4 <6> r8 <3> <2> r
			r1                      % m 60
			r2 <6+>
			r1
			r4 <6>8 <6- 3-> <6> <6>
			    <7> <6>
			r1                      % m 64
			r2 r8 <3> <2> r
			R1*6
			r4 <_+> r2              % m 72
			R1*3
			<5>4 <6> <7- 5> <6 4>   % m 76
			<3>2 <4>4 <3>
			<6>4 <5> <4> <3>
			r2 <6->4 <5>
			r2 <6->4 <5>            % m 80
			r <_-> r2
			<_-> r
			<_->1
			r8 <_->4. r4 <7>8 <6>   % m 84
			<7 3>4 <6- 4> r2
			<7>4 <6> <6- 4> <5 3>
			<2>2 <7>4 <6>
			<7> <7> <5 4> <6 3>     % m 88
			<7 3> <6- 3-> <7> <6>
			<7 9-> <6- 8> <9- 7>
			    <8 6->
			<7 5> <6- 4> <5 3> <6->
			<7 5> <6- 4> r2         % m 92
			r1

			R2.*2     % largo
			<2>2.                   % m 96
			r
			<2>
			<9>
			<6 5>                   % m 100
			R2.*7
			<6 5>2.                 % m 108
			r
			r
			<6+>
			<6>2 <6>4               % m 112
			<6> <7>4. <6>8
			r2.
			r
			<6+>                    % m 116
			r2 <6->4
			<6> <7>4. <6>8
			r2.
			<9>2 <8>4               % m 120
			<4>2 <6>4
			r <9> r
			<6 5>2.
			r                       % m 124
			<4>2 <3+>4
			r2 <6+>4
			<6>2.
			<6>8 <6> <6>4 <6+>      % m 128
			r2.
			<6->8 <6> <6>4 <6+>
			r2.
			<5>4 <6> r              % m 132
			R2.*3

			R4.*3      % allegro      m 136
			r8 <6> <6+>
			<6>4.                   % m 140
			<7>
			r8 <6>4
			r4.
			<7>                     % m 144
			r
			r
			<2>
			r                       % m 148
			r
			<6 5>
			r8 <6> <6+>
			r4.                     % m 152
			<7>
			r8 <6> r
			<4> <3> r
			<2>4.                   % m 156
			R4.*3
			<2>4.                   % m 160
			r r
			<6>
			r
			r4 <3->8
			<2>4.                   % m 166
			<2>
			r4 <6>8
			r4.
			<2>                     % m 170
			R4.*7
		}
	}
	>>
}

\header {
	title    = "Sonata VI"
	subtitle = "Z 795"
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
