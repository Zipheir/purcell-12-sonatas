\version "2.18.2"

\include "config.ly"

adag = \markup { \bold Adagio }
canz = \markup { \bold Canzona }
larg = \markup { \bold Largo }

vlone = \relative c'' {
	\clef treble \key c \minor \time 2/2
	c4 c8. c16 c4 des
	g,4. g8 aes g aes b
	c d es2 d8 c
	d2 ~ d8 bes es d                           % m 4
	c2 r4 c ~
	c8 c bes c des4 c ~
	c bes8. a16 bes4 b8. c16
	g2\fermata r                               % m 8
	g'4 g8. g16 g4 aes
	d,4. d8 es d es f
	g a bes2 aes8 g
	aes2 ~ aes8 f bes aes                      % m 12
	g f es d d2
	c ~ c8 c f es
	des c des bes es des c bes
	aes es aes g f es des4                     % m 16
	c r8 g' c bes aes g
	f f' bes aes g f g es
	aes g f es des c bes aes
	g g' c bes aes g bes aes                   % m 20
	g f e d c bes aes g
	g4. f8 f2\fermata \bar "||"

	% canzona
	\mark \canz
	r8 f' f f aes8. aes16 g aes f g
	e8 c f4. f8 e4                             % m 24
	f8 bes a g f f16 es des8 bes
	c c f8. es16 des2
	c ~ c8 c c c
	es8. d16 c des bes c aes8 f c'4 ~          % m 28
	c8 c b4 c8 f e d
	c c16 bes aes8 f g bes aes g
	f f16 es des8 bes c c f es
	d4 es8 f g g aes4 ~                        % m 32
	aes8 aes g4 f8 f bes aes
	g c' b a g g16 f es8 c
	d d g f16 g es4 e
	f g8 aes bes e, f f                        % m 36
	e d c c16 bes aes8 f bes4
	c16 bes a g f8 gis16 f es8 c f4 ~
	f8 f' f f aes8. aes16 g aes f g
	es8 c g'4. g8 f4                           % m 40
	g2 c,4 r
	r8 c c c des8. des16 c des bes c
	a8 f bes4. bes8 a4
	bes8 f' f f bes8. aes16 g aes f g          % m 44
	e8 c g' f es d c c16 bes
	aes8 g f aes' g f16 es d8 c'
	b aes g g16 f es8 c f4          % aes: possible typo in ms
	bes,8 bes bes bes des8. c16 bes c aes bes  % m 48
	g8 es c'4. c8 bes4 ~
	bes8 g g g aes8. aes16 g aes f g
	e8 c f4. f8 e4
	f1\fermata \bar "||"                       % m 52

	% adagio
	\mark \adag
	c'4 c8. c16 es2 ~
	es4 des8. c16 c2 ~
	c4 bes8. c16 aes2
	a4 bes f g8. g16                           % m 56
	aes2. a8. a16
	b4 c4. c8 bes8. bes16
	es4. es8 c8. c16 f4 ~
	f e es d8 c                                % m 60
	des2 ~ des8. des16 c8. bes16
	c2 ~ c8. c16 bes8. c16
	a4 aes2 g8. f16
	e4 f4. f8 g4                               % m 64
	aes2 a4 bes ~
	bes8 bes a8. g16 aes4 g8. f16
	e2 ~ e8 e f4 ~
	f e f2\fermata \bar "||"                   % m 68

	% largo
	\time 3/4 \mark \larg f'4 e f
	g8. f16 e8. d16 c8. bes16
	aes4 g f
	bes8. aes16 g8. f16 e8. d16                % m 72
	c8. d16 e8. f16 g8. e16
	f4 c2
	R2.
	c'4 bes c                                  % m 76
	des8. c16 bes8. aes16 g8. f16
	e4 f g
	c, f8. g16 aes8. f16
	g2 r4                                      % m 80
	R2.
	g'4 f g
	aes8. g16 f8. es16 d8. c16
	b8. a16 g8. f16 es8. d16                   % m 84
	c8. d16 es8. c16 f4 ~
	f8 f d8. bes16 es4 ~
	es d4. es8
	es4 r2                                     % m 88
	R2.
	es'4 d es
	f8. es16 d8. c16 bes8. aes16
	g4 f es ~                                  % m 92
	es4. es8 d8. c16
	f8. g16 f8. es16 f8. d16
	g2 g'4
	g fis g                                    % m 96
	a8. g16 fis8. e16 d8. c16
	b8. a16 g8. f16 es8. d16
	c2 c'4
	c bes c                                    % m 100
	des8. c16 bes8. aes16 g8. f16
	e4 f g
	aes g c ~
	c bes c                                    % m 104
	des8. es16 des8. c16 des8.( bes16)
	c8. des16 b4. aes8
	aes4 es' es
	es f8( es) des( c)                         % m 108
	des4. des8 es4
	a,4. a8 bes8. c16
	des8. es16 c4. bes8
	bes4 r2                                    % m 112
	R2.*3
	bes'4 a bes                                % m 116
	c8. bes16 a8. g16 f8. es16
	des8. c16 bes8. aes16 g8. f16
	e4 f g
	c bes c                                    % m 120
	des8. c16 bes8. aes16 g8. f16
	e4 c c'
	c bes c
	des8. c16 bes8. c16 bes8. aes16            % m 124
	g2 g4
	g2 aes4
	g4 g4. f8
	f2 c'4\p                                   % m 128
	c bes c
	des8. c16 bes8. c16 bes8. aes16
	g2 g4
	g2 aes4                                    % m 132
	g4 g4. f8
	f2.\fermata \bar "|."
}

vltwo = \relative c'' {
	\clef treble \key c \minor \time 2/2
	aes4 aes8. aes16 aes4 bes
	e,4. e8 f e f g
	aes bes c4 f,2 ~
	f8 f bes aes g4 g ~                   % m 4
	g8 g f g aes2 ~
	aes4 aes g4. aes8
	f4. f8 g4 f
	e2\fermata r                          % m 8
	es'4 es8. es16 es4 f
	b,4. b8 c b c d
	es f g4 c,2 ~
	c8 c f es d4. c8                      % m 12
	b4 c2 b4
	c8 g c bes aes g aes f
	bes aes g f es bes' es des
	c bes c aes bes aes g f               % m 16
	e2 f8 c' f es
	des c d bes es bes es des
	c bes aes g f aes g f
	e e' aes g f es des c                 % m 20
	es des c bes aes g f4 ~
	f e f2\fermata \bar "||"

	% canzona
	r2 r8 f' e d
	c c16 bes aes8 f g g c4 ~             % m 24
	c8 f, es' des c des16 c bes8 c16 des
	es8. des16 c4. f,8 f f
	aes8. aes16 g aes f g e8 c f4 ~
	f8 f e4 f8. g16 aes g f es            % m 28
	d2 c4 r
	r8 c' c c des8. des16 c des bes c
	a8 f bes4. bes8 a bes16 c
	b4 c8 d es e f16 g f es               % m 32
	d8 bes es2 d4 ~
	d8 c f es d bes' aes g
	f8 f16 es d8 g,4 g8 g g
	aes8. aes16 g aes f g e8 c f4 ~       % m 36
	f8 f e4 f8 f' es des
	c f16 es des8 bes c c c c
	des8. des16 c des bes c aes8 f c'4 ~
	c8 c b4 c des8 c                      % m 40
	bes2 a8 f' es des
	c c16 bes a8 f bes8. f16 ges4
	f8 f' f f aes8. g16 f g es f
	d8 d d d g8. f16 e f d e              % m 44
	c8 es d c b8 bes16 aes g8 e
	f es' d c b g' f es
	d d16 c b8 g c8. bes16 aes4 ~
	aes g f2                              % m 48
	es8 g g g bes8. aes16 g aes f g
	e4 c8 c' c c es8. des16
	c des bes c aes8 g g4. f8
	f1\fermata \bar "||"                  % m 52

	% adagio
	a2. a8. a16
	c8 f, bes2 aes8. bes16
	g2. f8. g16
	e4 es4. es8 des4 ~                    % m 56
	des8 des c8. c16 f2 ~
	f8. f16 es4 d g ~
	g8 g es8. es16 aes4. aes8
	g4 aes a2 ~                           % m 60
	a8 f bes8. aes16 g2 ~
	g8. g16 aes8. bes16 aes4 g ~
	g f8. es16 d4 des
	c4. c'8 d4 es ~                       % m 64
	es8. es16 d8. c16 des2
	c ~ c8 c bes4 ~
	bes8 bes a8. g16 aes4. g8
	g4. f8 f2\fermata \bar "||"           % m 68

	% largo
	\time 3/4 R2.*2
	c'4 bes c
	des8. c16 bes8. aes16 g8. f16         % m 72
	e8. f16 g8. aes16 bes8. g16
	aes4 g f
	e8. f16 g8. f16 e8. d16
	c4 r2                                 % m 76
	f'4 e f
	g8. f16 e8. d16 c8. bes16
	aes8. g16 aes8. bes16 c8. d16
	es4 d c                               % m 80
	b8. c16 d8. c16 b8. a16
	g4 r2
	c4 b c
	d8. c16 b8. a16 g8. f16               % m 84
	es8. f16 g8. es16 aes4 ~
	aes8 aes f8. d16 g4 ~
	g8 f f4. es8
	es4 r2                                % m 88
	R2.*3
	bes'4 a bes                           % m 92
	c8. bes16 a8. g16 f8. es16
	d2 d'4
	d c d
	es8. d16 c8. bes16 a8. g16            % m 96
	fis4 r d'
	d c d
	es8. d16 c8. d16 c8. bes16
	aes8. g16 f4 es                       % m 100
	des4. c8 des4
	c f2 ~
	f e4
	f g aes                               % m 104
	bes8. c16 bes8. aes16 bes8( g)
	aes4 aes g
	aes c c
	c bes c                               % m 108
	f,4. f8 ges4
	c,4. c8 des8. es16
	f8. g16 a4. bes8
	bes4 r2                               % m 112
	R2.
	bes'4 a bes
	c8. bes16 a8. g16 f8. es16
	des4 c bes                            % m 116
	a bes c
	f e f
	g8. f16 e8. d16 c8. bes16
	aes4 g aes                            % m 120
	g2 aes4
	bes8. aes16 g8. f16 e8. c16
	f2 aes4
	aes g f                               % m 124
	e d e
	f2 f4 ~
	f e4. f8
	f4 aes\p g                            % m 128
	f g aes
	bes8. aes16 g8. aes16 g8. f16
	e4 d e
	f2 f4 ~                               % m 132
	f e2
	f2.\fermata \bar "|."
}

basso = \relative c {
	\clef bass \key c \minor \time 2/2
	f4. f8 bes,2
	c4. c8 c4 bes
	aes2 a
	bes4. bes8 es4. es8                  % m 4
	aes4. g8 f4. f8
	e2 es
	d des
	c\fermata r                          % m 8
	c'4. c8 f,2
	g4. g8 g4 f
	es2 e
	f f,                                 % m 12
	g ~ g8 d' g f
	e d e c f es des c
	bes f' bes aes g f g es
	aes g f es des c bes4 ~              % m 16
	bes8 g c bes aes g f f'
	bes aes g f es des c bes
	aes2 bes
	c1 ~                                 % m 20
	c ~
	c2 f,\fermata \bar "||"

	% canzona
	R1
	r2 r8 c'' c c                        % m 24
	des8. des16 c des bes c a8 f bes4 ~
	bes8 bes a4 bes bes,
	r8 f' e d c c16 bes aes8 f
	g g c4 f,2                           % m 28
	r8 g' g g aes8. aes16 g aes f g
	e8 c f4. f8 e4
	f2 f, ~
	f8 f' es d c c16 bes aes8 f          % m 32
	bes2 ~ bes8 bes bes bes
	es8. es16 d es c d b8 g c4 ~
	c8 c b4 c2 ~
	c8 f e d c c16 bes aes8 f            % m 36
	c' c c c des8. des16 c des bes c
	a8 f bes4. bes8 a4
	bes aes8 g f f' f f
	aes8. aes16 g aes f g e8 c f4 ~      % m 40
	f8 f e4 f4. bes8
	a g f f16 es des8 bes es4 ~
	es des c f
	bes4. aes8 g2 ~                      % m 44
	g8 c bes aes g g16 f e8 c
	f2 g ~
	g8 g g g aes8. g16 f g es f
	d8 bes es4. es8 d4                   % m 48
	es2 des
	c1 ~
	c4. bes8 c2
	f,1\fermata \bar "||"                % m 52

	% adagio
	f'
	f,4 f' e2 ~
	e4 e f2
	c4 g a bes                           % m 56
	f2. f4
	g2 g'4. g8
	es8. es16 aes4. aes8 f8. f16
	c'2. f,4                             % m 60
	bes2 es, ~
	es e ~
	e4 f b, bes ~
	bes a aes g                          % m 64
	f2 f'4. f8
	e4 es d des
	c2. bes4
	c2 f,\fermata \bar "||"              % m 68

	% largo
	\time 3/4 R2.*5
	f'4 e f
	g8. f16 e8. d16 c8. bes16
	aes4 g f                             % m 76
	bes c des
	c d e
	f2 r4
	c' b c                               % m 80
	d8. c16 b8. a16 g8. f16
	es4 d c
	f g aes
	g a b                                % m 84
	c4. bes8 aes8. f16
	bes4. bes8 g8. es16
	aes4 bes bes,
	es d es                              % m 88
	f8. es16 d8. c16 bes8. aes16
	g4 f es
	bes' c d
	es f g                               % m 92
	f g a
	bes2 bes4
	b a b
	c8. bes16 a8. g16 fis8. e16          % m 96
	d4 e fis
	g8. f16 es8. d16 c8. b16
	c4 d e
	f8. es16 des4 c                      % m 100
	bes2 bes'4
	bes aes bes
	c bes c
	des des, c                           % m 104
	bes es2
	bes4 es,2
	aes aes'4
	a g a                                % m 108
	bes8. aes16 ges8. f16 es4
	f8. ges16 f8. es16 des8. c16
	bes4 f2
	bes'4 a bes                          % m 112
	c8. bes16 a8. g16 f8. es16
	des4 c bes
	a f2
	ges2.                                % m 116
	f4 g a
	bes c des
	c d e
	f2 f4 ~                              % m 120
	f e f
	g8. f16 e8. d16 c8. bes16
	aes4 g f
	bes2.                                % m 124
	c4 bes c
	des8. c16 bes8. aes16 g8. f16
	bes4 c2
	f,4 f'\p es                          % m 128
	des2 c4
	bes2.
	c4 bes c
	des8. c16 bes8. aes16 g8. f16        % m 132
	bes4 c2
	f,2.\fermata \bar "|."
}

continuo = {
	<<
	\relative c {
		\clef bass \key c \minor \time 2/2
		f2 bes,
		c ~ c4 bes
		aes2 a
		bes es                              % m 4
		aes4. g8 f2
		e es
		d des
		c\fermata r                         % m 8
		c' f,
		g ~ g4 f
		es2 e
		f f,                                % m 12
		g2. g'4
		e c f des
		bes bes' g es
		aes f des bes ~                     % m 16
		bes8 g c4 aes f
		bes' g es c
		aes2 bes
		c1 ~                                % m 20
		c ~
		c2 f,\fermata \bar "||"

		% canzona
		\clef soprano r8 f''' f f a f e d
		c8. bes16 aes8 f \clef bass c4. c8  % m 24
		des4 c8 bes a f bes4 ~
		bes a bes bes,
		f8 f' e d c8. bes16 aes8 f
		g4 c f,2                            % m 28
		g4 g' aes g8 f
		e c f aes, bes4 c
		f,2 ~ f ~
		f8 f' es d c8. bes16 aes8 f         % m 32
		bes2. bes4
		es d8 c b g c4 ~
		c b c2 ~
		c8 f e d c8. bes16 aes8 f           % m 36
		c'2 des4 c8 bes
		a f bes4 ~ bes a4
		bes4 aes8 g f4 f'
		aes g8 f e c f4 ~                   % m 40
		f e f4. bes8
		a g f8. es16 des8 bes es4 ~
		es des c f
		bes4. aes8 g4 g,                    % m 44
		c8 c' bes aes g8. f16 e8 c
		f2 g ~
		g4 g aes8. g16 f8 es
		d bes es4 ~ es d                    % m 48
		es2 des
		c2 ~ c ~
		c4. bes8 c2
		f,1\fermata \bar "||"               % m 52

		% adagio
		f'1
		f,4 f' e2
		e f
		c4 g a bes                          % m 56
		f2. f4
		g2 g'
		es4 aes ~ aes f
		c'2 ~ c4 f,                         % m 60
		bes2 es, ~
		es e ~
		e4 f b, bes ~
		bes a aes g                         % m 64
		f2 f'
		e4 es d des
		c2. bes4
		c2 f,\fermata \bar "||"             % m 68

		\clef soprano \time 3/4 f'''4 e f
		g8. f16 e8. d16 c8. bes16
		aes4 g f
		bes8. aes16 g8. f16 e8. d16         % m 72
		c2.
		\clef bass f,4 e f
		g8. f16 e8. d16 c8. bes16
		aes4 g f                            % m 76
		bes c des
		c d e
		f2.
		c'4 b c                             % m 80
		d8. c16 b8. a16 g8. f16
		es4 d c
		f g aes
		g a b                               % m 84
		c4. bes8 aes8. f16
		bes4. bes8 g4
		aes bes bes,
		es d es                             % m 88
		f8. es16 d8. c16 bes8. aes16
		g4 f es
		bes' c d
		es f g                              % m 92
		f g a
		bes2.
		b4 a b
		c8. bes16 a8. g16 fis8. e16         % m 96
		d4 e fis
		g8. f16 es8. d16 c8. b16
		c4 d e
		f8. es16 des4 c                     % m 100
		bes2 bes'4 ~
		bes aes bes
		c bes c
		des des, c                          % m 104
		bes es2
		aes,4 es2
		aes aes'4
		a g a                               % m 108
		bes8. aes16 ges8. f16 es4
		f4. es8 des8. c16
		bes4 f2
		bes'4 a bes                         % m 112
		c8. bes16 a8. g16 f8. es16
		des4 c bes
		a f2
		ges2.                               % m 116
		f4 g a
		bes c des
		c d e
		f2 f4 ~                             % m 120
		f e f
		g8. f16 e8. d16 c8. bes16
		aes4 bes f
		bes2.                               % m 124
		c4 bes c
		des8. c16 bes8. aes16 g8. f16
		bes4 c2
		f,4 f'\p es                         % m 128
		des2 c4
		bes2.
		c4 bes c
		des8. c16 bes8. aes16 g8. f16       % m 132
		bes4 c2
		f,2.\fermata \bar "|."
	}

	\new FiguredBass {
		\override FiguredBass.BassFigure #'font-size = #-1
		\figuremode {
			r2 <9 7>4 <8 6>
			r2 <6 4>4 <6>
			r2 <6 5>
			r <7>4 <5>                               % m 4
			<7> <6> r2
			\bassFigureExtendersOn <6 4>4 <5 4>
			    <7- 3> <6 3>\bassFigureExtendersOff
			<7> <6> <6 4> <6+ 3>
			r1                                       % m 8
			r2 <9 7>4 <8 6>
			r2 <6 4>4 <6>
			r2 <6 5>
			r <6 5>                                  % m 12
			<3+>4 <4>2 <3+>4
			r1
			<_->4 <_+> r2
			r2 <6>                                   % m 16
			<4+> r
			<_-> r
			R1*6
			<7>8 <6> <6> <6> <6>4 <_->
			<2>2 <_->4 <5>8 <6>
			r2. <6>4
			<7>1                                     % m 28
			<4>4 <3+> <7> <6+>8 <6>
			r1
			<_+ 5>4 \bassFigureExtendersOn <4 5>
			    <4\! 6-> <_+ 6-> \bassFigureExtendersOff
			<4+ 2>4 r2.                              % m 32
			<7 3>4 <6 4> <4> <3>
			<7>8 <6> <6+> <6> <6>4 <6>8 <5>
			<2>2 r4 <_+>
			<4 6>1                                   % m 36
			<4>4 <3+> r2
			r4 \bassFigureExtendersOn <_- 5>8
			    <_- 6> \bassFigureExtendersOff <2>2
			r1
			r2. <6->4                                % m 40
			<5 2> r2 r8 <_->
			r2. <6 _->8 \bassFigureExtendersOn
			    <5 _-> \bassFigureExtendersOff
			<2>2 <7>
			r2. <6+>8 <5>                            % m 44
			<_!> <_-> <6> <6> <6 _!> <5 _-> <6>4
			r1
			r
			<6 5>2 <2>                               % m 48
			<5>4 <6> <7> <6>
			<7>2 <6>4 <5>
			<4+>2 <4>4 <_!>
			r1                                       % m 52

			% adagio
			\bassFigureExtendersOn <5 _+>2 <7 _+>
			<7>4 <6- 4> <6\! 5> <6 4>
			<6\! 3\!>4 <5 3> <9> <8>
			\bassFigureExtendersOff <6+ _+> <6->
			    <6 5> <6 _->                         % m 56
			<6-> <5> r <_+>
			<_+ 7> <4 6> <4> <_->
			r2 <6>
			<4 5>4 <_+ 6> <_- 6> r                   % m 60
			<_->2 <7>
			<6> <6 4>4 <5 3>
			<4! 3> <3-> <7> <6>
			<4! 2> <6> <6 4>2                        % m 64
			<7> <6- _!>
			<6 5>4 <4!> <7 5> <6 4>8
			    \bassFigureExtendersOn <6 3>
			<7 _!>4 <6 _!> \bassFigureExtendersOff
			    <6->2
			r1                                       % m 68

			% largo
			R2.*6
			<6>2.
			<6>                                      % m 76
			R2.*8
			r2 <6>4
			<7> <5> <6>                              % m 86
			R2.*3
			<6>4 <6> r
			r2.
			r                                        % m 92
			<7>
			r
			r
			r4 <6+> r                                % m 96
			r2.
			r
			r
			r4 <6> r                                 % m 100
			<_->2 r4
			<2> r2
			<6 4>8 <6 5> r2
			<7>4 <6> r                               % m 104
			r <7->2
			r4 <4> <3>
			r2.
			r                                        % m 108
			r4 <7> r
			<_+> r2
			<_->4 r2
			r2.                                      % m 112
			r
			<6>4 <6+> r
			r2.
			<7>4 <6> r                               % m 116
			R2.*4
			<2>2.
			r
			<6>
			<7>4 <6> <5>                             % m 124
			r2.
			<4 3>
			<6 5>
			r2.                                      % m 128
			<7>4 <6> r
			<7> <6> <5>
			r2.
			<4 3>                                    % m 132
			r
			r
		}
	}
	>>
}

\header {
	title    = "Sonata XI"
	subtitle = "Z 800"
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
