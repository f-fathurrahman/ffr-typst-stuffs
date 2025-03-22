// we used a curly-braced code block instead of a content block.
// This way, we don't need to prefix all set rules and function calls with a #.
// In exchange, we cannot write markup directly in the code block anymore.


#let conf(title, doc) = {
  set page(
    paper: "a4",
    header: align(right+horizon, title),
    numbering: "1",
    columns: 2
  )
  set par(justify: true)
  set text(
    font: "Libertinus Serif",
    size: 11pt,
  )

  // different style for subheading
  show heading.where(
  level: 1
  ): it => block(width: 100%)[
    #set align(center)
    #set text(13pt, weight: "regular")
    #smallcaps(it.body)
  ]

  show heading.where(
    level: 2
  ): it => text(
    size: 11pt,
    weight: "regular",
    style: "italic",
    it.body + [.]
  )

  doc
}


#show: doc => conf(
  [Paper title],
  doc,
)

= Introduction
#lorem(90)
