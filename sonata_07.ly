\version "2.18.2"

\include "config.ly"

adag = \markup { \bold Adagio }
canz = \markup { \bold Canzona }
grav = \markup { \bold Grave }
larg = \markup { \bold Largo }
viv  = \markup { \bold "Allegro/Vivace" }

parp = \markup {
	\center-align \concat {
		\bold { \italic ( }
		\dynamic p
		\bold { \italic ) }
	}
}

vlone = \relative c'' {
	\clef treble \key e \minor \time 2/2
	e1 ~
	e2 d
	c2. b8 a
	gis2 g                            % m 4
	fis4 b2 cis4
	d4. e16 fis g2
	fis2. e4
	d4. cis16 b ais4 b                % m 8
	cis8 fis, b2 ais4
	b2. cis4
	d4. e16 fis g4 fis ~
	fis8 g e4 fis b,                  % m 12
	c2. b4 ~
	b a g4. fis16 e
	e4( dis) e b' ~
	b a8 gis a e a4 ~                 % m 16
	a g8 fis g4 a
	b2. a4
	g4. fis16 e dis2
	e2. fis8 g                        % m 20
	a2 ~ a8 d, g4 ~
	g fis g2 ~
	g4 fis e e' ~
	e d c4. b16 a                     % m 24
	gis4 g fis4. e8
	e1\fermata \bar "||"

	% canzona
	\mark \canz
	r8 b' e e e d g g
	g fis fis b b e, a a              % m 28
	a dis, e fis fis4. e8
	e8. fis16 g8. a16 fis4. fis8
	e4. d16 cis d4. cis16 b
	ais8 fis'16 e d8 g16 fis e4 fis   % m 32
	dis8 dis e fis g fis e d
	cis d16( e) dis4 e8. d16 c4
	b e2 dis4
	e8 e, b' b b a d d                % m 36
	d cis cis fis fis b, e e
	e ais, b cis cis4. b8
	b8. b16 c8. d16 b4. b8
	a4. g16 fis g4. fis16 e           % m 40
	dis8 b'16 a g8 c16 b a4 b
	g8 b b cis d cis b a
	gis
	    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
	    a16( b) ais4 b8. a16 g4
	fis b2 ais4                       % m 44
	b8 fis b b b a d d
	d cis cis fis fis d g g
	g cis, d e e4. d8
	d4 r8 b e4 r8 cis                 % m 48
	fis4 r8 e a4 r8 fis
	g8. fis16 e8 d16 cis d4. e8
	cis8 e, a a a gis c c
	c b b e e c d d                   % m 52
	d g, a b b4. c8
	c4 r r2
	R1
	r4 f e d                          % m 56
	cis c b bes
	a d2 cis4
	d1 ~
	d4 c b4. b8                       % m 60
	a4 g' fis e
	dis d cis c
	b4. b8 a a d d
	d b e e e d g g                   % m 64
	g fis fis b b e, a a
	a g16 fis g4 fis e
	dis d cis c
	b b a8 d d c                      % m 68
	c4 b2 e,8 fis
	g4. fis8 fis4. e8
	e1\fermata \bar "||"

	% largo
	\time 3/4 \mark \larg
	g'4 fis4. e8                      % m 72
	fis4. g8 fis8. g16
	a4 g4. fis8
	g4. g8 fis8. g16
	fis8( e) d4. e8                   % m 76
	cis4. b8 c8. d16
	    \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Slur
	    c8( b) a4. b8
	b2 b4 \bar "||"
	fis'8. g16 fis8. e16 d8. cis16    % m 80
	d4 dis2
	e e,4
	e'8. fis16 e8. d16 c8. b16
	c8. d16 c8. b16 a8. g16           % m 84
	a4. fis8 g8. a16
	b8. c16 a4. a8
	d8. e16 d8. c16 b8. a16
	b2 gis'4                          % m 88
	a8. b16 a8. g16 fis8. e16
	dis4. fis8 g8. a16
	b2 b4
	b8. c16 b8. a16 g8. fis16         % m 92
	g4. a8 g4
	fis fis4. e8
	e2 b'4\p
	b8. c16 b8. a16 g8. fis16         % m 96
	g4. a8 g4
	fis fis4. e8
	e2. \bar "||"

	% grave
	\time 2/2 \mark \grav
	b4 b8. b16 b8( a)
	    \shape #'((0 . 0) (0.3 . -0.4) (0.3 . -0.5) (0 . -0.3)) Slur
	    c( b)                         % m 100
	fis4. fis8 g fis g a
	\shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Slur
	b( c) d( c) a4. g8
	g2\fermata r
	d'4 d8. d16 d8( cis) e( d)        % m 104
	cis4. cis8 d cis d e
	fis( g) a( g) e4. d8
	d4 a'8. a16 a4 g8. a16
	g8( fis) f8. f16 f8( e) d8. e16   % m 108
	d8( cis) c8. c16
	    \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Slur
	    c8( b) a8. b16
	a8( g) g8. fis16 fis8 b a g
	fis d' c b a c b a
	g( fis) a( g) fis4. e8            % m 112
	e1\fermata \bar "||"

	% vivace
	\time 3/4 \mark \viv
	r4 b' a
	g c b
	a fis b                           % m 116
	e, cis' cis
	cis b b
	b4. cis8 ais4
	b b' dis,                         % m 120
	e8 dis e fis g e
	fis e dis cis b a
	g4 e e
	d g fis                           % m 124
	e cis fis
	b, g' fis
	fis e e
	e4. fis8 dis4                     % m 128
	e e' ais,
	b8 ais b cis d b
	cis b ais gis fis e
	dis4 b a'                         % m 132
	g c b
	a fis b
	e, c' b
	b a a                             % m 136
	a4. b8 gis4
	a c a
	b8 a g fis g e
	fis g a g a fis                   % m 140
	g4 e r
	r e' gis,
	a8 gis a b c a
	d c b a gis fis                   % m 144
	e2 r4
	r4 a' cis,
	dis8 cis dis e fis dis
	g fis g a b g                     % m 148
	c b a b a g
	fis g g4. fis8
	g4 d c
	b e d                             % m 152
	cis fis e
	d dis2
	e2. ~
	e4 d cis                          % m 156
	fis e d
	cis fis e
	dis g fis
	e f e                             % m 160
	d b e
	cis fis fis
	fis e e
	e d d                             % m 164
	d4. e8 cis4
	d2 b'4
	b a a
	a g g                             % m 168
	g4. a8 fis4
	g g fis
	e a g
	fis b a                           % m 172
	g fis4. e8
	dis2 b4
	r4 e b
	c8 d c b a g                      % m 176
	fis4 b' dis,
	e8 fis g e a fis
	g fis g a b g
	a4. b8 g4                         % m 180
	fis fis4. e8

	% adagio
	\time 2/2 \mark \adag e4 r r2
	r2 r4 a8 g
	fis4 b8 a g e a4                  % m 184
	dis, e2 dis4
	g2 fis
	e d
	cis dis                           % m 188
	e fis4 g
	cis, a'8 g fis4 b8 a
	g e a2 g4
	fis4. e8 e2\fermata \bar "|."     % m 192
}

vltwo = \relative c'' {
	\clef treble \key e \minor \time 2/2
	g1 ~
	g4 a b2 ~
	b4 a8 g fis2 ~
	fis4 e8 dis e b e4 ~              % m 4
	e d8 cis d4 e
	fis fis'2 e4
	d4. cis16 b ais2
	b4. b8 e2 ~                       % m 8
	e4 d cis4. b8
	b2 fis ~
	fis4 b2 a4
	g4. fis16 e dis2                  % m 12
	e4 fis g2
	fis ~ fis8 b, e4
	fis2 g4. a16 b
	c2. c4                            % m 16
	b1
	e, ~
	e2 fis
	g2. a8 b                          % m 20
	c4. b16 a b4. c8
	a4 d2 c4
	b2. a4
	b2 ~ b8 e, fis4 ~                 % m 24
	fis8 b, e2 dis4
	e1\fermata \bar "||"

	R1*3      % canzona
	r8 e b' b b a d d
	d( cis) cis fis fis b, e e
	e ais, b cis cis4. b8             % m 32
	b8. b16 c8. d16 b4. b8
	a4. g16fis g4. fis16 e
	dis8 b'16 a g8 c16 b a4 b
	g8 b b cis d cis b a              % m 36
	gis
	    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
	    a16( b) ais4 b8. a16 g4
	fis b2 ais4
	b8 b e e e d g g
	g( fis) fis b b e, a a            % m 40
	a dis, e fis fis4. e8
	e8. fis16 g8. a16 fis4. fis8
	e4. d16 cis d4. cis16 b
	ais8 fis'16 e d8 g16 fis e4 fis   % m 44
	dis8 d,? g g g fis b b
	b a a d d b e e
	e a, b cis cis4. d8
	d d, fis4 r8 e a4                 % m 48
	r8 fis b4 r8 a d4 ~
	d cis b2 ~
	b8 a c c c b e e
	e d d g g e f f                   % m 52
	f b, c d d4. c8
	c e, a a a gis c c
	\shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Slur
	c( b) b e e a, d d
	d gis, a b b4. a8                 % m 56
	a e' a a a d, g g
	g cis, d e f4 e
	a, c b a
	gis g fis e                       % m 60
	dis d cis8 cis' cis cis
	cis fis, b b b e, a a
	a d, g4. g8 fis fis
	fis d g g g fis b b               % m 64
	b a a d d g, c fis16 e
	dis4 e8 d c4 b
	a4. g16 fis g4. fis16 e
	dis8 b' e e e d? g g              % m 68
	g( fis) fis b b e, a a
	a dis, e2 dis4
	e1\fermata \bar "||"

	\time 3/4        % largo
	e4 dis4. cis8                     % m 72
	dis4. e8 dis8. e16
	fis4 e4. dis8
	e2 a,4
	b b2 ~                            % m 76
	b4 a8. g16 fis4
	g8. dis16 e4 fis
	dis2. \bar "||"
	r4 r fis                          % m 80
	b8. cis16 b8. a16 g8. fis16
	g4 gis2
	a4 b e,
	a8. b16 a8. g16 fis8. e16         % m 84
	fis4. d8 e8. fis16
	g8. a16 fis4. g8
	g4 r d'
	g8. a16 g8. fis16 e8. d16         % m 88
	e4. d8 c4
	fis,2 dis'4
	e8. fis16 e8. d16 c8. b16
	c4 cis2                           % m 92
	dis e4 ~
	e dis2
	e8._\parp fis16 e8. d16 c8. b16
	c4 cis2                           % m 96
	dis e4 ~
	e dis2
	e2.\fermata \bar "||"

	\time 2/2     % grave
	g,4 g8. g16 g8( fis) a( g)        % m 100
	dis4. dis8 e dis e fis
	g( a)
	    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
	    b( a) fis4. g8
	g2\fermata r2
	b4 b8. b16 b8( ais)
	    \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Slur
	    cis( b)                       % m 104
	ais4. ais8 b ais b cis
	d( e) fis( e) cis4. d8
	d4 fis8. fis16 fis4 e8. fis16
	e8( d) d8. d16 d8( c) b8. c16     % m 108
	\shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) Slur
	b8( a) a8. a16 a8( g) fis8. g16
	fis8( e) e8. dis16 dis8 g fis e
	dis b' a g fis a g fis
	e dis fis e dis4. e8              % m 112
	e1\fermata \bar "||"

	\time 3/4    % vivace
	R2.*3                             % m 116
	r4 e e
	d g fis
	e cis fis
	b, g' fis                         % m 120
	fis e e
	e4. fis8 dis4
	e e' ais,
	b8 ais b cis d b                  % m 124
	cis b ais gis fis e
	dis4 b a'
	g c b
	a fis b                           % m 128
	e, cis' cis
	cis b b
	b4. cis8 ais4
	b b dis,                          % m 132
	e8 dis e fis g e
	fis e' d c b a
	gis4 e' d
	c f e                             % m 136
	d b e
	c fis fis
	fis e e
	e4. fis8 dis4                     % m 140
	e4 e gis,
	a8 b c a d b
	c b c d e c
	f e d c b a                       % m 144
	gis fis gis a b e,
	c'2 r4
	r b' dis,
	e8 dis e fis g e                  % m 148
	a g fis g fis e
	d c b4. a8
	b4 g2
	r4 g fis                          % m 152
	e a g
	fis b a
	g gis2
	a4 ais2                           % m 156
	b2. ~
	b2 ais4
	b b a
	g c c                             % m 160
	b b b
	b a a
	a g g
	g fis fis                         % m 164
	fis4. g8 e4
	fis a g
	fis fis' e
	d4. b8 c d                        % m 168
	e d c b c a
	b4 b a
	g c b
	a d c                             % m 172
	b c a
	fis2 r4
	R2.
	r4 fis' cis                       % m 176
	dis8 cis dis e fis dis
	g4 b dis,
	e8 dis e fis g e
	fis4. g8 e4                       % m 180
	e dis4. e8

	\time 2/2          % adagio
	e4 b8 a g4 c8 b
	a fis b4 e,2
	r4 g'8 fis e cis fis4             % m 184
	b, g' fis2 ~
	fis4 e2 d4 ~
	d cis2 b4 ~
	b a2 b8 a                         % m 188
	g4 c8 b a fis b4
	e, fis'8 e dis4 g8 fis
	e cis fis4 dis e ~
	e dis e2\fermata \bar "|."        % m 192
}

basso = \relative c {
	\clef bass \key e \minor \time 2/2
	e2. d4
	c4. b16 a gis2
	a dis,
	e2. e4                            % m 4
	b'1 ~
	b2 cis
	d2. e8 fis
	g1                                % m 8
	fis2. e4
	d4. cis16 b ais2
	b dis,
	e b''2 ~                          % m 12
	b4 a g4. fis16 e
	dis2 e
	b e,
	a4 b c a                          % m 16
	e'2. fis4
	g4. a16 b c2
	b2. a4
	g8 fis e d c b a g                % m 20
	fis2 g
	d' e ~
	e4 d c4. b16 a
	gis2 a                            % m 24
	b4. a8 b2
	e,1\fermata \bar "||"

	R1*6      % canzona                 m 32
	r8 b' e e e d g g
	g fis fis b b e, a a
	a dis, e fis fis4. e8
	e8. fis16 g8. a16 fis4. fis8      % m 36
	e4. d16 cis d4. cis16 b
	ais8 fis'16 e d8 g16 fis e4 fis
	dis8 dis e fis g fis e d
	cis
	    \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Slur
	    d16( e) dis4 e8. d16 c4       % m 40
	b e2 dis4
	e8 e, b' b b a d d
	d cis cis fis fis b, e e
	e ais, b cis cis4. b8             % m 44
	b4 r8 g d'4 r8 b
	fis'4 r8 d g4 r8 e
	a4 d, a2
	d,8 a' d d d cis fis fis          % m 48
	fis d d g g fis b b
	b e, a a a4 gis
	a r8 a, e' e e c
	g' g g e e a a d,                 % m 52
	g g g c, g2
	c4 c' b a
	gis g fis f
	e a2 gis4                         % m 56
	a fis g e
	f bes a g
	fis2 f
	e8 b e e e d g g                  % m 60
	g fis b b b4 ais
	b gis a fis
	g c, d4. d8
	g8 g g e b' b b g                 % m 64
	d' d d b c4. a8
	b b, e e e d g g
	g fis fis b b e, a a
	a dis, g4 fis e                   % m 68
	dis d cis c
	b4. a8 b2
	e1\fermata \bar "||"

	\time 3/4            % largo
	e2.                               % m 72
	b2 c4
	a b2
	e fis4
	g gis2                            % m 76
	a a4
	b c2
	b2. \bar "||"   % repeat?
	R2.                               % m 80
	r2 b,4
	e8. fis16 e8. d16 c8. b16
	c4 gis2
	a a'4                             % m 84
	d8. e16 d8. c16 b8. a16
	g4 d c
	b fis2
	g4 a b                            % m 88
	c c'8. b16 a4
	b8. c16 b8. a16 g8. fis16
	g4 gis2
	a4 a,2                            % m 92
	b c4
	a8. a'16 b8. c16 b8. a16
	g4 gis2
	a4 a,2                            % m 96
	b c4
	a4 b2
	e,2.\fermata \bar "||"

	\time 2/2      % grave
	e'4. d8 c4 a                      % m 100
	b4. b8 b4 a
	g c d d,
	g2 r
	g'4. fis8 e4. e8                  % m 104
	fis4. fis8 fis4 e
	d g a a,
	d d'8. d16 cis4. cis8
	d4. d8 gis,4. gis8                % m 108
	a4. a8 dis,4. dis8
	e4 a, b2 ~
	b1 ~
	b4 a b2                           % m 112
	e,1\fermata \bar "||"

	\time 3/4        % vivace
	R2.*6
	r4 b' a                           % m 120
	g c b
	a fis b
	e, cis' cis
	cis b b                           % m 124
	b4. cis8 ais4
	b b' dis,
	e8 dis e fis g e
	fis e dis cis b a                 % m 128
	g4 e e'
	d g fis
	e cis fis
	b, g' fis                         % m 132
	fis e e
	e4. fis8 dis4
	e e gis,
	a8 gis a b c a                    % m 136
	b4 e,2
	a4 a' a
	g c b
	a fis b                           % m 140
	e,2 d4
	c2 b4
	a a'8 g f e
	d4. e8 f d                        % m 144
	e4 e gis,
	a8 b a g a fis
	b4 b a
	g c b                             % m 148
	a b c
	d d,2
	g r4
	R2.*3
	r4 e' d
	cis fis e                         % m 156
	d g fis
	e fis fis,
	b b' b 
	b a a                             % m 160
	a4. b8 gis4
	a fis e
	dis e d
	cis d fis,                        % m 164
	g a2
	d,2.
	r4 d'' c
	b e d                             % m 168
	c a d
	g, a b
	c2 a4
	d2 b4                             % m 172
	e a,2
	b4 b dis,
	e8 dis e fis g e
	a b a g a fis                     % m 176
	b2 a4
	g2 fis4
	e4. d8 c b
	a4 b c                            % m 180
	a b2

	\time 2/2     % grave
	e,2. e'4 ~
	e d2 c4 ~
	c b2 a4 ~                         % m 184
	a g b b'8 a
	g4 c8 b a fis b4
	e, a8 g fis4 g8 fis
	e cis fis4 b,2 ~                  % m 188
	b4 a2 g4 ~
	g fis b8 a g4
	c8 b a fis b4 e,
	b'2 e,\fermata \bar "|."          % m 192
}

continuo = {
	<<
	\relative c {
		\clef bass \key e \minor \time 2/2
		e2. d4
		c2 gis
		a dis,
		e ~ e                         % m 4
		b'1 ~
		b2 cis
		d ~ d4 e8 fis
		g1                            % m 8
		fis2. e4
		d2 ais
		b dis,
		e b'' ~                       % m 12
		b4 a g2
		dis e
		b e,
		a4 b c a                      % m 16
		e'2 ~ e4 fis
		g2 c
		b2. a4
		g8 fis e d c b a g            % m 20
		fis2 g
		d' e ~
		e4 d c2
		gis a                         % m 24
		b4. a8 b2
		e,1\fermata \bar "||"

		\clef treble     % canzona
		r8 b''' e e e d g g
		g fis fis b b e, a a          % m 28
		a dis, e fis fis4. e8
		e e, b' b b a d d
		d cis cis ais b4 g8 e
		fis4 b ~ b ais                % m 32
		b8 \clef bass b,, e4. d8 g4 ~
		g fis8 b, e4 a,
		b1
		e4 g fis b,                   % m 36
		e2 d4. cis16 b
		ais8 fis' d g e4 fis
		dis e8 fis g fis e d
		cis4 dis e c                  % m 40
		b e ~ e dis
		e e, b'8 a d4 ~
		d cis8 fis b,4 e,
		fis1                          % m 44
		b4. g8 d'4. b8
		fis'4. d8 g4. e8
		a4 d, a2
		d,4 d'4. cis8 fis4            % m 48
		d8 d, g g' ~ g fis b4
		e, a ~ a gis
		a a, e'4. c8
		g'4. e8 a4 d,                 % m 52
		g c, g2
		c4 c' b a
		gis g fis f
		e a ~ a gis                   % m 56
		a fis g e
		f bes a g
		fis2 f
		e8 b e4. d8 g4 ~              % m 60
		g8 fis b4 ~ b ais
		b gis a fis
		g c, d2
		g4. e8 b'4. g8                % m 64
		d'4. b8 c4. a8
		b8 b, e4. d8 g4 ~
		g fis8 b, e4 a,
		b g' fis e                    % m 68
		dis d cis c
		b4. a8 b2
		e1\fermata \bar "||"

		\time 3/4       % largo
		e2.                           % m 72
		b2 c4
		a b2
		e fis4
		g gis2                        % m 76
		a a4
		b c2
		b2. \bar "||"
		b,4 ais2                      % m 80
		b b4
		e4. d8 c8. b16
		c4 gis2
		a a'4                         % m 84
		d4. c8 b8. a16
		g4 d c
		b fis2
		g4 a b                        % m 88
		c c'8. b16 a4
		b4. a8 g8. fis16
		g4 gis2
		a4 a,2                        % m 92
		b c4
		a b b'8.\p a16
		g4 gis2
		a a,4                         % m 96
		b2 c4
		a b2
		e,2.\fermata \bar "||"

		\time 2/2       % grave
		e'4. d8 c4 a                  % m 100
		b2 ~ b4 a
		g c d d,
		g2\fermata r
		g'4. fis8 e2                  % m 104
		fis fis4 e
		d g a a,
		d d' cis2
		d gis,                        % m 108
		a dis,
		e4 a, b2 ~
		b1 ~
		b4 a b2                       % m 112
		e,1\fermata \bar "||"

		\time 3/4 \clef soprano  % vivace
		r4 b''' a
		g c b
		a fis b                       % m 116
		e, e e
		d g fis
		e cis fis
		b, \clef bass b, a            % m 120
		g c b
		a fis b
		e, cis'2 ~
		cis4 b2 ~                     % m 124
		b ais4
		b b' dis,
		e a, g
		fis b4. a8                    % m 128
		g4 e e'
		d g fis
		e c fis
		b, g' fis ~                   % m 132
		fis e2 ~
		e dis4
		e2 gis,4
		a2 a4                         % m 136
		b e,2
		a4 a'2
		g4 c b
		a fis b                       % m 140
		e,2 d4
		c2 b4
		a4. g'8 f e
		d2.                           % m 144
		e2 gis,4
		a2 fis4
		b2 a4
		g c b                         % m 148
		a b c
		d d,2
		g2. \clef alto
		r4 g'' fis                    % m 152
		e a g
		fis b a
		g \clef bass e, d
		cis fis e                     % m 156
		d g fis
		e fis fis,
		b b'2 ~
		b4 a2 ~                       % m 160
		a gis4
		a fis e
		dis e d
		cis d fis,                    % m 164
		g a2
		d,2. ~
		d4 d'' c
		b e d                         % m 168
		c a d
		g, a b
		c2 a4
		d2 b4                         % m 172
		e a,2
		b dis,4
		e2 e4
		a2 fis4                       % m 176
		b2 a4
		g2 fis4
		e4. d8 c b
		a4 b c                        % m 180
		a b2
		\time 2/2 e,2 ~ e4 e'~
		e d2 c4 ~
		c b2 a4 ~                     % m 184
		a g b b'
		g c a b
		e, a fis g
		e fis b,2 ~                   % m 188
		b4 a2 g4 ~
		g fis b g
		c a b e,
		b'2 e,\fermata \bar "|."      % m 192
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure #'font-size = #-1
		\figuremode {
			r1
			<5>4 <6> <6> <5>
			<9> <8> <7> <6>
			<_+ 9>2 <_- 8>                % m 4
			<4> <3>
			r <_- 4>4 <5 3>
			r2 <5+>
			<7> <6>                       % m 8
			<7 3+>4 <6 4> <5 3+>2
			<6> r
			r <4 6>4 <3 5>
			<9>4 <8> r2                   % m 12
			<2> <4>4 <3>
			<6> <5> <9> <8>
			r1
			<9>                           % m 16
			<4>4 <3> r2
			<6> <7>4 <6>
			<6 4>2 <5 3>
			r1                            % m 20
			r2 <9>4 <8>
			<4> <3> <7> <6>
			<5>2 <7>4 <6>
			<6>4 <5> <5 9> <6 8>          % m 24
			<6+ 5> <6- 4> <4> <3>
			r1

			R1*3      % canzona
			r4 <6> <5> r
			<2>2 r4 <6>
			<7>2 <2>                      % m 32
			r4 <6>2 r4
			<4+ 2>4 r2.
			<7>4 <6> <5>2
			r1                            % m 36
			<7 3+>4 <6+ 4+> r <2>
			<6 5>2 <6+ 5>
			r4 <6> <6>8 <6> r4
			<6 5>2 r4 <6>                 % m 40
			<7>2 <2>
			<5>4 <6+> r2
			<4+ 2>4 <6+> r2
			<7 3+>4 <6 4> <5+ 3>2         % m 44
			<5>4 <6> <6 4>8 <5 3>4 <6 3>8
			<6 4>8 <5 3>4. <7>8 <5> <6>4
			r1
			r4 <6> <2> r                  % m 48
			r <7>8 <6> <2>4 r
			<7> <_+> <2> r
			<_+> <_-> <6 4>8 <5 3+> r4
			<6 4>8 <5 3> r2 <_->4         % m 52
			r1
			r4 <6> <7>8 <6+> r4
			<4>8 <3> <6>4 <7> <6>
			<7> <6-> <2>2                 % m 56
			<_+>4 <5-> <9> <5->
			<9>2 <6->4 <6>
			<6 3> \bassFigureExtendersOn
			    <6 5> <6 4> <6 3>
			\bassFigureExtendersOff
			<7 _+> <6 _-> <2> <6>         % m 60
			<2>2 <2>
			<_+ 9>4 <5-> <_+ 9> <5 _->
			<9> <7> r2
			<6>2 <4 6>8 <3 5> <6>4        % m 64
			<4>8 <3> r4 <7>8 <6> r4
			<7>2 <2>
			<5+ 2>4 <6-> <6+> <_->
			<7> <6> <7>8 <6> <6>4         % m 68
			<7> <6> <7> <6>
			<7> <6> r2
			r1

			R2.*4     % largo
			<6>2.                         % m 76
			<_+ 9>4 \bassFigureExtendersOn
			    <_+ 8> \bassFigureExtendersOff
			    <_->
			R2.*10
			r2 <6+>4                      % m 88
			<6> <6> r
			r2. r
			<9>4 <8>2
			<6>2.                         % m 92
			r
			r
			<9>2 <8 3+>4
			R2.*3                         % m 96
			r1     % grave
			r2 <6 4>                      % m 100
			R1*3
			r2 <6 4>                      % m 104
			r1
			r2 <6 4>4 <5 3>
			<_+> <_-> <6 4> <5 3>         % m 108
			<_+> <_-> <6 4> <5 3>
			r <7> r2
			R1*3

			R2.*3     % allegro             m 116
			r4 <6+> r
			<7>2.
			<6+ 5>
			r4 <6> <6>                    % m 120
			<7>2.
			<6 5>
			r
			<2>                           % m 124
			<2>
			r
			<9>
			<7>                           % m 128
			r4 <6+> r
			<7>2.
			<6+ 5>
			r                             % m 132
			<2>
			<2>
			r
			<9>4 <6- 8> <5>               % m 136
			<7>2.
			r4 <6>2
			<7>2.
			<6 5>                         % m 140
			r2 <4+>4
			r2 <6+>4
			r2.
			<_->                          % m 144
			R2.*3
			<6>2.                         % m 148
			r r r
			r4 <6> <6>                    % m 152
			<6+> <6> <6>
			<6> <_+> r
			r <_+> r
			<6> <6 _+> <6>                % m 156
			<6> <6> <6>
			<6+ 5>2.
			r
			<2>4 <6-> <5>                 % m 160
			<4 2>2.
			<9+>
			r
			<6 5>                         % m 164
			<6 5>
			<5>2 <6 4>4
			<6>2.
			<7>                           % m 168
			R2.*4
			r4 <6>4. <5>8                 % m 173
			R2.*4
			<6>2.                         % m 178
			R2.*3

			% adagio
			r1
			<2>2 <2>
			<2> <2>                       % m 184
			<2>1
			<7>2 <6 5>
			<7> <6 5>
			<6+ 5> <7>4 <5>               % m 188
			<6>2 <2>
			<2>1
			r2 <7>
			r1                            % m 192
		}
	}
	>>
}

\header {
	title    = "Sonata VII"
	subtitle = "Z 796"
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
