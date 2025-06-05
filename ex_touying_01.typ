#import "@preview/touying:0.6.1": *
#import "@preview/mitex:0.2.5": *
#import themes.university: *

#show: university-theme.with(
  aspect-ratio: "16-9",
  align: horizon,
  // config-common(handout: true),
  config-info(
    title: [Example Presentation by eFeFeR],
    subtitle: [Just Trying Stuffs],
    author: [Fadjar Fathurrahman],
    date: datetime.today(),
    institution: [Institut Teknologi Bandung],
    logo: emoji.school,
  ),
)

#set text(
  font: "Cambria",
  size: 20pt
)

#set par(
  justify: true
)

#title-slide()

= The First Section

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


= Test Equations

== Using Mitex

Some equations:
#mitex(`
  \newcommand{\f}[2]{#1f(#2)}
  \f\relax{x} = \int_{-\infty}^\infty
    \f\hat\xi\,e^{2 \pi i \xi x}
    \,d\xi
`)

Equation again:
#mitex(`
\int_{0}^{\infty} f(t)\,e^{-\mathrm{i}st}\,\mathrm{d}t
`)

Equation:
#mitex(`
c_{i} = \braket{ \phi_{i}(\mathbf{r}) | \Psi(\mathbf{r}) }
`)


Equation:
#mitex(`
\begin{align}
f(x) & = 2x + 2y \\
     & = 2x + 2(z + 1) \\
     & = 2x + 2z + 2 \\
     & = 2(x + z + 1)
\end{align}
`)



= Test Pause

== Text with Pause

Hello, #pause I am #pause eFeFeR

#pause
Nice to meet you.

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


= Test Columns

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

== Again with column

#slide(composer: (2fr, 1fr))[
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

