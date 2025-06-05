#import "@preview/touying:0.6.1": *
#import themes.simple: *

#show: simple-theme.with(aspect-ratio: "16-9")

#set text(
  font: "Cambria",
  size: 20pt
)

#set par(
  justify: true
)

= An Example Presentation by eFeFeR

== First Slide

Hello, Touying!

#pause

Hello, Typst!

#pause

Again from efefer

== Second Slide

Hello

From 

efefer

== Math Equation Animation

Equation with `pause`:

$
  f(x) &= pause x^2 + 2x + 1 \
  &= pause (x + 1)^2 \
$

#meanwhile

Here, #pause we have the expression of $f(x)$.

#pause

By factorizing, we can obtain this result.


== Side-by-side

#slide(composer: (1fr, 1fr))[
  #text(size: 14pt)[
    #lorem(40)
  ]

  #text(size: 16pt, blue)[
    #lorem(40)
  ]

][
  Second column.
  #lorem(40)
]

