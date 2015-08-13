\version "2.18.2"

#(set-global-staff-size 18)

%#(set-default-paper-size "letter")

\paper {
	% a4 optimized
	left-margin   = 40\pt
	right-margin  = 40\pt
	top-margin    = 40\pt
	bottom-margin = 40\pt
	system-system-spacing #'minimum-distance = #14

	% letter optimized
%	left-margin  = 35\pt
%	right-margin = 35\pt
%	top-margin = 35\pt
%	bottom-margin = 35\pt
%	system-system-spacing #'minimum-distance = #14
}

% ugly alignment details here - a4 version
adaga = \markup { \raise #1.2 { \halign #0.2 \bold Adagio } }
adagb = \markup { \raise #1 { \halign #-0.7 \bold Adagio } }
alleg = \markup { \raise #2 { \halign #-0.7 \bold Allegro } }
canz  = \markup { \raise #1 { \halign #-0.5 \bold Canzona } }
plarg = \markup { \raise #1 { \halign #-0.5 { \bold { poco largo } } } }

% letter version
%adaga = \markup { \raise #1.2 { \halign #-0.2 \bold Adagio } }
%adagb = \markup { \raise #1 { \halign #-0.7 \bold Adagio } }
%alleg = \markup { \raise #2 { \halign #-0.7 \bold Allegro } }
%canz  = \markup { \raise #1 { \halign #-0.7 \bold Canzona } }
%plarg = \markup { \raise #1 { \halign #-0.5 { \bold { poco largo } } } }

vlone = \relative c''' {
	\clef treble \key d \minor \time 2/2
	a4. r16 a16 a4 g8. a16
	f4 g8. f32( g a4.) r16 a
	d,4 g4. g8 f8. e16
	f8. g16 e8. f16 d4. r16 e             % m 4
	c4. r16 d b4 b8. a16
	a2 e'4. r16 e
	e4 d8. e16 c4 d8. c32( d)
	e4. r16 e e8. a,16 d4 ~               % m 8
	d8 d c8. b16 c8. d16 b8. c16
	a4. r16 bes g4. r16 a
	f4. r16 g e4 e8. d16
	d2 a''4. r16 a                        % m 12
	a4 g8. a16 f4 g8. f32( g)
	a4. a8 d,4 g ~
	g8 r16 c, f4. f8 f8. e16
	f4 es8.^\adaga es16 es( d8.) c d16    % m 16
	b1
	r4 d c bes'8. bes16
	bes( a8.) g a16 f4. r16 g
	f4 e a, c8. c16                       % m 20
	c b8. a b16 gis4 g
	f e d f'8. f16
	f( e8.) d e16 cis4 d ~
	d cis d2 \bar "||"                    % m 24

	r8^\canz d d d c16 d c a bes8. c16
	a8. f16 g a g e f8. g16 e4
	d r8 f'4 e d8 ~
	d c4 b a gis8                         % m 28
	a d16 e f8 g e f d e
	c d bes c a bes g a
	f a a a g16 a g e f8. g16
	e8. c16 d e d b c8. d16 b4            % m 32
	a4 r8 bes'4 a g8 ~
	g f4 e d cis8
	d a'16 b c8 d b c a b
	g a f g e f d e                       % m 36
	cis a' d d c16 d c a bes8. c16
	a8. f16 g a g e f8. g16 e4
	d4 r8 f'4 e d8 ~
	d c4 b a gis8                         % m 40
	a4 r8 a' a a g16 a g e
	f8. f16 e8. cis16 d e d c c8 b
	c c16 d e8 e16 f g4 r8 f16 g
	a8 a16 bes c4 r8 f,16 es d8 d16 c     % m 44
	bes4 r8 f16 g a8 a16 bes c4
	r8 g'16 f e8 e16 d c4 r
	r8 es16 d c8 c16 bes a8 bes16 c
	    a8. g16
	g4 r8 bes16 a g8 g16 f es8 es16 d     % m 48
	c8 f'16 es d8 d16 c b cis d8 d8.
	    cis16
	d8 a' a a g16 a g e f8. g16
	e8. c16 d8. d16 c d c a bes4
	a8 a'4 g8 f4 e                        % m 52
	d8 es4 d8 c c'4 bes8
	a8 a4 g8 fis f4 e8
	cis4.^\adagb bes8 a c b d
	cis f e a g bes a g                   % m 56
	f a g f e d cis c
	bes a g f e d g f'
	e g f e d c bes4 ~
	bes8 a r f' e a g f                   % m 60
	e d c bes' a4 g8 f
	e2 d \bar "||"

	\time 3/2
	d^\plarg e1
	cis2. b4 a2                           % m 64
	a2 bes1
	g2. f4 e2
	c' a d
	bes2. es4 d2                          % m 68
	c c2. bes4
	bes2 bes1
	d2 g1
	fis2. e4 d2                           % m 72
	d es1
	c2. bes4 a2
	f' d g
	e2. a4 g2                             % m 76
	f2 f2. e4
	f2 f1
	R1.
	c2 b e                                % m 80
	d1 c2
	b2 b2. a4
	a2 a1
	R1.                                   % m 84
	bes2 a d
	c1 bes2
	a2 a2. g4
	g2 g1                                 % m 88
	r1.
	f'2 e a
	g1 f2
	e e2. d4                              % m 92
	d2 d1
	R1.
	f2\p e a
	g1 f2                                 % m 96
	e e2. d4

	d^\alleg a' bes a g f
	e g a g f e
	d f g f e d                           % m 100
	cis d d2. cis4
	d2 a'2. a4
	a2 g2. g4
	g2 f4 e d c                           % m 104
	b c b1
	a4 a' f d e f
	g4. f8 e4 c d e
	f4. e8 d4 b cis d                     % m 108
	e d cis b a g
	f d' f e d c
	b d e d c b
	a c d c b a                           % m 112
	gis a a2. gis4
	a2 d2. d4
	d2 c2. c4
	c2 bes4 a g f                         % m 116
	e f e1
	d4 d' c a b c
	d4. c8 b4 g a b
	c4. b8 a4 fis gis a                   % m 120
	b a d2. e4
	cis4 cis d c bes a
	g b c bes a g
	f a bes a g f                         % m 124
	e f e1
	d4 a'' bes a g f
	e g a g f e
	d f g f e d                           % m 128
	c f f2. e4
	f2 f2. f4
	f2 e2. e4
	e2 d2. d4                             % m 132
	d c2 c4 b2
	c4 g' e c d e
	f2 r4 f d bes
	c d es2. d4                           % m 136
	c2. bes4 a2
	bes2 bes2. a4
	bes2 bes2. bes4
	bes2 a2. a4                           % m 140
	a2 g2. g4
	g2 fis2. g4
	g d' es d c bes
	a c d c bes a                         % m 144
	g b c bes a g
	f a bes a g f
	e1.
	r4 a'4 bes a g f                      % m 148
	e g a g f e
	d f g f e d
	cis2 f2. f4
	e1 ~ e4 e                             % m 152
	d1 ~ d4 d
	c2 b1
	a2 r r
	r2 r4 f' d b                          % m 156
	c d e2. d4
	c c d e f g
	a bes g2. f4
	f2 r r                                % m 160
	r4 a bes a g f
	e f g f e d
	cis a' f d e f
	g4. f8 e4 cis d e                     % m 164
	f1.
	e
	e
	e2 e2. d4                             % m 168
	d1.\fermata \bar "|."
}

vltwo = \relative c'' {
	\clef treble \key d \minor \time 2/2
	f4. r16 f f4 e ~
	e8 r16 e d4. r16 d c4 ~
	c8 r16 c bes4 a2 ~
	a8. b16 c4. r16 d b4 ~            % m 4
	b8 r16 c a4. r16 a gis4
	a2 c4. r16 c
	c4 b4. r16 b a4 ~
	a8 r16 a g4 f2                    % m 8
	e2 ~ e8. fis16 g4 ~
	g8 r16 a f4. r16 g e4 ~
	e8 r16 f d4. r16 d cis4
	d2 f'4. r16 f                     % m 12
	f4 e4. r16 e d4 ~
	d8 r16 d c4. r16 c bes4 ~
	bes a g2
	a1
	r4 f'8. f16 f( e8.) d e16         % m 16
	cis4 a g f
	f'8. f16 e4 ~ e8. e16 d4 ~
	d8 r16 d cis4 d2 ~
	d2. c8. c16                       % m 20
	c bes8. a bes16 g2 ~
	g4 g'2 f4
	e4. d8 d2 \bar "||"
	R1*2                              % m 24

	% canzona
	r8 a a a g16 a g e f8. g16
	e8. c16 d e d b c8. d16 b4
	a r8 bes'4 a g8 ~                 % m 28
	g f4 e d cis8
	d a'16 b c8 d bes c a bes
	g a f g e f d e
	cis d' d d c16 d c a bes8. c16    % m 32
	a8. f16 g a g e f8. g16 e4
	d r8 f'4 e d8 ~
	d c4 b a gis8
	a d16 e f8 g e f d e              % m 36
	cis d bes c a bes g a
	f a' a a g16 a g e f8. g16
	e8. c16 d e d b c8. d16 b4
	a r8 f'4 e d8 ~                   % m 40
	d c4 bes8 a16 g f e d8 g
	e a16 b c8 c16 d e4 r8 d16 e
	f8 f16 g a4 r r8 bes,16 c
	d8 d16 es f4 r r8 c16 d           % m 44
	e8 e16 f g4 r8 f16 es d8 d16 c
	bes8 bes16 a g8 g16 f e fis g8
	    g fis
	g d' d d c16 d c a bes8. c16
	a8. f16 g a g e f8. g16 e4        % m 48
	d8 f'16 e d8 d16 c bes4 a8 a'
	a a g16 a g e f8. f16 e8. cis16
	d e d c b8 e4 d8 cis c ~
	c bes a a'4 g8 fis f ~            % m 52
	f e d d4 c8 b bes

	a f e g f a g f     % adagio
	e d a' f' e g f e
	d c b d cis a g f ~               % m 56
	f e d bes' a d cis c
	b d cis b a g f f'
	e a g c bes a c bes
	a g f e4 d8 d4 ~                  % m 60
	d cis d2 \bar "||"

	\time 3/2         % poco largo
	f, bes1
	a e2
	f g1                              % m 64
	e2. f4 g2
	a f bes
	g2. a4 bes2
	bes2 a2. bes4                     % m 68
	bes2 f1
	f2 bes1
	a2. g4 fis2
	f g1                              % m 72
	a2. bes4 c2
	d b e
	c2. c4 bes2
	a g2. a8( bes)                    % m 76
	a2 a1
	f2 e a
	g2. f4 e2
	fis2 gis a                        % m 80
	a gis2. a4
	a2 cis,1
	d2 c f
	e1 d2                             % m 84
	e fis g
	g fis2. g4
	g2 g1
	bes2 a d                          % m 88
	cis2. b4 a2
	b cis d ~
	d cis2. d4
	d2 d1                             % m 92
	bes2\p a d
	cis2. b4 a2
	b2 cis d ~
	d cis2. d4                        % m 96
	d2 r r
	R1.*3                             % m 100

	% allegro
	r4 d f e d c
	b d e d c b
	a cis d c b a
	gis a a2. gis4                    % m 104
	a2 d2. d4
	d2 c2. c4
	c2 bes4 a g f
	e f e1                            % m 108
	d4 d' c a b c
	d4. c8 b4 g a b
	c4. b8 a4 fis gis a
	b a gis fis e d                   % m 112
	cis a'' bes a g f
	e g a g f e
	d f g f e d
	cis d d2. cis4                    % m 116
	d2 a'2. a4
	a2 g2. g4
	g2 f4 e d c
	b c b1                            % m 120
	a2 f'2. f4
	f2 e2. e4
	e2 d2. d4
	d2 d2. cis4                       % m 124
	d2 r4 d e d
	cis b a cis d c
	bes a g b c bes
	a bes g1                          % m 128
	a2 a'2. a4
	g1 ~ g4 g
	f1 ~ f4 f
	e2 d1                             % m 132
	c2 r r4 c
	a f g a bes2
	r4 bes g es f g
	aes g f2. es4                     % m 136
	d bes f'1
	bes,2 d'2. d4
	c1 ~ c4 c
	bes1 ~ bes4 bes                   % m 140
	a2 a2. g4
	g1 r2
	R1.
	r4 d' es d c bes                  % m 144
	a c d c bes a
	g b c b a g
	fis1 r2
	r4 e' f e d c                     % m 148
	b d e d cis b
	a2 d2. d4
	d2 c2. c4
	c2 b2. b4                         % m 152
	b a2 a4 gis2
	a4 e' cis a b cis
	d2. d4 bes gis
	a b c2. bes4                      % m 156
	a a bes c d e
	f g e2. f4
	f a bes a g f
	e f g f e d                       % m 160
	cis d e d cis b
	a f' d b cis d
	e4. d8 cis4 a b cis
	d1.                               % m 164
	d
	d
	d2 cis2. d4
	d1.\fermata \bar "|."             % m 168
}

basso = \relative c' {
	\clef bass \key d \minor \time 2/2
	d4. r16 d cis4 a
	d8. c16 bes4 fis2
	g4. r16 g cis,2
	d4 e f d                          % m 4
	e c d e
	a,2 a'4. r16 a
	gis4 e a8. g16 f4
	cis2 d4. r16 d                    % m 8
	gis,2 a4 b
	c a bes g
	a f g a
	d,2 d''4. r16 d                   % m 12
	cis4 a d8. c16 bes4
	fis2 g4. r16 g
	a4 bes c c,
	f2 fis          % adagio          % m 16
	g gis
	a4 f8. f16 f16( e8.) d8. e16
	cis2 d4 bes'8. bes16
	bes( a8.) g a16 fis2              % m 20
	g4 f e4. e8
	d4 c b2
	bes a4 g
	a2 d, \bar "||"                   % m 24

	R1*4    % canzona                 % m 28
	r8 d' d d c16 d c a bes8. c16
	a8. f16 g a g e f8. g16 e4
	d r8 f'4 e d8 ~
	d c4 b a gis8                     % m 32
	a d16 e f8 g e f d e
	c d bes c a bes g a
	d, d' a' a g16 a g e f8. g16
	e8. c16 d e d b c8. d16 b4        % m 36
	a r8 bes'4 a g8 ~
	g f4 e d cis8
	d a'16 bes c8 d bes c a bes
	g a f g e f d e                   % m 40
	a, d d d c16 d c a bes8. c16
	a8. f16 g a g e f8 d g4
	c2 r8 c'16 bes a8 a16 g
	f4 r8 f16 es d8 d16 c bes4        % m 44
	r8 bes16 c d8 d16 es f8 f16 g
	    a8 a16 bes
	c4 r8 c16 bes a8 a16 g fis4
	g8 g16 f es8 es16 d c8 bes d4
	g8 bes16 a g8 g16 f es8 es16 d c4 % m 48
	f8 d16 c bes8 bes16 a g4 a
	d2 r8 d'8 d d
	c16 d c a bes8. c16 a8. f16 g a
	    g e
	f8 d e4 a,8 a'4 g8                % m 52
	fis g4 f8 e es d d' ~
	d c b bes4 a8 g4
	a1     % adagio
	a, ~                              % m 56
	a2 r8 f e a
	g c b d cis f e a
	g bes a g f e d d
	cis f e a g f e d                 % m 60
	c bes a g f4 e8 d
	a'2 d,

	\time 3/2      % poco largo
	d' g,1
	a ~ a4 g'                         % m 64
	f2 bes,1
	c ~ c4 bes
	a2 d bes
	es2. c4 d2                        % m 68
	es f f,
	bes bes1
	bes'2 g1
	d'1 ~ d4 c                        % m 72
	bes2 es,1
	f ~ f4 e
	d2 g e
	a2. a,4 bes2                      % m 76
	f c'1
	f,2 f1
	d'2 c f
	e2. d4 c2                         % m 80
	b1 a2
	d e e,
	a a1
	bes2 a d                          % m 84
	c1 bes2
	a1 g2
	c d d,
	g g1                              % m 88
	g'2 f bes
	a2. g4 f2
	g a bes
	g a a,                            % m 92
	d d1
	g2 f bes
	a2. g4 f2
	g a bes                           % m 96
	g a a,
	d1.

	R1.*7     % allegro
	r4 a' bes a g f
	e g a g f e
	d f g f e d                       % m 108
	cis d d2. cis4
	d2 a'2. a4
	a2 g2. g4
	g2 f4 e d c                       % m 112
	b c b1
	a4 d bes g a bes
	c4. bes8 a4 f g a
	bes4. a8 g4 e f g                 % m 116
	a1 a2
	d4 d f e d c
	b d e d c b
	a c d c bes a                     % m 120
	gis a a2. gis4
	a2 d2. d4
	d2 c2. c4
	c2 bes2. a4                       % m 124
	g2 a1
	d2 r r4 g
	a g f e d f
	g f e d c e                       % m 128
	f d c1
	f4 c a f g a
	bes4. a8 g4 e f g
	a4. g8 f4 d e f                   % m 132
	g e f d g2
	c1 r2

	R1.*4

	r4 bes bes' a g f
	e c f es d c                      % m 140
	d bes es d c bes
	c a d2 d,
	g g'2. g4
	g2 f2. f4                         % m 144
	f2 es2. es4
	es2 d2. d4
	d1 cis2
	d1.                               % m 148
	R1.
	R1.
	r4 a' f d e f
	g4. f8 e4 c d e                   % m 152
	f4. e8 d4 b c d
	e c d b e e,
	a2 r r4 a'
	f d e f g2 ~                      % m 156
	g4 g e c d e
	f2. e4 d2
	bes c1
	f, f'2                            % m 160
	g1.
	a
	a
	a                                 % m 164
	r4 d bes g a bes
	c4. bes8 a4 f g a
	bes4. a8 g4 e f g
	a2 a,1                            % m 168
	d1.\fermata \bar "|."
}

continuo = {
	<<
	\new Voice \relative c {
		\clef bass \key d \minor \time 2/2
		d4 d' cis2
		d4 bes fis2
		g cis,
		d4 e f d                      % m 4
		e c d e
		a,2 a'
		gis a4 f
		cis2 d                        % m 8
		gis, a4 b
		c a bes g
		a f g a
		d,2 d'4 d'                    % m 12
		cis2 d4 bes
		fis2 g
		a4 bes c c,
		f2 fis          % adagio        m 16
		g4( g) gis2
		a4 f e d
		cis2 d4 bes'
		a g fis2                      % m 20
		g4 f e2
		d4 c b2
		bes a4 g
		a2 d,\fermata                 % m 24

		\clef soprano   % canzona
		r8 d''' d d c16 d c a bes8. c16
		a8. f16 g a g e f8. g16 e4
		d a' g8 e f g                 % m 28
		e8. c16 d8 b c d b4
		\clef bass
		a16 g f e d4 c bes
		a g f e
		d a'8 f'4 e d8 ~              % m 32
		d c4 b a gis8
		a d f g e f d e
		c d bes c a bes g a
		d,4 a'8 a' g4 f               % m 36
		e d c b
		a16 g f e d8 bes''4 a g8 ~
		g f4 e d cis8
		d4 a'8 d bes c a bes          % m 40
		g a f g e f d e
		a, d, d'4 c bes
		a g f g
		c2 ~ c8 c' a8. g16            % m 44
		f4 ~ f8. es16 d8. c16 bes4 ~
		bes8. c16 d8. es16 f8. g16
		    a8. bes16
		c4 ~ c8. bes16 a8. g16 fis4
		g8. f16 es8. d16 c8 bes d4    % m 48
		g4 ~ g8. f16 es4 c
		f8 d bes4 g a
		d2 ~ d4 d'
		c bes a g                     % m 52
		f8 d e4 a,8 a'4 g8
		fis8 g4 f8 e es d d' ~
		d c b bes4 a8 g4

		a1         % adagio             m 56
		a, ~
		a2 ~ a8 f e a
		g c b d cis f e a
		g bes a g f e d4              % m 60
		c8 f e a g f e d
		c bes a g f4 e8 d
		a'2 d,\fermata \bar "||"

		\time 3/2   % poco largo
		d'2 g,1                       % m 64
		a ~ a4 g'
		f2 bes,1
		c ~ c4 bes
		a2 d bes                      % m 68
		es2. c4 d2
		es f f,
		bes1.
		bes'2 g1                      % m 72
		d' ~ d4 c
		bes2 es,1
		f1.
		d2 g e                        % m 76
		a2. a,4 bes2
		f c'1
		f,1.
		d'2 c f                       % m 80
		e1 c2
		b1 a2
		d2 e1
		a,1.                          % m 84
		bes2 a d
		c1 bes2
		a1 g2
		c d1                          % m 88
		g,1.
		g'2 f bes
		a1 f2
		g a bes                       % m 92
		g a a,
		d1.
		g2 f bes
		a1 f2                         % m 96
		g a bes
		g a a,

		d4 \clef treble a''' bes a g f
		e g a g f e                   % m 100
		d f g f e d
		cis d d2. cis4
		d2 f4 e d c
		b d e d c b                   % m 104
		b cis d c b a
		gis a ~ a2 gis
		a4 \clef bass a, bes a g f
		e g a g f e                   % m 108
		d f g f e d
		cis d ~ d2 cis
		d a'1 ~
		a2 g1 ~                       % m 112
		g2 f4 e d c 
		b c b1
		a4 d bes1
		c2 a1                         % m 116
		bes2 g1
		a1.
		d2 f4 e d c
		b d e d c b                   % m 120
		a2 d4 c b a
		gis a ~ a2 gis
		a d2. c4
		b g c2. bes4                  % m 124
		a f bes2. a4
		g2 a1
		d g2
		a a, d                        % m 128
		g g, c
		f4 d c1
		f, f2
		bes g1                        % m 132
		a2 f1
		g4 e f d g2
		c1 \clef soprano c''2
		a1 bes2 ~
		bes g1                        % m 136
		aes4 g f2. es4
		d bes f'1
		\clef bass bes,4 bes, bes'2 g
		e f c                         % m 140
		d e bes
		c d d,
		g g'1 ~
		g2 f1 ~                       % m 148
		f2 es1
		es2 d1
		d cis2
		d1.                           % m 152
		\clef soprano a''4 e' f e d c
		b d e d cis b
		a \clef bass a, f1
		g2 e1                         % m 156
		f2 d1
		e4 c d2 e
		a,1 a'2
		f d g ~                       % m 160
		g e1
		f2. e4 d2
		bes c1
		f,1 f'2                       % m 164
		g1.
		a ~
		a ~
		a                             % m 168
		d,
		c
		bes
		a
		d,\fermata \bar "|."
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure #'font-size = #-1
		\figuremode {
			<_>2 <4>4 <3>
			<9>2 <6>4 <5>
			<4> <3> <6 5>2
			<_>4 <6> <6 5>2            % m 4
			<6 5> <6+ 5>
			<_>1
			<6 4>4 <5 3> <9>2
			<6>4 <5> <4> <3>           % m 8
			<6 5>2 <_>4 <6>
			<6 5>2 <6 5>
			<6 5> <6 5>
			<_>1                       % m 12
			<6 4>4 <5 3> <9>2
			<_> <4>4 <3>
			<9>1
			<8>4 <7-> <6> <5>          % m 16
			<_> <7> <6> <5>
			<_> <6> <6> <6>
			<6 4> <5 3> <9>2
			<6>4 <6> <6> <5>           % m 20
			<_+>2 <6 _+>4 <6 3>
			<6> <6> <6> <5>
			<4> <3> <7> <7>
			<_>1                       % m 24

			% canzona
			<_>1
			<_>
			<_>4 <6> <7> <7>
			<7> <7> <7> <7>8 <6+>      % m 28
			<_>4 <7>8 <6> <7> <6>
			    <7> <6>
			<7> <6> <7> <6> <7> <6>
			    <7> <6>
			<_>4. <3>8 <2> <3> <2>
			    <_>
			<2> <3> <2> <3> <2> <3>    % m 32
			    <2> <_>
			<_>4 <6> <6 5> <6 5>
			<6 5> <6 5> <6 5> <6 5>
			r2 <7>8 <6> <7> <6>
			<7> <6> <7> <6> <7> <6>    % m 36
			    <7> <6>
			r1
			r1
			r2 <6 5>4 <6 5>
			<6 5> <6 5> <6 5>          % m 40
			    <6+ 5>
			r2 \bassFigureExtendersOn
			    <6 4>8 <6 3> <6\! 4>
			    <6 3>
			<6\! 4> <6 3> <6\! 4> <6 3>
			    <6\!> <5> <4> <3>
			r1 \bassFigureExtendersOff
			r2 <6>                     % m 44
			r4 <6> r2
			r <6>8. <6->16 <6>4
			<6->8. <6>16 <6>8. <6>16
			    <6>2
			r2 <6>4 <_->               % m 48
			r2 <7>
			r <6 4>
			<6>4 <6> <6> <6>
			<6>2 <7>8 <6> <5> r        % m 52
			<6 5>8 <6->4 <6>8 <6>4
			    <7>8 <6>
			<5>4 <7>8 <6> <5+> <6->
			    <7 _+> <6 _->

			r1    % adagio
			r                          % m 56
			r2 r8 <6> <6+> <_->
			r <6> <6> <6> <6> <6> <6>
			    <6>
			<6> <6> <6> <6> <6> <6>
			    <6>4
			<7>4. <6>8 <6> r <6> <6>   % m 60
			<6> <6> <6> <6> <7> <6> r4
			r1

			r2 <6>1    % poco largo
			r1.                        % m 64
			r2 <6>1
			r1.
			r
			r2. <6>4 <6>2              % m 68
			r1.
			r
			r
			<_+>                       % m 72
			r
			r
			r2 <_+> r
			r1 <6>2                    % m 76
			r1.
			r
			r
			<6>2 <5+> r                % m 80
			<5+> <6+> r
			r1.
			r
			r1 <6>2                    % m 84
			<7> <6> r
			<5> <6> r
			r1.
			r                          % m 88
			r
			<6>2 <5> r
			r <7> r
			r1.                        % m 92
			r
			r
			r
			r                          % m 96
			<6 5>2 r1

			r1.   % allegro
			r
			r                          % m 100
			r
			r
			<7>
			<7>                        % m 104
			r2 <2> r
			r1.
			<7>
			<7>                        % m 108
			r2 <2> r
			r1.
			<2+>2 r1
			<2>2 r1                    % m 112
			r1.
			r
			<9>2 r1
			<9>2 r1                    % m 116
			r1.
			r
			<7>
			<7>                        % m 120
			r2 <2> r
			r1.
			<6 5>2 r1
			<6 5>2 r1                  % m 124
			<6 5>2 r1
			r <6>4 <5>
			r1.
			<_+>                       % m 128
			r
			r
			<6 5>
			<6 5>                      % m 132
			<6 5>2 <6 5> r
			r1.
			r
			r2 <6->1                   % m 136
			r1.
			r
			r
			<6 5>                      % m 140
			<6 5>
			<6 5>
			r
			<2>                        % m 144
			<2>
			<2>
			<2>
			r                          % m 148
			r
			r
			r
			<6 5>                      % m 152
			<6 5>
			<6 5+>
			R1.*15
		}
	}
	>>
}

\header {
	title    = "Sonata III"
	subtitle = "Z 792"
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
