% See LICENSE.txt for license details
\version "2.24.0"

\include "config.ly"

alleg = \markup { \bold Allegro }
alviv = \markup { \bold "Allegro/Vivace" }
grave = \markup { \bold Grave }
plarg = \markup { \bold "Poco largo" }

vlone = \relative c'' {
	\clef treble \key g \major \time 2/2
	c2. b8 a
	b g b c d e fis d
	g a16 b a8 g a2 ~
	a8. b16 a8 g16 a fis a g fis e8 fis16 g       % m 4
	fis g e fis d e c d b2 ~
	b8 c16 b a8 g d'2 ~
	d ~ d16 c b c c8. b16
	b2 ~ b8 b a g                                 % m 8
	a b c a d d e fis
	g2. fis8 e
	fis d fis g a b c a
	b a16 b g8. fis16 e2 ~                        % m 12
	e2. d4 ~
	d cis8 b cis a b cis
	d4. c16 b a4. a8
	g2 ~ g8 a16 g f8 e                            % m 16
	d4 g8 f e4 e' ~
	e dis8 cis dis b cis dis
	e fis g e a2 ~
	a ~ a8 d, g4 ~                                % m 20
	g f2 e8 d
	e c e fis g a b g
	c4 c,2 b8 a
	d c b4 a2 ~                                   % m 24
	a4 gis8 fis gis e fis gis
	a2 ~ a8 a d4 ~
	d c8 b c a b c
	d2 ~ d8 b c d                                 % m 28
	e fis g2 fis4
	g1 \bar "||"

	\time 3/2 \mark \plarg        % poco largo
	g2. a8 g fis4. e8
	d2. d4 g4. b8                                 % m 32
	a2. g4 a2
	d,1.
	b2. b4 cis2
	d2. c4 b4. d8                                 % m 36
	c4. b8 a2. g4
	fis1.
	d2. g4 a2
	b2. a4 g2                                     % m 40
	g fis1
	g1.
	g'2. g4 a2
	b2. a4 g2                                     % m 44
	g fis1
	g2. a4 g4. fis8
	e2. e4 fis2
	g2. fis4 e2                                   % m 48
	e dis1
	e2. d4 e cis
	fis2. fis4 g2
	a2. g4 fis4. a8                               % m 52
	g4. fis8 e2. g4
	fis1.
	g2. fis4 e2
	d2. c4 b4. c8                                 % m 56
	c4. b8 a2. d4
	b1.
	g'2.\p fis4 e2
	d2. c4 b4. c8                                 % m 60
	c4. b8 a2. d4

	% allegro
	\mark \alleg
	b1 r2
	R1.*3
	r4 d fis g a g8 fis
	e4. d8 e4 fis g fis8 e
	d4. cis8 d4 e fis g                           % m 68
	a b e,1
	d2 d1
	c1.
	b2. b4 a g                                    % m 72
	fis g g2. fis4
	g b a g fis g
	a g8 fis e4. d8 e4 fis
	g a b c d e                                   % m 76
	d b cis2. d4
	d a b c d c8 b
	a4. g8 a4 b c b8 a
	g4. fis8 g4 a b c                             % m 80
	d e a,1
	b2 a'1
	g1.
	fis2. fis4 e d                                % m 84
	cis d d2. cis4
	d e d c b c
	d c8 b a4. g8 a4 b
	c d e fis g a                                 % m 88
	g e fis2. g4
	g g, b c d c8 b
	a4. g8 a4 b c b8 a
	g4. fis8 g4 a b c                             % m 92
	d c c2. b4
	c2. a4 b c
	d4. e8 d4 c8 b a4 b
	c4. d8 c4 b a gis                             % m 96
	a b gis2. a4
	a e' cis b a b8 cis
	d4. e8 d4 c b c8 d
	e4. f8 e4 d c b                               % m 100
	a g fis1
	e r2

	R1.*3
	r4 fis' d cis b cis8 d
	e4. fis8 e4 d cis d8 e
	fis4. g8 fis4 e d cis                         % m 108
	b2 ais2. ais4
	b2 b1
	cis1.
	d2. d4 e fis                                  % m 112
	g fis e1
	d4 d fis g a g8 fis
	e4. d8 e4 fis g fis8 e
	d4. c8 d4 e f e8 d                            % m 116
	c4 b8 c a4 b8 c d4 c
	b2. b4 a b
	c4. d8 c4 b8 a g4 a
	b g  b c d c8 b                               % m 120
	a4. g8 a4 b c b8 a
	g4. fis8 g4 a b c
	d e a,1
	g1.\fermata \bar "||"                         % m 124

	\time 2/2 \mark \grave         % grave
	fis4 fis8. fis16 b2 ~
	b4 b8. b16 e2 ~
	e4 e8. e16 f2 ~
	f4 fis8. fis16 g2                             % m 128
	gis2. a8. e16
	fis2. g8. b,16
	cis4 d2 c4 ~
	c b2 c8. e,16                                 % m 132
	fis4 g4. a16 b g8. fis16

	\mark \alviv
	g4. g16 a b8 b cis cis    % allegro/vivace
	d d c b a2 ~
	a4 d2 r16 d cis b                             % m 136
	cis a b cis d e fis d a'2
	g4 fis e2 ~
	e4 a, r c ~
	c r16 c b a b g a b c d e c                   % m 140
	d2 g,4. g16 a
	b8 b c c d d c b
	a4 g8 fis e a4 a16 g
	fis8 fis e e d d e fis                        % m 144
	g4 a2 r16 g fis e
	fis d e fis g a b g c b a g fis8 e
	d4. d16 e fis8 fis g4 ~
	g16 g fis e fis d fis g a b c a b4            % m 148
	e, d'2 r16 e d cis
	d b d e fis g a fis b4. b16 a
	g8 g fis fis e e fis g
	a4. a16 g fis8 fis e e                        % m 152
	d2 ~ d8. e16 f4 ~
	f r16 f e d e d c d e fis g e
	fis2 g8. fis16 e4 ~
	e d2 c4 ~                                     % m 156
	c b a2
	b1\fermata \bar "|."
}

vltwo = \relative c'' {
	\clef treble \key g \major \time 2/2
	R1*2
	g2. fis8 e
	fis d fis g a b cis a                         % m 4
	d c b a g16 a fis g e fis d f
	e4. e8 fis4. fis8
	g4. a8 b4 a ~
	a8 d, g4. a16 g fis8 e                        % m 8
	fis g a4. g8 c4 ~
	c b8 a b g b cis
	d a d e fis d g fis16 e
	d2. c8 b                                      % m 12
	cis a b cis d e fis d
	g2. fis8 e
	fis g a4. a,8 d c
	b4. b8 c2 ~                                   % m 16
	c4 b2 a8 g
	a fis g a b2 ~
	b8 cis16 dis e8 d cis2
	d4 c b2                                       % m 20
	a g ~
	g4 c d g ~
	g fis8 e fis d e fis
	g fis e d c2                                  % m 24
	b2 ~ b4. b8
	e, cis d e fis g a fis
	b4 g c2 ~
	c4 b8 a b g a b                               % m 28
	c d c b a2
	b1 \bar "||"

	\time 3/2             % poco largo
	b2. b4 c2
	d2. c4 b4. d8                                 % m 32
	c4. b8 a2. c4
	b1.
	d2. d4 e2
	fis2. e4 d2                                   % m 36
	d cis1
	d1.
	g2. a8 g fis4. e8
	d2. d4 g4. b8                                 % m 40
	a2. g4 a2
	d,2. e4 f2
	e2. e4 fis2
	g2. fis4 e4. g8                               % m 44
	fis4. e8 d2. c4
	b2. b4 e4. d8
	cis2. cis4 dis2
	e2. d4 cis4. e8                               % m 48
	dis4. cis8 b2. a4
	gis2. b4 cis a
	d2. e8 d c4. b8
	a2. a4 d4. fis8                               % m 52
	e2. d4 e2
	a,1.
	d2. d4 c2
	b2. a4 g4. a8                                 % m 56
	a4. g8 g2 fis
	g1.
	d'2.\p d4 c2
	b2. a4 g4. a8                                 % m 60
	a4. g8 g2 fis

	g4 g b c d c8 b          % allegro
	a4. g8 a4 b c b8 a
	g4. fis8 g4 a b c                             % m 64
	d e a,1
	g2 d'1
	c1.
	b2. b4 a g                                    % m 68
	fis g a1
	d,4 b' a g fis g
	a g8 fis e4. d8 e4 fis
	g a b c d e                                   % m 72
	d b c2. d4
	b d fis g a g8 fis
	e4. d8 e4 fis g fis8 e
	d4. cis8 d4 e fis g                           % m 76
	a b e,1
	d g2
	fis1.
	e2. e4 d c                                    % m 80
	b c d1
	d4 fis e d cis d
	e d8 c b4. a8 b4 cis
	d e fis g a b                                 % m 84
	a fis g2. a4
	fis a, b c d c8 b
	a4. g8 a4 b c b8 a
	g4. fis8 g4 a b c                             % m 88
	d e a,1
	g r2
	r4 d4 fis g a g8 fis
	e4. d8 e4 fis g fis8 e                        % m 92
	f4 e d e8 fis g2
	c,4 e' g f8 e d4 e
	f4. g8 f4 e8 d c4 d
	e4. fis8 e4 d c b                             % m 96
	c d b2. a4
	a2 e'1
	d1.
	c2. b4 a g                                    % m 100
	fis e e2 dis
	e4 e g a b a8 g
	fis4. e8 fis4 g a g8 fis
	e4. d8 e4 fis g a                             % m 104
	b cis cis2. b4
	ais2 r4 fis' d cis
	b4 cis8 d e4. fis8 e4 d
	cis d8 e fis4. g8 fis4 e                      % m 108
	d cis cis2. b4
	b fis' g2. fis4
	e2. e4 a g
	fis2. fis4 b a                                % m 112
	cis, d d2. cis4
	d1 r2
	r a1 ~
	a2 g1 ~                                       % m 116
	g2 fis1
	g2. g4 fis g
	a4. b8 a4 g8 fis e4 fis
	g1 g2                                         % m 120
	fis4 d fis g a g8 fis
	e4. d8 e4 fis g fis8 e
	d4 g fis2. g4
	g1.\fermata \bar "||"                         % m 124

	\time 2/2                % grave
	dis2. dis8. dis16
	e2. gis8. gis16
	a2. cis8. cis16
	d2. dis8. dis16                               % m 128
	e2 e4. e8
	a,4 a8. a16 b4 e, ~
	e8 e fis8. d16 g4 a8. e16
	fis4 g8. d16 e2                               % m 132
	d4. e8 c4. d8

	b4 g'2 r16 g fis e       % vivace
	fis d e fis g a b g d'2
	d4. d16 e fis8 fis g g                        % m 136
	a a g fis e2 ~
	e4 d2 r16 d cis b
	cis a b cis d e fis d a'4. a16 g
	fis8 fis e e d d e8. fis16                    % m 140
	g4 g4. g16 fis e8 e
	d g,4 g16 a b8 b c c
	d c b4. e,8 c'4 ~
	c r16 c b a b g a b c b c a                   % m 144
	b a b g d'4. cis16 b cis4
	d8 c b2 r16 b a g
	a fis g a b c d b c8. d16 b4
	a8 a d2 r16 d cis b                           % m 148
	cis a b cis d e fis d g2 ~
	g4 fis4. e4 dis8
	e4. e16 d cis8 cis b b
	a a b cis d4 c ~                              % m 152
	c r16 c b a b g a b c d e c
	d2 g,
	d'2. ~ d16 c b a
	b a g a b c d b c d e fis g fis g e           % m 156
	fis d e fis g2 fis4
	\once \override Script.staff-padding = #1.5
	g1\fermata \bar "|."
}

basso = \relative c {
	\clef bass \key g \major \time 2/2
	R1*5
	c2. b8 a
	b g b c d e fis d
	g a b g d'2 ~                       % m 8
	d4 c b a
	g1
	d2 ~ d8 d e fis
	g a b g c4 gis                      % m 12
	a4. g8 fis2
	e a4. g8
	fis2 f ~
	f4 e8 d e c e f                     % m 16
	g a b g c2
	b ~ b4. a8
	g4 g,2 fis8 e
	fis d e fis g a b g                 % m 20
	d'4. c8 b2
	c4 c'2 b4
	a2 d,4 d'8 c
	b a g2 fis8 e                       % m 24
	dis4 d2 cis8 b
	cis a b cis d e fis d
	g2. fis8 e
	fis d e fis g f e d                 % m 28
	c b a g d'4 d,
	g1 \bar "||"

	% poco largo
	\time 3/2 g'2. g4 a2
	b2. a4 g2                           % m 32
	g fis1
	g1.
	g2. a8 g fis4. e8
	d2. d4 g4. b8                       % m 36
	a2. g4 a2
	d,1.
	e2. e4 fis2
	g2. fis4 e4. g8                     % m 40
	fis4. e8 d2. c4
	b2. a4 g2
	c2. d8 c b4. a8
	g2. g4 c4. e8                       % m 44
	d2. c4 d2
	g, g' e
	a2. b8 a g4. fis8
	e2. e4 a4. c8                       % m 48
	b2. a4 b2
	e,1 a2
	d,2. d4 e2
	fis2. e4 d2                         % m 52
	d cis1
	d c2
	b1 c2
	d1 e2                               % m 56
	c d d,
	g1 a2
	b1\p c2
	d1 e2                               % m 60
	c d d,

	g1 r2            % allegro
	R1.*7
	r4 g b c d c8 b
	a4. g8 a4 b c b8 a
	g4. fis8 g4 a b c                   % m 72
	d e a,1
	g2 d'1
	c1.
	b2. b4 a g                          % m 76
	fis g a1
	d,4. e'8 d4 c b c
	d4 c8 b a4. g8 a4 b
	c d e fis g a                       % m 80
	g e fis1
	g4 d fis g a g8 fis
	e4. d8 e4 fis g fis8 e
	d4. cis8 d4 e fis g                 % m 84
	a b e,1
	d2 g1
	fis1.
	e2. e4 d c                          % m 88
	b c d2 d,
	g1 r2
	R1.*3
	r4 c e f g f8 e
	d4. c8 d4 e f e8 d
	c4. b8 c4 d e f                     % m 96
	d2 e e,
	a1 ~ a4 g'
	fis2. d4 g2
	c, gis a ~                          % m 100
	a b1
	e,2 e'1
	d1.
	c2. c4 b a                          % m 104
	g fis e1
	fis2 fis' g
	gis1 a2
	ais1 b2                             % m 108
	e, fis fis,
	b4 b' g fis e fis8 g
	a4. b8 a4 g fis g8 a
	b4. c8 b4 a g fis                   % m 112
	e d a'1
	d,2 d'1
	c1.
	b                                   % m 116
	a
	g4 g b c d c8 b
	a4. g8 a4 b c b8 a
	g4. fis8 g4 a b c                   % m 120
	d2 d,4 c8 b a4 b
	c2. b8 a g4 a
	b c d2 d,
	g1.\fermata \bar "||"               % m 124

	% grave
	\time 2/2 b2. b8. b16
	gis2 ~ gis8. fis16 e8. d'16
	c2 ~ c8. b16 a8. g16
	f8. e16 d8. c'16 b8. a16 g8. fis16  % m 128
	e4 e'8. d16 cis2 ~
	cis4 d8. fis,16 g2 ~
	g4 fis e2
	d4 e'8. b16 c2 ~                    % m 132
	c4 b a2
	g r

	r4 g'2 r16 g fis e     % allegro
	fis d e fis g a b g d'4 b           % m 136
	a d,2 r16 d cis b
	cis a b cis d e fis d a'2 ~
	a4. a16 g fis8 fis e e
	d d e fis g4 c, ~                   % m 140
	c r16 c b a b g a b c d e c
	g'4 g2 r16 g fis e
	fis d e fis g a b g c4 a
	d4. d16 c b8 b a a                  % m 144
	g a fis g a4 a,
	d e8 d c2 ~
	c4 b a g
	d'4. d16 e fis8 fis g g             % m 148
	a a g fis e2
	b'4. b16 a g8 g fis fis
	e e fis g a4. a16 g
	fis8 fis e e d d e fis              % m 152
	g2. a4
	b2 c4 c, ~
	c r16 c b a b g a b c d e c
	g'4. fis8 e2                        % m 156
	d4 c d d,
	g1\fermata \bar "|."
}

continuo = {
	<<
	\relative c'' {
		\clef soprano \key g \major \time 2/2
		c2. b8 a
		b g b c d e fis d
		g,2. fis8 e
		fis d fis g a b cis a               % m 4
		d c b a g fis e d
		\clef bass c,2. b8 a
		b g b c d e fis d
		g a b g d'2 ~                       % m 8
		d4 c b a
		g1
		d2 ~ d8 d e fis
		g a b g c4 gis                      % m 12
		a4. g8 fis2
		e a4. g8
		fis2 f ~
		f4 e8 d e c e f                     % m 16
		g a b g c2
		b ~ b4. a8
		g4 g, ~ g fis8 e
		fis d e fis g a b g                 % m 20
		d'4. c8 b2
		c4 c' ~ c b
		a2 d,4 d'8 c
		b a g4 ~ g fis8 e                   % m 24
		dis4 d ~ d cis8 b
		cis a b cis d e fis d
		g2. fis8 e
		fis d e fis g f e d                 % m 28
		c b a g d'4 d,
		g1 \bar "||"

		\time 3/2 g'1 a2  % poco largo
		b1 g2 ~                             % m 32
		g fis1
		g1.
		g1 fis4. e8
		d1 g2                               % m 36
		a a,1
		d1.
		e1 fis2
		g1 e4. g8                           % m 40
		fis4. e8 d2. c4
		b1 g2
		c1 b4. a8
		g1 c2                               % m 44
		d d,1
		g2 g' e
		a1 g4. fis8
		e1 a2                               % m 48
		b b,1
		e a2
		d,1 e2
		fis1 d2                             % m 52
		d cis1
		d c2
		b1 c2
		d1 e2                               % m 56
		c d1
		g,1 a2
		b1\p c2
		d1 e2                               % m 60
		c d d,

		% allegro
		g4 \clef soprano g'' b c d c8 b
		a4. g8 a4 b c b8 a
		g4. fis8 g4 a b c                   % m 64
		d e a,1
		g2 d'1
		c1.
		b2. b4 a g                          % m 68
		fis g a1
		d,4 \clef bass g,, b c d c8 b
		a4. g8 a4 b c b8 a
		g2. a4 b c                          % m 72
		d e a,1
		g2 d'1
		c1.
		b2. b4 a g                          % m 76
		fis g a1
		d, b'4 c
		d2 a2. b4
		c d e fis g a                       % m 80
		g e fis1
		g4 d fis g a g8 fis
		e2. fis4 g e
		d2. e4 fis g                        % m 84
		a b e,1
		d2 g1
		fis1.
		e2. e4 d c                          % m 88
		b c d1
		g,1. \clef alto
		r4 d'' fis g a g8 fis
		e2. fis4 g e                        % m 92
		f e d2 g,
		c4 \clef bass c, e f g e
		d2. e4 f d
		c2. d4 e f                          % m 96
		d2 e1
		a,1 ~ a4 g'
		fis2. d4 g2
		c, gis a ~                          % m 100
		a b1
		e,2 e'1
		d1.
		c2. c4 b a                          % m 104
		g fis e1
		fis2 fis' g
		gis1 a2
		ais1 b2                             % m 108
		e,2 fis1
		b,4 b' g2 e
		a1 fis2
		b2. a4 g fis                        % m 112
		e d a1
		d2 d'1
		c1.
		b                                   % m 116
		a
		g2 b d
		a2. b4 c a
		g2. a4 b c                          % m 120
		d2 d, a
		c1 g2
		b d d,
		g1.\fermata \bar "||"               % m 124

		\time 2/2 b2. b8. a16   % grave
		gis2 ~ gis8. fis16 e8. d'16
		c2 ~ c8. b16 a8. g16
		f8. e16 d8. c'16 b8. a16 g8. fis16  % m 128
		e4 e'8. d16 cis2 ~
		cis4 d8. fis,16 g2 ~
		g4 fis e2
		d4 e'8. b16 c2 ~                    % m 132
		c4 b a2

		g g'4 e        % vivace
		d g ~ g2
		fis4 g d' b                         % m 136
		a d, ~ d2
		cis4 d a'2 ~
		a4. g8 fis4 e
		d e8 fis g4 c, ~                    % m 140
		c2 b4 c
		g'2 ~ g
		fis4 g c a
		d4. c8 b4 a                         % m 144
		g8 e fis g a4 a,
		d e c2 ~
		c4 b a g
		d'2 fis4 g                          % m 148
		a g8 fis e2
		b'4. a8 g4 fis
		e fis8 g a4. g8
		fis4 e d e8 fis                     % m 152
		g2. a4
		b2 c4 c, ~
		c2 b4 c
		g'4. fis8 e2                        % m 156
		d4 c d d,
		g1\fermata \bar "|."
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure.font-size = #-1
		\figuremode {
			r1
			r
			r2 <2>
			r1                         % m 4
			r
			r2 <2>
			r1
			<9>2 <6 4>                 % m 8
			<5> r
			<4>4 <3> r2
			r1
			r                          % m 12
			<_+>2 <7>4 <6>
			<7> <5> <7> <6>8 <5>
			r1
			<2>                        % m 16
			r2 <7>4 <6>
			\bassFigureExtendersOn
			<4 7>4 <_+ 6> <_+ 5>2
			\bassFigureExtendersOff
			<6> <2>
			r <9>                      % m 20
			<4>4 <3> <5>2
			r <2>
			<7>4 <5> <7> <6>8 <6>
			<6> <6> r4 <2> r           % m 24
			<6 5> <_+> <6 4> r
			r1
			r2 <2>
			R1*3                       % m 28

			r1 <6>4 <5>  % poco largo
			r1.                        % m 32
			<2>
			R1.*8
			<6>1.                      % m 42
			R1.*4
			r1 <5+>2
			r1 <_+>2                   % m 48
			r1.
			r
			r1 <6>4 <5>
			R1.*4
			<6>2 <5> r                 % m 56
			r1.

			R1.*35         % allegro
			r2 <7> r                   % m 93
			R1.*6
			r2 <6 4>4 <5 3> r2         % m 100
			<6>4 <5> r1
			R1.*3
			r2 <6+> <5>
			<_+> <6>4 <5> r2
			R1.*3
			r2 <6> r
			r1.
			r1 <6>2                    % m 112
			<6+>1.
			r
			<6>
			<7>2 <6>1                  % m 116
			<7>2 <6>1
			R1.*7

			r1 r             % grave
			<6>2 <4->4 <_+>            % m 127
			<6> <_+> <6> r
			<_+> r <5+> <6>
			<4>2 <7>4 <6>
			<2>2 <7>4 <6>
			<7>2 <7>4 <6>              % m 132
			<2>2 r

			r1              % vivace
			r2 <2>
			r1                         % m 136
			r2 <2>
			r <4>
			r2. <6>4
			<7> r2.                    % m 140
			<2>2 r
			r1
			r2 <7>
			<7>4 <6>8 <6> r2           % m 144
			r8 <6+> <6> r r2
			r <7>4 <6>
			<2>1
			<4>4 <3> r2                % m 148
			r <7>4 <6+>
			<6> <5> <7>8 <6> <7> <5+>
			r1
			r2 r4 <6>                  % m 152
			<4>4 <5> <6> <6->
			<5>2 r
			<2> r
			<6>4 <5> <7> <6>           % m 156
			<7> <7> r2
			r1
		}
	}
	>>
}

\header {
	title    = "Sonata VIII"
	subtitle = "Z 797"
	composer = "Henry Purcell"
	tagline  = ""
}

\score {
	<<
	\override Score.Script.staff-padding = #0.8
	\override Score.RehearsalMark.font-size = #0
	\override Score.RehearsalMark.self-alignment-X = #-1
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
