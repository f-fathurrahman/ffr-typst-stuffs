#let title = [
  A fluid dynamic model for glacier flow
]

#set page(
  paper: "a4",
  header: align(right+horizon, title),
  numbering: "1",
)
#set par(justify: true)
#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

// title
#align(center, text(17pt)[
  *A fluid dynamic model for glacier flow*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)


// abstract
#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]

#set heading(numbering: "1.a.1")

= Introduction
// body text
#lorem(600)

= Methodology
#lorem(50)

= Results
#lorem(100)




