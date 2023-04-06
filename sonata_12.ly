% See LICENSE.txt for license details
\version "2.24.0"

\include "config.ly"

adag  = \markup { \bold Adagio }
alleg = \markup { \bold Allegro }
canz  = \markup { \bold Canzona }
grave = \markup { \bold Grave }
plarg = \markup { \bold "Poco largo" }
prest = \markup { \bold Presto }

vlone = \relative c'' {
	\clef treble \key d \major \time 2/2
	\mark \adag
	a4. a8 a4 b8. cis16
	d4. d8 d4 e8. fis16
	g4. g8 g4 fis8. e16
	fis2. g8. a16                             % m 4
	e4 d cis b
	a g fis e
	d4. e8 cis2
	d'4 cis b a                               % m 8
	g fis e d
	cis d a4. a8
	a4 b8. cis16 d4. d8
	d4 e8. fis16 g4. g8                       % m 12
	g4 fis8. g16 e2
	fis1\fermata \bar "||"

	% canzona
	\time 2/2 \mark \canz
	R1*2                                      % m 16
	r4 e'8 e cis fis16 e d8 cis16 d
	b8 cis16 d e8 e a, fis' b, g'
	cis, a' d, e fis4 e
	d8 d16 cis b8 a g fis e fis16 g           % m 20
	fis8 d g e a fis b4
	e, r r a8 a
	fis b16 a g8 fis16 g e8 fis16 g a8 a
	d, b' e, cis' fis, d' gis,8. b16          % m 24
	e8 cis fis fis, b a gis a16 b
	cis4 r r b8 b
	gis cis16 b a8 gis16 a fis8 gis16 a b8 b
	e, cis' fis, d' gis, e' a, a'             % m 28
	fis b16 a g fis e cis ais4 b ~
	b ais b fis' ~
	fis8 e e2 dis4
	e r e8 e cis fis16 e                      % m 32
	d8 cis16 d b8 e16 d cis4 c
	b8 g' cis, a' d, b' a g
	fis e16 fis d4. b8 e d
	c b a d4 c16 b c4                         % m 36
	b a2 d8 d
	b e16 d c8 b16 c a8 b16 c d8 d
	g, e' a, fis' b, g' cis, a'
	d,2 ~ d8 d cis16 b a g                    % m 40
	fis8 d' g, e' a, fis' b, g' ~
	g a16 g fis8 e e4. d8
	d1\fermata \bar "||"

	\time 3/2 \mark \plarg
	a2 a a                                    % m 44
	b cis d
	e fis g
	fis2. e4 d2
	a' g a                                    % m 48
	fis e4 d cis2
	d e1
	e,1.
	e'2 a a                                   % m 52
	g2. a4 fis2
	g e2.( d8 e)
	fis1 fis2
	g g g                                     % m 56
	fis e d
	cis b ais
	b2. cis4 d2
	d d d                                     % m 60
	e1 fis2
	g c,2. d4
	b2. a4 g2
	b b b                                     % m 64
	cis dis e
	fis g a
	gis2. fis4 e2
	cis b cis                                 % m 68
	d1 e2
	fis gis1
	a1.
	a4. b8 a4. g8 fis4. e8                    % m 72
	d2. cis4 d2
	e cis1
	d2 ~ d d
	a'\p a a                                  % m 76
	g fis e
	d cis b
	cis2. d4 e2
	a4. b8 a4. g8 fis4. e8                    % m 80
	d2. cis4 d2
	e cis1
	d d2\fermata \bar "||"

	% grave
	\time 2/2 \mark \grave
	a4. a8 ais4 ais                           % m 84
	b fis8. fis16 g2 ~
	g8 gis a4. a8 g4
	fis8. a16 d2 d4
	dis4 dis e2 ~                             % m 88
	e4 d f e
	cis c b4. b8

	\mark \prest
	a2 r8 a a a
	d4. fis8 e4 d                             % m 92
	cis r8 b a a d4 ~
	d cis2 b8 a
	b2 e,4 r
	r8 d d d g4. b8                           % m 96
	a4 g fis e ~
	e8 d a'4. g8 g4 ~
	g8 fis fis fis b4. d8
	cis4 b ais b ~                            % m 100
	b ais b8 a g4
	fis e8 a4 a8 gis4
	a8 a a a d4. fis8
	e4 d cis d8 e                             % m 104
	d cis cis cis fis4. a8
	gis4 fis e fis ~
	fis e2 d4
	cis4 cis8. d16 b4. cis8                   % m 108
	d4. d8 c4 b
	a2 r8 d d d
	g4. b8 a4 g
	fis b,8. cis16 ais2                       % m 112
	b8 b' b b e,4. cis8
	d4 e8( fis16 g) fis4 a,8. b16
	e,8 e a4. b8 a4
	g fis e d                                 % m 116
	cis8 c' b4 a8 b16 a g8 fis
	e2 fis\fermata \bar "||"

	% allegro
	\time 3/8 \mark \alleg
	R4.*6
	d'8. e16 fis8
	g e a
	fis4 e8
	fis gis a                                 % m 128
	a4 gis8
	a4 r8
	d,, d' cis
	b e d                                     % m 132
	cis dis e
	e4 dis8
	e4 r8
	R4.*3
	d,8. e16 fis8
	g e a                                     % m 140
	fis4 e8
	fis gis a
	a4 gis8
	a a' g                                    % m 144
	fis b a
	g cis, b
	ais d cis
	b4 b8                                     % m 148
	b ais4
	b4.
	R4.
	e8. fis16 g8                              % m 152
	a fis b
	g4 e8
	fis4 d8
	e fis g                                   % m 156
	g4 fis8
	g g fis
	e a fis
	dis4 e8                                   % m 160
	e4 dis8
	e4.
	R4.
	a,8. b16 cis8                             % m 164
	d b e
	cis4 b8
	cis fis e
	d g fis                                   % m 168
	e a g
	fis d4
	g8 e4
	a8 fis4                                   % m 172
	b8 g4
	e8 a g
	fis b a
	g c b                                     % m 176
	a8. g16 fis8
	e e4

	% adagio
	\time 2/2 \mark \adag
	d4. c8 c4( b8.) c16
	b4 r8 bes bes4( a8.) bes16                % m 180
	a4. e8 f( e4) d8
	d1\fermata \bar "|."
}

vltwo = \relative c' {
	\clef treble \key d \major \time 2/2
	fis4. fis8 fis4 gis8. ais16
	b4. b8 b4 cis8. d16
	e4. e8 e2 ~
	e4 d8. cis16 d4 e8. fis16                  % m 4
	cis4 b a g
	fis e d cis
	b2 a'4. a8
	a4 b8. cis16 d4. d8                        % m 8
	d4 e8. fis16 g4. g8
	g2. fis8 e
	fis2 ~ fis8. e16 d8. cis16
	b2. b4                                     % m 12
	cis d2 cis4
	d1\fermata \bar "||"

	% canzona
	r4 a8 a fis b16 a g8 fis16 g
	e8 fis16 g a8 a d, b' e, cis'              % m 16
	fis, d' gis,4 a8 a16 g fis8 e16 fis
	g8 fis e cis fis d g e
	a fis b4 a8 d4 cis8
	d2 r                                       % m 20
	r r4 e8 e
	cis fis16 e d8 cis16 d b8 cis16 d e8 e
	a, fis' b, g' cis, a' d, cis16 d
	b8 e16 d cis b a8 b b cis b                % m 24
	a a fis b16 a g8 fis16 g e8 fis16 gis
	a8 a d, b' e, cis' fis, fis'
	b, gis a cis d b e e
	cis fis16 e d8 cis16 d b8 cis16 d e8 e     % m 28
	a, fis' b, g' cis, fis d8. cis16
	cis4 fis8 fis dis4 dis16 e dis cis
	b8 gis cis b16 cis a8 gis fis b
	gis e a fis b gis a a                      % m 32
	fis b16 a g8 fis16 g e8 fis16 g a8 a
	d, b' e, cis' fis, d' e4
	a,8 a16 g fis8 e16 fis g4 g ~
	g8 g fis4 b4. a8 ~                         % m 36
	a g2 fis16 e fis4
	g r r2
	r2 r4 a8 a
	fis b16 a g8 fis16 g e8 fis16 g a g fis e  % m 40
	d8 b' e, cis' fis, d'4 e16 d
	cis4 d2 cis4
	d1\fermata \bar "||"

	% poco largo
	\time 3/2 fis,2 e fis                      % m 44
	g1 a2
	b cis1
	d1.
	e,2 e e                                    % m 48
	fis gis a
	b cis d
	cis2. b4 a2
	cis fis fis                                % m 52
	fis e d
	cis b1
	ais b2
	b a1                                       % m 56
	a4 b cis2 fis,
	g cis,1
	d2. e4 fis2
	g1 g2                                      % m 60
	g c b ~
	b a2. g4
	g2. a4 b2
	b' a g                                     % m 64
	fis2. g4 e2 ~
	e e dis
	e1 e2
	e e e                                      % m 68
	fis gis a
	b cis, d
	cis2. b4 a2
	d cis d                                    % m 72
	b a4 g fis2
	g e1
	fis fis2
	fis'\p fis fis                             % m 76
	e d cis
	b a gis
	a2. b4 cis2
	d cis d                                    % m 80
	b a4 g fis2
	g e1
	fis1.\fermata \bar "||"

	% grave
	\time 2/2 fis4. fis8 e4 e                  % m 84
	d2. dis8. dis16
	e4. e8 f4 e
	d4. fis8 b4 b
	a2. g4                                     % m 88
	c2 b4 bes ~
	bes a2 g4 ~

	% presto
	g fis8 e f2
	r8 d d d g4. b8                            % m 92
	a4 g fis r8 fis
	e4. e8 fis gis a4 ~
	a gis a8 a a a
	d4. fis8 e4 d                              % m 96
	cis d2 cis4
	d c b4. b8
	a2. g8 fis
	g2 fis8 fis fis fis                        % m 100
	cis'4. e8 d4 cis
	b8 a a a d4. g8
	fis4 e4. a,8 d4
	cis b ais b ~                              % m 104
	b ais b8 b a b16 cis
	d2 cis8 cis cis cis
	gis4. e8 fis4 gis
	a a4. a8 g4                                % m 108
	fis e4. fis8 g4 ~
	g fis g2
	r8 b b b e,4. cis8
	d4 e fis8 cis cis cis                      % m 112
	fis4. b8 a4 g
	fis e4. d8 d4 ~
	d cis8 cis fis2
	r8 b b b e4. g8                            % m 116
	fis4 e4. d8 d4 ~
	d cis d2\fermata \bar "||"

	% allegro
	\time 3/8 R4.*3
	a8. b16 cis8
	d b e
	cis4 a8                                    % m 124
	b cis d
	d4 cis8
	d4 r8
	d, d' cis                                  % m 128
	b e d
	cis fis e
	d g fis
	e4.                                        % m 132
	e8. fis16 g8
	a fis b
	gis4 e8
	fis gis a                                  % m 136
	a4 gis8
	a4 a8
	g4 fis8
	e8. fis16 e8                               % m 140
	a, d cis
	b4 a8
	d b4
	e4.                                        % m 144
	a,8 d cis
	b e d
	cis fis e
	d4 cis8                                    % m 148
	cis4 b8
	b8. cis16 dis8
	e b d
	cis4 b8                                    % m 152
	cis d4
	d cis8
	d4 d8
	c4 b8                                      % m 156
	a d c
	b b a
	g c a
	a4 g8                                      % m 160
	fis4 e8
	e8. fis16 gis8
	a e g
	fis4 e8                                    % m 164
	fis gis a
	a4 gis8
	a a g
	fis b a                                    % m 168
	g e4
	a8 b4
	cis8. b16 cis8
	d4 d8                                      % m 172
	e e d
	cis fis e
	d g fis
	e e d                                      % m 176
	cis4 d8
	d cis4

	% adagio
	\time 2/2 d4. fis,8 fis4. fis8
	g4 r8 d e4 f8. g16                         % m 180
	cis,4 d2 cis4
	d1\fermata \bar "|."
}

basso = \relative c {
	\clef bass \key d \major \time 2/2
	d2 d'4 cis
	b a g fis
	e d cis2
	d4 a b g                                  % m 4
	a4. a8 a4 b8. cis16
	d4. d8 d4 e8. fis16
	g4. g8 g4 fis8. e16
	fis4 e d cis                              % m 8
	b a g fis
	e d' cis2
	d4. d8 d4 e8. fis16
	g4. g8 e4 fis8. g16                       % m 12
	a2 a,
	d1\fermata \bar "||"

	% canzona
	R1*4
	r2 r4 a'8 a
	fis b16 a g8 fis16 g e8 fis16 g a8 a      % m 20
	d, b' e, cis' fis, d' gis,4
	a8 a16 g fis8 e16 fis g fis e d cis4
	d8 dis e e, a a16 g fis8 e16 fis
	g8 gis a b16 cis d8 b e e                 % m 24
	cis fis16 e d8 cis16 d b8 cis16 d e8 e
	a, fis' b, g' cis, a' dis,4
	e8 e, a fis b b16 a gis8 fis16 gis
	a8 a d b e e16 d cis8 b16 cis             % m 28
	d4 e fis b,
	fis2 r4 b8 b
	gis cis16 b a8 gis16 a fis8 gis16 a b8 b
	e, cis' fis, d' gis, e' a, fis            % m 32
	b4 e, a8 a'16 g fis8 e16 fis
	g4 a b cis
	d d,8 d b e16 d c8 b16 c
	a8 b16 c d8 d g, e' a, fis'               % m 36
	b, g' cis, a' d,4. d8
	g e a g fis e d b
	e cis d fis, g e a fis
	b16 a g fis e8 d a'4. a'8                 % m 40
	b4 cis d g,
	a2 a,
	d1\fermata \bar "||"

	% poco largo
	\time 3/2 d'2 cis d                       % m 44
	b a4 g fis2
	g a1
	d,1.
	cis1 cis2                                 % m 48
	d cis4 b a2
	a gis1
	a1.
	a2 a a                                    % m 52
	b cis d
	e fis g
	fis2. e4 dis2
	e cis1                                    % m 56
	d2 ais b
	e, fis1
	b1.
	b2 a b                                    % m 60
	c1 d2
	e fis1
	g1.
	g,2 fis e                                 % m 64
	a b c
	b4 a b1
	e e,2
	a' g a                                    % m 68
	fis e4 d cis2
	d e1
	a, a4 g
	fis2. e4 fis2                             % m 72
	g a b
	g a1
	d,1.
	d'2\p dis1                                % m 76
	e1 fis2
	gis e1
	a a4 g
	fis2. e4 fis2                             % m 80
	g a b
	e, a a,
	d1.\fermata \bar "||"

	% grave
	\time 2/2 d4. d8 cis4 c                   % m 84
	b2. b8. b16
	c4. c8 cis2
	d4. d8 g4 g
	fis fis e2 ~                              % m 88
	e4 fis g2
	a4 a b c
	cis?2 d

	% presto
	R1*2
	r8 a, a a d4. fis8
	e4 d cis d8 cis
	b4. a8 g e e e                            % m 96
	a4 r8 b a4 g
	fis4. fis8 g a b c
	d2 dis
	e2. d4                                    % m 100
	cis8 fis, fis fis b4 r8 e
	d4 cis b2
	a4 g' fis4. d8
	e b b b fis'4. g8                         % m 104
	fis4 e d cis
	b2. a4
	b cis d e
	fis d e8 e e e                            % m 108
	b4. gis8 a4 b
	c d8 d' b a g fis
	e4 d cis8 a a a
	d4 r8 g fis4 e                            % m 112
	dis d cis a
	b g a fis
	a8 a a a d4. fis8
	e4 d cis b                                % m 116
	a4. g8 fis4. g8
	a2 d,\fermata \bar "||"

	% allegro
	\time 3/8 d'8. e16 fis8
	g e a                                     % m 120
	fis4 e8
	fis gis a
	a4 gis8
	a4 fis8                                   % m 124
	g4 fis8
	e4.
	d4 cis8
	b4 a8                                     % m 128
	e'4 e,8
	a a' g
	fis b a
	g c b                                     % m 132
	a4 g8
	fis4.
	e4 r8
	a,8. b16 cis8                             % m 136
	d b e
	cis4 a8
	b cis d
	d4 cis8                                   % m 140
	d4 r8
	d8 d' cis
	b e d
	cis8. b16 cis8                            % m 144
	d4 d,8
	e4 e8
	fis4 fis8
	g4 e8                                     % m 148
	fis fis,4
	b a8
	gis8. fis16 gis8
	a4 g8                                     % m 152
	fis4.
	e
	fis8 d' b
	c4.                                       % m 156
	d
	g8. a16 b8
	c a d
	b4 a8                                     % m 160
	b b,4
	e d8
	cis8. b16 cis8
	d4 cis8                                   % m 164
	b4 a8
	e'4 e,8
	a4 a8
	b4.                                       % m 168
	cis
	d8 g fis
	e a g
	fis b a                                   % m 172
	g e4
	a4.
	a, ~
	a ~                                       % m 176
	a4 b8
	g a4

	% adagio
	\time 2/2 d1
	g, ~                                      % m 180
	g4 f a2
	d,1\fermata \bar "|."
}

continuo = {
	<<
	\relative c {
		\clef bass \key d \major \time 2/2
		d2 d'4 cis
		b a g fis
		e d cis2
		d4 a b g                          % m 4
		a2. b8. cis16
		d2. e8. fis16
		g2 ~ g
		fis4 e d cis                      % m 8
		b a g fis
		e d' cis2
		d2. e8. fis16
		g2 e4 fis8. g16                   % m 12
		a2 a,
		d1\fermata \bar "||"

		% canzona
		\clef treble d'2. g8 fis
		e fis16 g a4 d, e                 % m 16
		fis gis a8. g16 fis4
		g8 fis e cis fis d g e
		a fis b4 a \clef bass a,
		fis8 b16 a g8 fis e d a4          % m 20
		d e fis gis
		a8. g16 fis4 g16 fis e d cis4
		d8 dis e e, a8. g16 fis4
		g8 gis a b16 cis d8 b e4          % m 24
		cis8 fis16 e d8 cis b cis16 d e4
		a, b cis dis
		e8 e, a fis b8. a16 gis4
		a d8 b e8. d16 cis4               % m 28
		d e fis b,
		fis2 b4. b8
		gis cis16 b a8 gis fis4 b
		e, fis g8 e a fis                 % m 32
		b4 e, a8 a'16 g fis4
		g a b cis
		d d, b8 e16 d c8 b
		a4 d g, a                         % m 36
		b cis d2
		g8 e a g fis e d b
		e cis d fis, g e a fis
		b16 a g fis e8 d a'4. a'8         % m 40
		b4 cis d g,
		a2 a,
		d1\fermata \bar "||"

		% poco largo
		\time 3/2 d'2 cis d               % m 44
		b a4 g fis2
		g a a,
		d1.
		cis                               % m 48
		d2 cis4 b a2 ~
		a gis1
		a1.
		a1 a2                             % m 52
		b cis d
		e fis g
		fis2. e4 dis2
		e cis1                            % m 56
		d2 ais b
		e, fis1
		b1.
		b2 a b                            % m 60
		c1 d2
		e fis1
		g1.
		g,2 fis e                         % m 64
		a b c
		b4 a b1
		e e,2
		a' g a                            % m 68
		fis e4 d cis2
		d e e,
		a1 a4 g
		fis2. e4 fis2                     % m 72
		g a b
		g a1
		d,1.
		d'2\p dis1                        % m 76
		e fis2
		gis e1
		a1 a4 g
		fis2. e4 fis2                     % m 80
		g a b
		e, a a,
		d1 d,2\fermata \bar "||"

		% grave
		\time 2/2 d' cis                  % m 84
		b2. b4
		c2 cis
		d g
		fis e ~                           % m 88
		e4 fis g2
		a4 ~ a b c
		cis?2 d

		% presto
		\clef alto d4. d8 g4. b8          % m 92
		a4 g fis d
		\clef bass a a, d4. fis8
		e4 d cis d8 cis
		b4. a8 g e e e                    % m 96
		a4 b a g
		fis2 g
		d' dis
		e2. d4                            % m 100
		cis8 fis, fis fis b4 e
		d cis b2
		a4 g' fis4. d8
		e b b b fis4 e                    % m 104
		fis8 fis' e4 d cis
		b2. a4
		b cis d e
		fis d e e,                        % m 108
		b' gis a b
		c d8 d' b a g fis
		e4 d cis a
		d g fis e                         % m 112
		dis d cis a
		b g a fis
		a2 d
		e4 d cis b                        % m 116
		a4. g8 fis4 d
		a'2 d,\fermata \bar "||"

		% allegro
		\time 3/8 d'8. e16 fis8
		g e a                             % m 120
		fis4 e8
		fis gis a
		a4 gis8
		a4 fis8                           % m 124
		g4 fis8
		e4.
		d4 cis8
		b4 a8                             % m 128
		e'4 e,8
		a a' g
		fis b a
		g c b                             % m 132
		a4 g8
		fis4.
		e4 gis,8
		a8. b16 cis8                      % m 136
		d b e
		cis4 a8
		b cis d ~
		d4 cis8                           % m 140
		d4.
		d8 d' cis
		b e d
		cis4.                             % m 144
		d4 d,8
		e4.
		fis
		g4 e8                             % m 148
		fis4 fis,8
		b4 a8
		gis4.
		a4 g8                             % m 152
		fis4.
		e
		d8 d' b
		c4.                               % m 156
		d
		g
		c8 a d
		b4 a8                             % m 160
		b b,4
		e4 d8
		cis4.
		d4 cis8                           % m 164
		b4 a8
		e4.
		a
		b                                 % m 168
		c
		d8 g fis
		e a g
		fis b a                           % m 172
		g e4
		a4.
		a, ~
		a ~                               % m 176
		a4 b8
		g a4

		% adagio
		\time 2/2 d1
		g, ~                              % m 180
		g4 f a2
		d,1\fermata \bar "|."
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure.font-size = #-1
		\figuremode {
			R1*3
			<9>1                              % m 4
			r
			r
			r2 <2>
			<6>4 <6> <6> <6>                  % m 8
			<6> <6> <6> <6>
			<6> <6> <5 6>2
			R1*4

			% canzona
			r1
			r2 <5>8 <6> <5> <6>               % m 16
			<5> <6> <6>4 r2
			r1
			r2 <6>4 <5>
			r1                                % m 20
			<5>8 <6> <5> <6> <5> <6> <6>4
			r1
			r
			r2 <6>4 <6>8 <5>                  % m 24
			r2 <6>4 <3+>
			<5>8 <6> <5> <6> <5> <6> <5> <6>
			r <6>16 <5> r2.
			r1                                % m 28
			<5>8 <6> <5> <6> r2
			r <3+>
			<7> <7>
			<5>8 <6> <5> <6> r2               % m 32
			r2. <5->4
			<5>8 <6> <5> <6> <5> <6> r4
			r1
			<7>2 <6>4 <9 5>8 <8 6>            % m 36
			<7 5> <6> <6 5>4 <4> <3>
			r <3-> r2
			r1
			r2 <4>4 <3>                       % m 40
			<5>8 <6> <5> <6> r4 <5>8 <6>
			<7>4 <6> <4> <3>
			r1

			% poco largo
			r1.                               % m 44
			<6>2 r <6>
			<5 6> <6 4> <7 3>
			R1.*3
			<2>1.
			r
			<5>2 <6> r                        % m 52
			<6 5>1.
			<6>
			<3+>
			r2 <6 5>1                         % m 56
			r1.
			<6>
			r1.
			<6>                               % m 60
			r
			r2 <5->1
			r1.
			r                                 % m 64
			<6>2 <3+>1
			<4>2 <6 4>2 <7 3>
			<3+>1.
			r                                 % m 68
			<6>
			<6 5>2 <6 4> <7 3+>
			r1.
			<6>                               % m 72
			r
			<6>
			r
			r2 <6 5>1                         % m 76
			R1.*7

			% grave
			r2 <6+>                           % m 84
			<5> <6>4 <3+>
			<5> <6> <6 4-> <5 3>
			r1
			<_+>2 <4>4 <3>                    % m 88
			<6!> r <7! 3> <6 3->
			<3 9->4 <3! 8> <7> <7>
			<6 5>2 r
			r2 <6>4 <5>                       % m 92
			r1
			<4>4 <3> <7> <6>
			<4> <4+> r2
			r4. <6>8 <6>2                     % m 96
			r4 <6> <4 6> <4 6>
			<6> <5!> <9> <8>
			<4> <3> <6 5>2
			<6>4 <5> <4+ 2> r                 % m 100
			<7>4 <3+> r <6>
			<6>8 <5> <6>4 <7> <6+>
			<6> <6> r2
			<6> <3+>                          % m 104
			<6>8 <5> <6>4 <6> <6>
			<6+> <5> <4 2> <6>
			<5 6+> r <9> <7>
			r2 <5 4>4 <6 3>                   % m 108
			r4 <5 6> <3!> <6>
			<5 6> r2.
			r4 <6> <6> r
			r <6> <3+> r                      % m 112
			r1
			r2 <6 5>
			<4>4 <3> r2
			r4 <6> r <6>                      % m 116
			<6 3>8 \bassFigureExtendersOn <6 _->
			    \bassFigureExtendersOff <2> <6>
			    <7> <6> r4
			r1

			R4.*4
			<2>4.
			r                                 % m 124
			r
			<7>4 <6>8
			R4.*3
			r8 <6> <6>
			<6> <6> <6>
			<6> r4                            % m 132
			<5>8 <6> r
			<7>4 <6>8
			r4 <6>8
			<6> <6> <6>                       % m 136
			<6 5> <7> <3+>
			r4.
			<6>
			<2>                               % m 140
			r
			<6>
			r
			r                                 % m 144
			<5>8 <6> <5>
			<5> <6>4
			<5>8 <6>4
			r4.                               % m 148
			<4>8 <3+> r
			R4.*3
			<7>8 <6> r
			<7>4 <6>8
			r4.
			r                                 % m 156
			<4>4 <3>8
			r4.
			r
			<3+ 7>4 <7>8                      % m 160
			<4>4 <3+>8
			R4.*3
			<5>8 <6+> r
			<6 4>4 <5 _+>8
			<5> <6>4
			<5>8 <6>4                         % m 168
			<5>8 <6>4
			r4.
			<6>
			<6>                               % m 172
			<6>
			R4.*4
			<6 5>4.

			% adagio
			r2 <7->
			<3> <_->                          % m 180
			<2 4+>4 <6> r2
			r1
		}
	}
	>>
}

\header {
	title    = "Sonata XII"
	subtitle = "Z 801"
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
