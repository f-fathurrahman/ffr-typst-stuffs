#import "@preview/slydst:0.1.4": *
#import "@preview/codelst:2.0.2": sourcecode


#show: slides.with(
  title: "Learning Slydst",
  subtitle: "A subtitle",
  date: none,
  authors: ("Fadjar Fathurrahman",),
  layout: "medium",
  ratio: 16/9,
  title-color: none,
)

#set par(justify: true)

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


== Test source code

#text(font: "JuliaMono", size: 11pt)[
#sourcecode[```julia
mutable struct MyStruct
  Γ::Float64
  Δ::Float64
  x::ComplexF64
  v::Vector{Int64}
end

function my_func()
  return α + β
end
```]
]

Above is an example of Julia source code.


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


== Example grid again

#grid(
  columns: (1fr, 1fr),
  rows: (1fr),
  gutter: 10pt,
  [
    #lorem(80)

    This is a text again

    $alpha + beta$

    Display equation
    $ alpha + Gamma $
  ],
  [
    #lorem(20)
    #figure(
      image("images/kucing1.png", height: 30%),
      caption: "A beautiful cat"
    )
  ]
)

== Mixed paragraph setting

#lorem(50)

#text(font: "Liberation Sans", size: 11pt)[
  #lorem(30)
]

#set par(justify: false)
#lorem(30)

An equation:
$ sin(2 pi x) cos((2 pi x)/L) $

