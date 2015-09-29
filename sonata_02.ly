% See README for license details
\version "2.18.2"

\include "config.ly"

adagio  = \markup { \bold Adagio }
allegro = \markup { \bold Allegro }
largo   = \markup { \bold Largo }
presto  = \markup { \bold Presto }
vivace  = \markup { \raise #0.7 { \halign #-0.7 \bold Vivace } }

vlone = \relative c'' {
	\clef treble \key bes \major \time 2/2
	r4 bes d f ~
	f8 f, bes8. c16 a2
	R1
	r8 f' d d16 es f8 bes, a a16 bes        % m 4
	c8 a f4 r2
	r2 r4 bes
	d f4. bes,8 es8. f16
	d4 r8 g e e16 f g4 ~                    % m 8
	g8 f f2 e4 ~
	e d2 c4
	b c4. d8 bes bes16 c
	d8 g, fis fis16 g a8 bes16 c bes8. a16  % m 12
	a4 r8 a' d, d16 e f8 f
	c c16 d es8 c g g' es es16 f
	g8 c, b b16 c d8 d16 es a,8. g16
	bes4. c8 f,4. g8                        % m 16
	g4 es' g bes ~
	bes8 bes, es8. f16 d8 f d d16 es
	f8 d bes4 r8 bes' g g16 a
	bes4 r8 es,8 d d16 es f4 ~              % m 20
	f es d c ~
	c b c g
	aes c4. g8 bes8. c16
	a2 r4 bes                               % m 24
	d f r8 g, aes8. bes16
	g4 f es d16 d' c bes
	a4 r8 bes a a16 bes c8 a
	f f' d d16 es f8 d bes8. c16            % m 28
	c4. bes8 bes2\fermata \bar "||"

	\time 3/2
	\mark \largo
	R1.*2
	bes'2 a2. g4                            % m 32
	f2. g4 aes2
	g f2. es4
	d2. es4 f2
	es d2. c4                               % m 36
	bes2. c4 d2
	es2 d2. c4
	c1.
	R1.*3
	f2 e2. d4
	c2. d4 es2                              % m 44
	d2 c2. bes4
	a2. b4 c2
	d1.
	g,2 a2. bes4                            % m 48
	c2. bes4 a2
	bes c2. d4
	es2 d2. es4
	f2. es4 d2                              % m 52
	c2. d4 es2
	d2 c2. bes4
	c2 c1

	\time 2/2
	\mark \presto
	d4 r r2                                 % m 56
	r2 f8 f16 f es8 f
	d f c f bes, f' a, f'
	g, e' f4 r f
	es d c bes                              % m 60
	a r r2
	r bes'8 bes16 bes aes8 bes
	g bes f bes es, bes' d, bes'
	c, a' bes4 r bes                        % m 64
	aes g f r
	R1
	g8 g16 g f8 g es aes d, g
	c, f4 e8 f2                             % m 68
	f8 f16 f es8 f d f d g
	c,4 c c c
	c c8.( bes32 c d4) r
	bes'8 bes16 bes a8 bes g bes f bes      % m 72
	es, bes' d, bes' c,2
	r2 r4 f8 f16 f
	es8 f d f c f bes, f'
	a, f' g, f' f, f' es d                  % m 76
	c2 d \bar "||"

	\time 2/2
	\mark \adagio
	bes4 bes8. g16 aes4. bes8
	g4. g8 a4 bes ~
	bes a bes2                              % m 80
	f'4 f8. d16 es4. f8
	d4. d8 e4 f ~
	f e f es ~
	es d2 c4 ~                              % m 84
	c b c2
	des2 c
	bes a
	ges' f                                  % m 88
	es d4 bes^\vivace
	d e f8 c f4 ~
	f es2 d4
	c2 bes                                  % m 92
	a8 f f'4 g a
	bes8 f bes2 a4
	g2 f4. f8
	e4 f fis g                              % m 96
	b, c2 bes8 a
	g4. g8 a4 bes
	e, f e2
	fis4 g2 fis4                            % m 100
	g2 f4 f
	g a bes8 f bes4 ~
	bes aes g g
	a b c8 g c4 ~                           % m 104
	c bes2 es,4
	f g aes8 f aes4 ~
	aes8 g c2 b4
	c8 d16 es f8 es d4 d                    % m 108
	es4 f g8 bes, es d
	c4 f2 e4
	fis4 g a8 d, a'4 ~
	a g2 f4                                 % m 112
	e es d2
	c4 c d es
	f8 d f4 es2
	d4 d es f                               % m 116
	g4. g8 a4 bes ~
	bes a bes2\fermata \bar "||"

	\time 6/8
	\mark \allegro
	f4 f8 g4 g8
	es4 d8 c8. f16 es8                      % m 120
	d4 bes'8 bes a a
	a g f f4 e8
	f4 a,8 bes4 bes16 a
	g4 d'8 es8. d16 c8                      % m 124
	bes4 bes8 c4 c8
	bes4 a8 g8. c16 bes8
	a4 f'8 f es d
	d c bes bes4 a8                         % m 128
	bes4 d,8 es4 f16 es
	d4 a'8 bes8. a16 g8
	f4 f8 g4 f8
	es4 d8 c8. f16 es8                      % m 132
	d4 bes'8 bes a a
	a g f f4 e8
	f4. r
	f'4 f8 g4 f8                            % m 136
	es4 d8 c8. f16 es8
	d4 d8 es4 d8
	c4 bes8 a4 g8
	fis4 g8 g4 fis8                         % m 140
	g4 f8 e4 d8
	cis4 a'8 a g f
	f e f f4 e8
	f4 d8 r4.                               % m 144
	r4 d'8 es d c
	c bes a g a bes
	a4 f'8 f es d
	d c bes bes4 a8                         % m 148
	f'4 f8 g4 f8
	es4 d8 c4 bes8
	a4 a'8 a g g
	g f es es d c                           % m 152
	d4 d8 c4 c8
	bes4 a8 g4.
	f4. r
	R2.                                     % m 156
	f'4 f8 g4 g8
	es4 es8 c8. f16 es8
	d4. es,4 es8
	f4 es8 d4.                              % m 160
	d'4 d8 es4 d8
	c4 bes8 a8. f'16 es8
	d4 c8 c4 bes8
	bes4. ~ bes8.\p f'16 es8                % m 164
	d4 c8 c4 bes8

	\time 2/2
	bes4 r8 f' g f es d
	c4 f8 es d es es d
	d c c bes a4 bes ~                      % m 168
	bes a bes2\fermata \bar "|."
}

vltwo = \relative c' {
	\clef treble \key bes \major \time 2/2
	R1
	r2 r4 f
	a c4. c,8 es8. f16
	d2 r                              % m 4
	r8 f' d d16 es f8 c a bes16 c
	d8 bes bes4 d f ~
	f8 f, aes8. bes16 g4 c ~
	c b c g                           % m 8
	a c4. g8 bes8. c16
	a4. g16 f e4 a ~
	a g d2
	r4 a' fis d ~                     % m 12
	d8 d' a8. g16 bes4. bes8
	a8 a16 bes c8 f, e e16 f g8 es
	c c16 d es4 d8 g4 fis8
	g8 d es2 d4                       % m 16
	es2 r
	r4 bes' d f ~
	f8 f, aes8. bes16 g4 r
	r8 bes' g g16 a bes8 f d es16 f   % m 20
	g2 f4 es
	d d es g ~
	g8 c,8 f4. g8 e4
	f4 r bes, d                       % m 24
	f4. c8 es8. f16 d4 ~
	d8 c4 bes a16 bes bes8._[( a32 bes]
	c8) f d d16 es f8 c a a16 bes
	c8 a f f16 g a8 f bes4 ~          % m 28
	bes a bes2\fermata \bar "||"

	\time 3/2    % largo
	R1.*4                             % m 32
	es2 d2. c4
	bes2. c4 d2
	c bes2. a4                        % m 36
	g2. a4 bes2
	c1 bes2
	a1.
	c2 bes2. a4                       % m 40
	g2. a4 bes2
	a2 g1
	f2 g1
	a2. bes4 c2                       % m 44
	bes'2 a2. g4
	f2. g4 aes2
	g2 f1
	e2. f4 g2                         % m 48
	f es4( d2) es4
	d1.
	bes2 a2. g4
	f2. g4 aes2                       % m 52
	g1 g2
	a2. a4 bes2 ~
	bes a2. bes4

	\time 2/2      % presto
	bes4 bes8 bes16 bes a8 bes g bes  % m 56
	f bes es, bes' d, bes' c, a'
	bes4 a g f
	c f r2
	R1                                % m 60
	f'8 f16 f es8 f d f c f
	bes, f' aes, f' g, es'4 d8
	es4 d c bes
	f d r2                            % m 64
	r2 f'8 f16 f es8 f
	d g c, f bes, es a, d
	g, c4 b8 c2
	c8 c16 c bes8 c a d g, c          % m 68
	f,8 bes4 a8 bes4 r
	R1
	r2 f'8 f16 f es8 f
	d d c d es4 d                     % m 72
	c bes a2
	f'8 f16 f es8 f d f c d
	bes4 a g f
	es d c8 a' bes4 ~                 % m 76
	bes a bes2 \bar "||"

	\time 2/2            % adagio
	g4 g8. es16 f4. g8
	es4 bes c d
	es4. f8 d2                        % m 80
	d'4 d8. bes16 c4. d8
	bes4 f g a
	bes4. c8 a2
	aes g                             % m 84
	f e4 aes ~
	aes g2 f4 ~
	f e f des' ~
	des c2 bes4 ~                     % m 88
	bes a bes r
	r2 r4 f
	g a bes8 f bes4 ~
	bes aes2 g4                       % m 92
	f8 a bes2 c4
	d e f8 c f4 ~
	f es2 d4
	c2. b8 c                          % m 96
	d4 es d2 ~
	d8 e f4 fis g
	cis, d2 c4 ~
	c bes a2                          % m 100
	g4 bes c d
	es8 c es2 d4
	c c d es
	f8 d f2 es4                       % m 104
	d2 c4 c
	d es2 d4 ~
	d r8 c f4 g
	aes8 es aes2 g8 f                 % m 108
	g4 aes bes8 g bes4 ~
	bes aes g2
	d2. r8 a
	bes4 c d8 g, d'4 ~                % m 112
	d c2 bes4 ~
	bes a bes c
	d8 bes d2 c4 ~
	c bes c d                         % m 116
	es8 bes es2 d4
	c2 d\fermata \bar "||"

	\time 6/8            % allegro
	R2.*2
	bes4 bes8 c4 c8
	bes4 a8 g8. c16 bes8
	a4 f'8 f es d
	d c bes bes4 a8                   % m 124
	bes4 d,8 es4 f16 es
	d4 a'8 bes8. a16 g8
	f'4 f8 g4 f8
	es4 d8 c8. f16 es8                % m 128
	d4 bes'8 bes a a
	a g f f4 e8
	f4 a,8 bes4 bes16 a
	g4 d'8 es8. d16 c8                % m 132
	bes4 bes8 c4 c8
	bes4 a8 g8. c16 bes8
	a4. c4 c8
	d4 c8 bes4 a8                     % m 136
	g8. a16 bes8 c4 bes8
	a8. g16 f8 bes4 a8
	g4 f8 es8. es'16 d8
	c4 bes8 a4 a8                     % m 140
	bes4 a8 g4 f8
	e4 f8 f e d
	d cis d d4 cis8
	d4 d'8 d c bes                    % m 144
	bes a g g f4
	e4 f8 f4 e8
	f4. r
	r4 f'8 f es es                    % m 148
	es d c c4 b8
	c g g a4 g8
	fis4 e8 d4 d'8
	d c bes a4 a'8                    % m 152
	a g f e f c
	d e f bes,4 c8
	a4. bes4 bes8
	c4 bes8 a4 g8                     % m 156
	f8. bes16 a8 g4 g8
	a4 bes8 bes4 a8
	bes4. r
	c4 c8 d4 c8                       % m 160
	bes4 a8 g8. c16 bes8
	a4 g8 f8. d'16 c8
	bes4 bes8 a4 bes8
	bes4. ~ bes8.\p d16 c8            % m 164
	bes4 bes8 a4 bes8

	\time 2/2
	bes4 r8 d es d c bes
	a4 d8 c bes c c bes
	bes a a g f es d4                 % m 168
	c2 d\fermata \bar "|."
}

basso = \relative c {
	\clef bass \key bes \major \time 2/2
	R1*3
	r4 bes d f ~                       % m 4
	f8 f, bes8. c16 a2
	r8 bes' g g16 a bes8 f d d16 es
	f8 d bes4 es c
	g'2 r8 g e d16 e                   % m 8
	f8 c a a16 bes c2
	cis8 a' f f16 g a8 e c c16 d
	e8 b e, e' fis4 g8 g,
	bes4 d4. d,8 g8. a16               % m 12
	fis2 r8 g' d d16 e
	f8 c a a16 bes c4 r8 c'
	es, es16 f g8 c, b8 b16 c d4
	g,4. aes8 bes2                     % m 16
	es, es'
	g bes ~
	bes4 bes, es4. f8
	d4 c bes2                          % m 20
	r8 bes'8 g g16 aes bes8 g es es16 f
	g8 d g, g'16 f es8 d e c
	f4 aes c4. c,8
	f4 f g bes ~                       % m 24
	bes8 f aes8. bes16 g4 f
	es d c bes
	f'1
	a,4 bes8 f d4 d8 es                % m 28
	f2 bes\fermata \bar "||"

	\time 3/2      % largo
	bes'2 a2. g4
	f2. g4 aes2
	g f2. es4                          % m 32
	d2. c4 bes2
	es a,1
	bes1 b2
	c fis,1                            % m 36
	g1 g'2
	a bes bes,
	f'1. ~
	f1.                                % m 40
	f2 e2. d4
	c2. d4 es2
	d c2. bes4
	a2. g4 f2                          % m 44
	bes c1
	d c2
	b2. a4 g2
	c1 bes2                            % m 48
	a1 f2
	bes2. bes'4 aes2
	g2 f2. es4
	d2. c4 bes2                        % m 52
	es2. d4 c2
	f2. f4 g2
	es f f,

	\time 2/2            % presto
	bes4 r r2                          % m 56
	R1*2
	r4 f'8 f16 f es8 f d f
	c f bes, f' a, f' g, e'            % m 60
	f2 bes4 aes
	g f es bes
	es r r2
	r4 bes'8 bes16 bes aes8 bes g bes  % m 64
	f bes es, bes' d, bes' c, a'
	bes4 a g f
	es d c bes
	aes g f es                         % m 68
	d c' bes bes'8 bes16 bes
	a8 bes g bes f bes es, bes'
	d, bes' c, a' bes2
	bes, es                            % m 72
	es, f'8 f16 f es8 f
	d bes' c, a' bes bes16 bes a8 bes
	g4 f es d
	c bes a8 f g es                    % m 76
	f2 bes \bar "||"

	\time 2/2            % adagio
	es4 es8. es16 es4 d
	es4. es8 es4 d
	c f bes,2                          % m 80
	bes'4 bes8. bes16 bes4 a
	bes4. bes8 bes4 a
	g c f,2 ~
	f es                               % m 84
	d c
	bes aes
	g f
	es' des                            % m 88
	c bes
	R1
	r2 r4 bes4          % vivace
	c d es8 bes es4 ~                  % m 92
	es d c2
	bes8 a g4 f f'
	g a bes8 f bes4 ~
	bes a aes2                         % m 96
	g4 f fis g
	b,2 bes
	a4. g8 a2
	d4 bes c d                         % m 100
	es8 bes es2 d4
	c c d es
	f8 c f2 es4
	d2 c4 c                            % m 104
	f g aes8 es aes4 ~
	aes g f2
	es d
	c4 aes bes2 ~                      % m 108
	bes4 aes g4. g'8
	aes4 bes c8 g c4 ~
	c bes fis2
	g4 es b2                           % m 112
	c4 c d es
	f8 c f2 es4
	d d g a
	bes8 f bes aes g4 f                % m 116
	es4. c8 f4 bes,
	f2 bes\fermata \bar "||"

	\time 6/8           % allegro
	R2.*4                              % m 120
	f'4 f8 g4 g8
	es4 d8 c8. f16 es8                 % m 124
	d4 bes'8 bes a a
	a g f f4 e8
	f4 a,8 bes4 bes16 a
	g4 d'8 es8. d16 c8                 % m 128
	bes4 bes8 c4 c8
	bes4 a8 g8. c16 bes8
	a4 f'8 f es d
	d c bes bes4 a8                    % m 132
	bes4 d,8 es4 f16 es
	d4 a'8 bes c4
	f,4. r
	r bes'4 bes8                       % m 136
	c4 bes8 a4 g8
	f8. bes16 a8 g4 f8
	es4 d8 c4 bes8
	a4 g8 d'4 d,8                      % m 140
	g4. ~ g
	a bes
	g a
	d4 d8 es4 d8                       % m 144
	c4 bes8 a4.
	g4 f8 bes c4
	f4 f8 g4 f8
	es4 d8 c4.                         % m 148
	bes4 aes8 g4.
	c c'4 c8
	d4 c8 bes4.
	a4 g8 f4.                          % m 152
	bes,4 bes'8 bes a a
	a g f f4 e8
	f4 f8 g4 f8
	es4 d8 c8. f16 es8                 % m 156
	d4 bes8 es4 d8
	c4 bes8 f'4.
	bes4 bes8 c4 bes8
	a4 g8 f8. bes16 a8                 % m 160
	g4 f8 es4.
	e4. f4 d8
	g4 es8 f4 f,8
	bes4 f'8 g4\p a8                   % m 164
	bes4 es,8 f4 f,8

	\time 2/2
	bes4 r8 bes' es, f g es
	f4 d g c,
	d es f2                            % m 168
	f, bes\fermata \bar "|."
}

continuo = {
        <<
	\new Voice \relative c' {
		\clef bass \key bes \major \time 2/2
		bes2. a4
		g2 f
		f,4. g8 a2
		bes d4 f ~                   % m 4
		f8 f, bes4 a f
		bes8 bes' g es bes2 ~
		bes es4 c
		g' g, c2                     % m 8
		a4 f c'2
		cis4 d a2
		e4. e'8 fis4 g8 g,
		bes4 d4. d,8 g4              % m 12
		fis2 g4 d'
		f8 c a4 c2
		es4 g8 c, b8. c16 d8 d,
		g4. aes8 bes2                % m 16
		es, es'
		g bes
		d, es
		d4 c bes2 ~                  % m 20
		bes8 bes' g es bes b c4
		g2 c4 e
		f aes c c,
		f f g bes ~                  % m 24
		bes8 f aes4 g f
		es d c bes
		f'2 ~ f
		a,4 bes8 f d4. es8           % m 28
		f2 bes\fermata \bar "||"
	
		\time 3/2        % largo
		bes'2 a2. g4
		f2. g4 aes2
		g f2. es4                    % m 32
		d2. c4 bes2
		es a,1
		bes1 b2
		c fis,1                      % m 36
		g1 g'2
		a bes bes,
		f'1. ~
		f1. ~                        % m 40
		f2 e2. d4
		c2. d4 es2
		d c2. bes4
		a2. g4 f2                    % m 44
		bes c1
		d c2
		b2 ~ b g
		c1 bes2                      % m 48
		a1 f2
		bes' ~ bes aes
		g f2. es4
		d2. c4 bes2                  % m 52
		es2. d4 c2
		f1 g2
		es f f,
	
		\time 2/2
		bes4 \clef alto bes'' a g    % m 56
		f es d c
		bes a' g f
		c \clef bass f, es d
		c bes a g                    % m 60
		f f' bes aes
		g f es bes
		es2 ~ es
		f4 bes aes g                 % m 64
		f es d c
		bes a' g f
		es d c bes
		aes g f es                   % m 68
		d c' bes bes'
		a g f es
		d c bes2 ~
		bes es ~                     % m 72
		es f4 es
		d c bes a'
		g f es d
		c bes a8 f g es              % m 76
		f2 bes \bar "||"
	
		es2 ~ es4 d       % adagio
		es2 ~ es4 d
		c f bes,2                    % m 80
		bes' ~ bes4 a
		bes2 ~ bes4 a
		g c f,2 ~
		f es                         % m 84
		d c
		bes aes
		g f
		es' des                      % m 88
	
		c bes4 \clef soprano bes'' % vivace
		d e f8 c
		<<
		{ \voiceOne
			        f4 ~
			f4 es ~ es
		}
		\new Voice { \voiceTwo
			        f,4
			\autoBeamOff
			g a bes8[ f]
			\autoBeamOn
		}
		>> \oneVoice
		    \clef bass bes,,4
		c d es8 bes es4 ~                       % m 92
		es d c2
		bes4 g f f'
		g a bes8 f bes4 ~
		bes a aes2                              % m 96
		g4 f fis g
		b,2 bes
		a4. g8 a2
		d4 bes c d                              % m 100
		es8 bes es2 d4
		c2 d4 es
		f8 c f4 ~ f es
		d2 c4 c                                 % m 104
		f g aes8 es aes4 ~
		aes g f2
		es d
		c4 aes bes2 ~                           % m 108
		bes4 aes g g'
		aes bes c8 g c4 ~
		c bes fis2
		g4 es b2                                % m 112
		c d4 es
		f8 c f4 ~ f es
		d2 g4 a
		bes8 f bes a g4 f                       % m 116
		es4. c8 f4 bes,
		f2 bes\fermata \bar "||"
	
		% allegro
		\clef soprano \time 6/8 f'''4 f8 g4 f8
		es4 d8 c8. f16 es8                      % m 120
		bes4 bes8 c4 c8
		bes4 a8 g4 c,8
		\clef bass f,4 f8 g4 f8
		es4 d8 c4 f,8                           % m 124
		bes4 bes'8 ~ bes a4 ~
		a8 g f ~ f4 e8
		f4 a,8 bes4 bes16 a
		g4 d'8 es8. d16 c8                      % m 128
		bes4 bes8 c4 c8
		bes4 a8 g4.
		a4 f'8 ~ f es d ~
		d c bes bes4 a8                         % m 132
		bes4 d,8 es4 f16 es
		d4 a'8 bes c4
		f,4. ~ f
		bes bes'                                % m 136
		c4 bes8 a4 g8
		f8. bes16 a8 g4 f8
		es4 d8 c4 bes8
		a4 g8 d'4 d,8                           % m 140
		g4. ~ g
		a bes
		g a
		d es4 d8                                % m 144
		c4 bes8 a4.
		g4 f8 bes c4
		f4. g4 f8
		es4 d8 c4.                              % m 148
		bes4 aes8 g4.
		c c'
		d4 c8 bes4.
		a4 g8 f4.                               % m 152
		bes,4 bes'8 ~ bes a4 ~
		a8 g f ~ f4 e8
		f4. g4 f8
		es4 d8 c8. f16 es8                      % m 156
		d4 bes8 es4 d8
		c4 bes8 f'4.
		bes c4 bes8
		a4 g8 f8. bes16 a8                      % m 160
		g4 f8 es4.
		e4. f4 d8
		g4 es8 f4 f,8
		bes4 f'8 g4\p a8                        % m 164
		bes4 es,8 f4 f,8
	
		\time 2/2 bes4 r8 bes' es, f g es
		f4 d g c,
		d es f2                                 % m 168
		f, bes\fermata \bar "|."
	}

	\new FiguredBass {
		\figuremode {
			<_>1
			<7>4 <6+> <_>2
			<_>1
			<_>2 <6>              % m 4
			<_>1
			<_>2 <6>
			<_> <9>
			<4>4 <3+> <_>2        % m 8
			<7>2 <4>4 <3+>
			<6 5>2 <4>4 <3>
			<5+ 4> <6 3> <6 5>2
			<6>1                  % m 12
			<_>2. <6>4
			<_>2 <_+>4 <_->
			<6> <6> r2
			<5>4 <6> <4> <3>      % m 16
			<_>1
			<6>2 <_>
			<6 5->1
			<6>4 <5>8 <6> <_>2    % m 20
			<6 5>1
			<4>4 <3+> <_>2
			<9 3->1
			<_>1                  % m 24
			<_>4 <6> <6> <6>
			<7>8 <6> <7>8 <6>
			    <7>8 <6> <_>4
			<5 3>4 <6 4> <_>2
			<_> <5>4 <6>          % m 28
			<_>1
			<_>1. <_>1. <_>1.     % m 32
			<_>1 <7->2
			<6 4> <5 3>1
			<_>1.
			<_>2 <6 4>2. <5 3>4   % m 36
			<_>1.
			<_>2 <9>1
			<_>1.
			<_>1.                 % m 40
			<2>1.
			<6>2 <5>1
			<_>1.
			<_>1.                 % m 44
			<_>2 <6>2. <5>4
			<_>1 <6->2
			<6>2 <5>1
			<_+ 6>2 <5> <_>       % m 48
			<_>1.
			<_>2 <2>1
			<6>2 <6> <_>
			<_>1.                 % m 52
			<6>1.
			<6>2 <5> <_>
			<6 5> <_>1

			<_>1       % presto     m 56
			<_> <_> <_> <_>       % m 60
			<_>2. <6>4
			<_> <_-> <_>2
			<_> <6>4 <5>
			<_>1                  % m 64
			<_>
			<_>4 <7>8 <6> <7> <6>
			    <7> <6>
			<7> <6> <7> <6> <7>
			    <6> <7> <6>
			<7> <6> <7> <6+> <5>
			    <6> <7> <6>       % m 68
			<7> <6> <7> <6> <_>2
			<_>1
			<_>
			<_>                   % m 72
			<6>4 <5> <_>2
			<7>4 <6> <_>2
			<6>4 <6> <6> <6>
			<6> <6> <_>2          % m 76
			<_>1 \bar "||"

			<_>2 <4- 2>4 <5->
			<_>2 <4 2>2
			<7>4 <7> <_>2         % m 80
			<_> <2>2
			<_> <4+ 2>
			<7>4 <7> <8>
			    \bassFigureExtendersOn <7->
			<7- _-> \bassFigureExtendersOff
			    <6 3> <7> <6>     % m 84
			<7> <6+> <5 _+> <6->
			<7> <6> <7> <6>
			<7> <6+> <5> <6->
			<7 _-> <6> <_>2       % m 88
			<7>4 <6+>2.

			<_>1    % vivace
			<_>
			<7>4 <5-> <4> <3>     % m 92
			<2>2 <7>4 <6>
			<_> <6+> <4> <3>
			<7> <5> <4>2
			<2> <6+>4 <7>         % m 96
			<_+> <7> <6 5>2
			<_> <5+ 7>4 <6 6>
			<_+> <4> <4> <3->
			<7+>2 <6 5>           % m 100
			<_>4 <3> <2> <_>4
			<5> <6> <9> <7>
			<4>2 <2>
			<7>4 <6+>2.           % m 104
			<6 5>2 <9>
			<2> <7 _->4 <6->
			<7> <6> <7> <6+>
			<6->2 <7>4 <6>8 <5>   % m 108
			<6 4>2. <6>8 <5>
			<9>4 <7-> <4> <3+>
			<4+ 2> <6> <_>2
			<9>4 <6> <_>2         % m 112
			<9 _+> <8 _->4 <7>
			<_>2 <4>4 <6>
			<_>2 <6 5>
			<9>2 <6>4 <6>         % m 116
			<_>2 <7>
			<_>1

			% allegro
			<_>2. <_>             % m 120
			<_>4. <7>8 <6>4
			<7>8 <6> <6> <7>4.
			<_> <7>8 <6>4
			<7>8 <6> <6> <7>4.    % m 124
			<4>4. <2>
			<2> <2>
			<_> \bassFigureExtendersOn
			    <6 5>8 <6 4> \bassFigureExtendersOff
			    <5 3>
			<6 5> \bassFigureExtendersOn
			    <6 4> \bassFigureExtendersOff
			    <6> <6 5>4.       % m 128
			<_>4. <7>8 <6>4
			<7>8 <6>4 <7> <6+>8
			<6>4. <2>
			<2> <2>               % m 132
			<_> <6 5>
			<6 5>8 \bassFigureExtendersOn
			    <6 4> \bassFigureExtendersOff
			    <6> <_>4.
			<_>2.
			<_>4. <6>4 <5>8       % m 136
			<_>4. <6>4 <6>8
			<6>4. <6>4 <6>8
			<6>4 <6>8 <6>4 <6>8
			<6+>4. <_>            % m 140
			<_> <6+>4 <5>8
			<_+>4. <7>8 <6> <5>
			<7>4. <_>
			<_> <7>8 <6>4         % m 144
			<7>8 <6>4 <7>8 <6>4
			<6+>4. <6 5>
			<_>4. <7>8 <6>4
			<7>8 <6>4 <7>8 <6>4   % m 148
			<4>8 <3>4 <4>4 <3+>8
			<_>4. <6>4 <5>8
			<_+>4. <7>8 <6>4
			<7>8 <6> <6> <7>4.    % m 152
			<7>8 <6>4 <2>4.
			<2> <2>
			<_>2.
			<6>4 <6>8 <6>4.       % m 156
			<_>2.
			<6>
			<_>
			<6>4 <6>8 <6>4.       % m 160
			<_>2.
			<6 4>4 <5 3>8 <_>4.
			<_>2. <_>             % m 164
			<_> <_>1 <_> <_>      % m 168
			<_>
		}
	}
	>>
}



\header {
	title    = "Sonata II"
	subtitle = "Z 791"
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
