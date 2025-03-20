#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Learning Slydst",
  subtitle: "A subtitle",
  date: none,
  authors: ("Fadjar Fathurrahman",),
  layout: "medium",
  ratio: 16/9,
  title-color: none,
)

== First slide

Hello from efefer

#figure(
  image("images/kucing1.png", height: 30%),
  caption: "A beautiful cat"
)

// vertical space
//#v(1fr)
#v(0.5cm)

#lorem(20)

== Second slide

Hello again

#lorem(20)

== Why?

New slide 3

$ alpha + beta $

==

Slide without title?

==

New slide

#figure(
  image("images/kucing1.png", height: 50%),
  caption: "A beautiful cat again"
)

$ "pecahan" = ("pembilang")/("penyebut") $

$ "fraction" = ("nominator")/("denominator") $

== Example grid

// We use `rect` to emphasize the area of cells.
#set rect(
  inset: 8pt,
  fill: rgb("e4e5ea"),
  width: 100%,
)

#grid(
  columns: (60pt, 1fr, 2fr),
  rows: (auto, 60pt),
  gutter: 3pt,
  rect[Fixed width, auto height],
  rect[1/3 of the remains],
  rect[2/3 of the remains],
  rect(height: 100%)[Fixed height],
  grid.cell(
    colspan: 2,
    image("images/kucing1.png"),
  ),
)
