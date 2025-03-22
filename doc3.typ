#let title = [
  A fluid dynamic model for glacier flow
]

#set page(
  paper: "a4",
  header: align(right+horizon, title),
  numbering: "1",
  columns: 2
)


#set par(justify: true)

#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
)[

  // title
  #align(center, text(17pt)[
    *A fluid dynamic model for glacier flow*
  ])

  #grid(
    columns: (1fr, 1fr),
    [
      Therese Tungsten \
      Artos Institute \
      #link("mailto:tung@artos.edu")
    ],
    [
      Dr. John Doe \
      Artos Institute \
      #link("mailto:doe@artos.edu")
    ]
  )

  #par(justify: false)[
    *Abstract* \
    #lorem(80)
  ]
]

//#set heading(numbering: "1.a.1")

/*
#show heading: it => [
  #set align(center)
  #set text(13pt, weight: "regular")
  #block(smallcaps(it.body))
]
*/

// different style for subheading
#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set text(13pt, weight: "regular")
  #smallcaps(it.body)
]

#show heading.where(
  level: 2
): it => text(
  size: 11pt,
  weight: "regular",
  style: "italic",
  it.body + [.]
)

// body text

= Introduction
#lorem(80)

== Motivation
#lorem(50)

== Problem statement
#lorem(50)

= Methodology
#lorem(200)

= Results
#lorem(100)




