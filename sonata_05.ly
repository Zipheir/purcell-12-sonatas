\version "2.18.2"

\include "config.ly"

adag   = \markup { \bold Adagio }
canz   = \markup { \bold Canzona }
grave  = \markup { \bold Grave }
larg   = \markup { \bold Largo }

vlone = \relative c'' {
	\clef treble \key a \minor \time 2/2
	r8 e e e d d f f
	e4. e8 d e c d
	b4. b8 b a a4 ~
	a gis a r                            % m 4
	r8 g g g f f bes bes
	a a a a a g g fis
	fis b b b g g c c
	b b e4 dis e                         % m 8
	fis8 fis fis fis a a e e
	fis b, d d a a c c
	g g bes4. a8 a4 ~
	a g a r8 a'                          % m 12
	a a f f bes4. bes8
	a2. gis4
	a8 e e e c c f f
	e4 r r8 b b b                        % m 16
	g g c c b4. b8
	a8 d d d b b e e
	cis4. cis8 d2 ~
	d4 c2 b4 ~                           % m 20
	b8 a a a c c gis gis
	a2. gis4
	a1\fermata \bar "||"

	\mark \adag
	\time 2/2
	e'4 b c2 ~                           % m 24
	c4 b8. c16 gis4 a
	b2. c8. gis16
	a2. b8. c16
	gis4. gis8 a4.( gis16 a)             % m 28
	b2 e,4 a
	gis g2 a8. b16
	dis,2 b'4 e
	dis2. e8. fis16                      % m 32
	a,4. b8 g2
	fis2. b4 ~
	b ais b' fis
	g2. gis8. a16                        % m 36
	e2. d8. e16
	b2. a8. b16
	d,4 e8. f16 cis2
	d'4 a b2 ~                           % m 40
	b4 a8. gis16 a2
	e'4 b c2 ~
	c4 d8. e16 b4. a8
	a1\fermata \bar "||"                 % m 44

	\time 3/4 \mark \larg
	a'4 g4. f8
	e4. e8 f4
	d d4. e8
	c4 a f'                              % m 48
	f e e
	e4. f8 d4
	e2.
	R2.*3
	e4 d4. c8
	b4. b8 c4                            % m 56
	a4 a4. b8
	gis4 e c'
	c b b
	b4. c8 a4                            % m 60
	a4. b8 gis4
	a2.
	R2.
	a'4 g4. f8                           % m 64
	e4. e8 f4
	d4 d4. e8
	c4 a f'
	f e e                                % m 68
	e4. f8 d4
	d4. e8 cis4
	d2.
	R2.*3
	d4 c4. bes8
	a4. a8 bes4                          % m 76
	g g4. a8
	fis4 d bes'
	bes a a
	a g g                                % m 80
	g f f
	e e e
	d d4. e8
	cis2 c'?4                            % m 84
	bes bes bes
	a2 a4
	a g g
	g4. a8 f4                            % m 88
	e2 e'4
	e d d
	d c c
	b4. b8 a4                            % m 92
	gis2 a4
	a2 g'4
	g f f
	f e e                                % m 96
	e d d
	d c c
	b b4. a8
	a2.\fermata \bar "||"                % m 100

	\time 2/2 \mark \grave
	cis4 cis8. cis16 d4. d8
	e4. e8 a,8. g16 f4
	e4. a8 g f d'4
	g,2 a'4 a8. a16                      % m 104
	bes4. b8 c4. c8
	fis,4. fis8 g4. g8
	c,4 d8. c16 bes2
	a bes4 bes8. bes16                   % m 108
	c4. cis8 d4. d8
	gis,4. gis8 a4. a8
	b4. c8 d8. e16 c4
	\mark \canz
	    b r8 e, a16 g a b c b c d        % m 112
	e d e fis g4 f e8 a
	g f16 e f8 e16 d e f e d c d e c
	d e d c b c d b c4 r8 c
	b4 r8 b b4 r8 b                      % m 116
	b e b16 c b a gis a gis fis e f e d
	c d c b a8 a' f d a'4
	r4 r8 a' f d bes'4
	r4 r8 c a f c'4                      % m 120
	r4 r8 g e16 f e d c d c bes
	a bes a g f g f e d8 d' b16 c b a
	gis a gis fis e8 e a16 g a b c b c d
	e d e fis gis fis gis a b8 e, e e    % m 124
	c c f f e4. e8
	d g16 f e d c b a2
	r8 d b16 c b a g a g f e4
	r8 a fis16 g fis e dis8 e e dis      % m 128
	e4 r r8 a' a a
	f f bes bes a8. e16 e8 e
	f f cis cis d d d d
	es es b b c g e16 f e d              % m 132
	c d c b a8 a d16 c d e f e f g
	\mark \adag
	    a8 a' a a g g bes bes
	a4 g fis8. bes,16 bes8 bes
	a a c c b4 a                         % m 136
	gis b4. a8 a4 ~
	a gis a2\fermata \bar "|."
}

vltwo = \relative c'' {
	\clef treble \key a \minor \time 2/2
	r2 r8 a a a
	g g c c b4 a ~
	a gis8. fis16 e4. d8
	c e' e e c c f f                     % m 4
	e4. e8 e d d d
	d c c b b4 e ~
	e dis e r
	r8 b b b a a c c                     % m 8 
	b4 b2 a4 ~
	a g4. f8 f f
	e e g g f4. e8
	d d' d d f f cis cis                 % m 12
	d4 r8 d d d f f
	c c e4 b8 b b b
	c c gis gis a4 r
	r8 e e e g g dis dis                 % m 16
	e4. e8 fis d g4 ~
	g8 g fis4 g8 g g g
	e e a a f4 bes
	e,8 e e e g g d d                    % m 20
	fis4. fis8 gis4 b ~
	b8 a a a c( b4) a8
	a1\fermata \bar "||"

	gis4. fis8 e2 ~   % adagio             m 24
	e d ~
	d4 c8. b16 c2 ~
	c4 b8. a16 d2 ~
	d4 e8. b16 c2                        % m 28
	e'4 b c2 ~
	c4 b8. c16 dis,4 e
	fis2 e
	b'4 fis g2 ~                         % m 32
	g4 fis2 e4 ~
	e d8. cis16 d2
	fis'4 cis d2 ~
	d4 dis8. e16 a,2 ~                   % m 36
	a4 g8. a16 f2 ~
	f4 e8. f16 d4 c ~
	c b a' e
	f4. e8 d2                            % m 40
	e'4 b c d8. e16
	gis,2. fis8 e
	a2. gis4
	a1\fermata \bar "||"                 % m 44

	\time 3/4     % largo
	R2.*3
	e'4 d4. c8                           % m 48
	b4. b8 c4
	a a4. b8
	gis4 e c'
	c b b                                % m 52
	b4. c8 a4
	a4. b8 gis4
	a2.
	R2.*3
	a'4 g4. f8
	e4. e8 f4                            % m 60
	d4 d4. e8
	c4 a f'
	f e e
	e4. f8 d4                            % m 64
	d4. e8 c4
	b2 e4
	e d d
	d c4. b8                             % m 68
	a4. a8 bes4
	g g4. a8
	f4 d bes'
	bes a a                              % m 72
	a4. bes8 g4
	g f f
	f es4. d8
	d2 d'4                               % m 76
	c c c
	bes bes es
	c c4. d8
	bes2 bes4                            % m 80
	a a bes
	g g a
	a g4. f8
	e4. e8 f4                            % m 84
	d d4. e8
	cis4 a f'
	f e e
	e4. f8 d4                            % m 88
	d4. e8 cis4
	d2 a'4
	a g g
	g f f                                % m 92
	e2 e'4
	e d d
	d c c
	b b c                                % m 96
	a a b
	gis e a ~
	a gis4. a8
	a2.\fermata \bar "||"                % m 100

	\time 2/2   % grave
	e'4 e8. e16 f4. fis8
	g4. g8 cis,4 d ~
	d cis d f, ~
	f es d2 ~                            % m 104
	d4 d'2 c4 ~
	c bes8. bes16 bes4. bes8
	bes4 a2 g4 ~
	g f8. e16 f2 ~                       % m 108
	f4 e2 d4 ~
	d b'8. b16 c4. cis8
	d4. d8 gis,4 a
	a gis r2                             % m 112

	r4 r8 e a16 g a b c b c a     % canzona
	b a b cis d4 c16 d c b
	    a b c a
	b c b a gis a b gis a4 r8 a
	a4 r8 a a4 r8 a                      % m 116
	a4 gis8 e' b16 c b a gis
	    a gis fis
	e f e d c d c b a4 r8 d'
	cis a e'4 r r8 g
	e c g'4 r r8 f                       % m 120
	d16 e d c bes c bes a g a g f e4
	r4 r8 a' f16 g f e d e d c
	b c b a gis a gis fis e8 e
	    a16 g a b
	c b c d e d e fis gis fis gis a
	    b a b gis                        % m 124
	a8 a, a a g g c c
	b d c16 b a g g4 fis
	g8 b b b c c gis e'
	c16 d c b a b a g fis8 g fis b       % m 128
	g16 a g fis e f e d c4 r8 a
	d16 c d e f e f g a g a b
	    cis d e cis
	d8 cis16 dis e8 a, f16 g f e
	    d e d c
	bes c bes a g4 r8 e''8 e e           % m 132
	f f cis cis d d d d
	c c f f e4 d
	r8 d d d c c es es
	d2 ~ d8. c16 c8 c                    % m 136
	b b d d c4. b8
	b2 a\fermata \bar "|."
}

basso = \relative c {
	\clef bass \key a \minor \time 2/2
	R1*2
	r8 e e e c c f f
	e2 r8 a a a                        % m 4
	c c g g bes d, d d
	f f c c d b c a
	b2 r8 e e e
	d d g g fis4 e                     % m 8
	dis d cis c
	b8 b b b d d a a
	c4 g d'4. c8
	bes2 a8 a' a a                     % m 12
	f f bes bes g d d d
	f f c c e2
	r2 r8 a a a
	g g c c b4 b,                      % m 16
	c a d e8 b
	c4 d g e
	a8 a, a a bes bes g g
	a4. e'8 e e g g                    % m 20
	dis4. dis8 e e e e
	c c f f e4 e,
	a1\fermata \bar "||"

	r2 a'4 e            % adagio       m 24
	f2. e8. f16
	gis,2. a8. e16
	f1
	e2 e'4 a                           % m 28
	gis2. a4
	e' b c2
	b4 fis g2 ~
	g4 a8. b16 cis,2                   % m 32
	dis2. e8. f16
	ais,2. b4
	fis2 b
	e4 b c2                            % m 36
	cis d ~
	d4 c8. d16 fis,2
	g4 g'2 g4
	f2. b,4                            % m 40
	c1
	b2 a ~
	a4 g8 f e2
	a1\fermata \bar "||"               % m 44

	\time 3/4    % largo
	R2.*7
	a'4 g4. f8                         % m 52
	e4. e8 f4
	d d4. e8
	c4 a f'
	f e e                              % m 56
	e4. f8 d4
	e2.
	R2.
	e'4 d4. c8                         % m 60
	b4. b8 c4
	a4 a4. b8
	gis4 e c'
	c b b                              % m 64
	b4. c8 a4
	a4. b8 gis4
	a2 a4
	bes4. a8 g4                        % m 68
	g4. a8 f4
	e4 e4. d8
	d2.
	R2.                                % m 72
	d'4 c4. bes8
	a4. a8 bes4
	g4 g4. a8
	fis4 d bes'                        % m 76
	bes a a
	a g g
	g4. a8 fis4
	g2.                                % m 80
	r4 r d
	d c c
	c bes bes
	bes a a                            % m 84
	a g g
	g f d
	g4. a8 bes g
	a2 a'4                             % m 88
	a g g
	g f f
	e2.
	d2 d'4 ~                           % m 92
	d c c
	b2.
	a2 a4
	a g g                              % m 96
	g f f
	e2 d4 ~
	d e e,
	a2.\fermata \bar "||"              % m 100

	\time 2/2   % grave
	a1 ~
	a
	a'4 a8. a16 bes4. b8
	c4. c8 fis,2 ~                     % m 104
	fis4 g8. f16 es2
	d e4 e8. e16
	f4. fis8 g4. g8
	cis,2 d                            % m 108
	a4. g8 f2
	e1 ~
	e ~
	e2 r                               % m 112
	R1*2

	% canzona
	r4 r8 e a16 g a b c b c d
	e d e f g f g e f g f e d e f d    % m 116
	e2 e,
	r4 r8 a d16 c d e f e f g
	a g a b cis b cis a d8 d, bes g
	c16 b c d e d e c f e f g a g a f  % m 120
	bes4 bes, c2
	cis d
	r8 e e e c c f f
	e2 r                               % m 124
	r8 a, a'16 g a b \clef alto
	    c b c d e d e f
	g8 b, c16 d e c d8 d, r d'
	b16 c b a g a g f \clef bass
	    e f e d c d c b
	a4 ~ a16 b c a b8 b' b b           % m 128
	c c gis gis a16 b a g f g f e
	d8 d, d'16 c d e f e f g a b cis a
	d8 a a a bes bes fis fis
	g4 r8 g e16 f e d c d c b          % m 132
	a8 a' a a f f bes bes
	a f f f c' g g g
	fis fis bes bes a4 g
	fis2 gis4 a                        % m 136
	e b c d
	e e, a2\fermata \bar "|."
}

continuo = {
	<<
	\new Voice \relative c'' {
		\clef soprano \key a \minor \time 2/2
		<<
		{ \voiceOne
			r8 e e e c c f f
			e4. e8 d e c d
		}
		\new Voice { \voiceTwo
			r2 r8 a a a
			g g c c b4 a
		}
		>> \oneVoice \clef bass
		e,4. e8 c4 f
		e2 a,4 a'                  % m 4
		c g bes d,
		f c d8 b c a
		b2 e,4 e'
		d g fis e                  % m 8
		dis d cis c
		b2 d4 a
		c g d'4. c8
		bes2 a4 a'                 % m 12
		f bes g8 g, d'4
		f c e e,
		a r a'4. a8
		g4 c b b,                  % m 16
		c a d e8 b
		c4 d g e
		a a, bes g
		a2 e'4 g                   % m 20
		dis2 e
		c4 f e2
		a,1\fermata \bar "||"

		e2 a'4 e    % adagio         m 24
		f1
		gis,2. a8. e16
		f1
		e2 e'4 a                   % m 28
		gis2. a4
		e' b c2
		b4 fis g2 ~
		g4 a8. b16 cis,2           % m 32
		dis2. e4
		ais,2. b4
		fis2 b
		e4 b c2                    % m 36
		cis d ~
		d4 d fis,2
		g4 g' ~ g2
		f2. b,4                    % m 40
		c1
		b2 a ~
		a4 g8 f e2
		a1\fermata                 % m 44

		\time 3/4     % largo
		a'4 b2
		c4. b8 a4 ~
		a gis2
		a4 f d                     % m 48
		g4. f8 e4
		f2.
		e4 c a
		d2. ~                      % m 52
		d4 c2
		b2.
		a
		g                          % m 56
		f
		e2 e'4
		f g2
		c, d4                      % m 60
		e e,2
		a a'4
		gis2 a4
		f d2                       % m 64
		gis, a4
		d, e2
		f2.
		g4. f'8 e d                % m 68
		cis4 d g,
		a2.
		d
		c2 a4                      % m 72
		bes c2
		f4. es8 d c
		b4 c2 ~
		c bes4                     % m 76
		bes' a2 ~
		a4 g2 ~
		g fis4
		g2.                        % m 80
		d ~
		d4 c2 ~
		c4 bes2 ~
		bes4 a2 ~                  % m 84
		a4 g2 ~
		g4 f d
		g2.
		a2 a'4 ~                   % m 88
		a g2 ~
		g4 f2
		e2.
		d2 d'4 ~                   % m 92
		d c2
		b2.
		a ~
		a4 g2 ~                    % m 96
		g4 f2
		e d4 ~
		d e2
		a,2.\fermata \bar "||"     % m 100

		\time 2/2   % grave
		a1 ~
		a
		a'2 bes4. b8
		c2 fis, ~                  % m 104
		fis4 g8. f16 es2
		d e
		f4. fis8 g2
		cis, d                     % m 108
		a4. g8 f2
		e2 ~ e ~
		e ~ e

		% canzona
		e \clef soprano a''4 c     % m 112
		<<
		{ \voiceOne e4 g f e }
		\new Voice { \voiceTwo
			r4 r8 e, a4 c
		}
		>> \oneVoice
		b d c a
		\autoBeamOff
		b gis8 \clef bass e,, a2
		\autoBeamOn
		e' f4 d                    % m 116
		e2 e,
		a d
		a' d8 d, bes g
		c2 f                       % m 120
		bes, c
		cis d
		e c4 f
		e2 e,                      % m 124
		a4 a' \clef alto c e
		g c, d \clef bass d
		b g e c
		a2 b                       % m 128
		e8 e e e f f cis cis
		d2 f8. g16 a4
		d8 d, a'4 bes fis
		g2 e4 c                    % m 132
		a a' f bes
		a f c g'
		fis bes a g
		fis2 gis4 a                % m 136
		e b c d
		e e, a2\fermata \bar "|."
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure #'font-size = #-1
		\figuremode {
			r1
			r1
			<4>4. <3+>8 <7>2
			<6 4>4 <5 3+> r <6>     % m 4
			r4 <6> r <6->
			<6>8 <5> r4 <6 5> r
			r2 r4 <6>
			<6> <6> <6+> <6>        % m 8
			r2 <7>4 <6>
			<7> <6> <4>8 <3> <6>4
			r <3-> <6>8 <5> r4
			<7> <6> <6> <5>         % m 12
			r2 <_->4 <6->
			r1
			r2 r4 <6>
			<6>2 <6>4 <5+>          % m 16
			r2 <6 5>
			<6 5> r
			<_+> r4 <_->
			<4> <3> <6> r           % m 20
			<6> <5> <6> <5>
			<7> r r2
			r1

			r     % adagio            m 24
			<7>2 <6>
			<6 5> <4>
			<5> <6>
			<7> <4 6>               % m 28
			r <4 6>
			<6>4 <6-> <5> <6>
			<_+>2 <6>
			<5+> <2>4 <3>           % m 32
			\bassFigureExtendersOn
			<5 4>4 <5 3>
			    \bassFigureExtendersOff
			    <4 3> r
			<4>2 <4>
			<4>4 <3+> r2
			r <6 5>                 % m 36
			<6>4 <5> <9> <8>
			<6>2 <4 6>4 <3 5>
			<4> <3> <4+ 2>2
			<6 4>1                  % m 40
			<7>2 <6>
			\bassFigureExtendersOn
			<4 6+>4 <3 6+> \bassFigureExtendersOff
			    <7+>4 <6>8 <5>
			r1
			r1                      % m 44

			% largo
			r2. r2.
			<2>4 r2
			r4 <6>2                 % m 48
			<7>4 <6> r
			<7>2 <6>4
			r2.
			<7>4 <6> r              % m 52
			<4+ 2>4 <7> <6>
			<7>2 <6+>4
			r2.
			<7>4 <6>2               % m 56
			r2. r2.
			<6 5>
			<7>                     % m 60
			r
			r2 <6>4
			<7> <6> r
			<7>2.                   % m 64
			<6 5>2 <6>4
			<6 5>4 <7>2
			<7>4 <6>2
			\bassFigureExtendersOn
			<7 _->4 <6 _-> r        % m 68
			\bassFigureExtendersOff
			<6 5> <9> r
			r2.
			<5>2 <6->4
			<7> <6> r               % m 72
			<7> <6> <5>
			r2 <6->4
			r2.
			<2>                     % m 76
			<2>
			<2->
			<2> \bassFigureExtendersOn
			<9 _->4 <8 _-> r        % m 80
			\bassFigureExtendersOff
			<4> <3> r
			<2>2.
			<2>
			<2+>4 <_->2             % m 84
			<2->2.
			<2>
			<9>4 <8> r
			<7>2 <4 6>4             % m 88
			r4 <6>2
			r2.
			<7>4 <6> r
			\bassFigureExtendersOn
			<6 4> <6 3> <5>         % m 92
			\bassFigureExtendersOff
			<2>2.
			<7>2 <6>4
			<7>4 <6>2
			<6 2>4 <6>2             % m 96
			<2>4 <6>2
			<7>4 <6> <7>
			<6>2.
			r                       % m 100

			% grave
			<5 3+>2 <6 4>
			<7 5> <6 5>4 \bassFigureExtendersOn
			    <6 4> \bassFigureExtendersOff
			<4>4 <3> <6>8 <5> r4
			<4> <3-> r2             % m 104
			<4->2 <7>4 <6>
			<7> <6-> <5->2
			<4->4 <3> <9 _-> \bassFigureExtendersOn
			    <8 _-> \bassFigureExtendersOff
			<6 5>2 <6+>             % m 108
			<6>4 <5> <7> <6>
			\bassFigureExtendersOn
			<7 _+> <5 _+> <6 4> <6+ 4>
			\bassFigureExtendersOff
			<7 5>2 <7 _+>4 <6 4>

			% canzona
			<4> <_+> r2   % ms has 5#?   m 112
			r1 r r
			<5 4>2 <4 3>4 <6 5>     % m 116
			<4> <_+> r2
			r1
			<_+>
			r                       % m 120
			<5>4 <6> r2
			r <5>4 <6>
			r2 <6>
			<6> r                   % m 124
			r4 <6> r2
			r <4>
			r <6>4 <5+>
			<5> <6+> r2             % m 128
			<6>4 <5> r2
			<5>4 <6-> r8. <6>16 r4
			r1
			<6- _->4 <5 _+> r2      % m 132
			<6 4>4 <5 _+> <6> r
			r2 r4 <_->
			r <6> <6+> <6->
			r2 <5>                  % m 136
			r <7>4 <6>
			r1
		}
	}
	>>
}

\header {
	title    = "Sonata V"
	subtitle = "Z 794"
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
