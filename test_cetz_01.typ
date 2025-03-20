#import "@preview/cetz:0.3.4"

= Package, drawing

A simple example:

#cetz.canvas({
  import cetz.draw: *
  circle( (0,0) )
  line( (0,0), (2,1) )
})


Some drawing again:

#cetz.canvas({
  import cetz.draw: *
  circle( (0,0), fill: red, stroke: blue )
  line( (0,0), (1,1), stroke: green )
})


#cetz.canvas({
  import cetz.draw: *

  // empty square with a black border
  rect( (-1,-1), (1,1) )

  // Sets global style to have a fill of red a stroke of blue
  set-style(stroke: blue, fill: red)
  circle((0,0))

  line((0,0), (-1,-1.5))

  // line green
  line((0,0), (1,1), stroke: green)
})


Using settings again, now with a dict

#cetz.canvas({
  import cetz.draw: *

  // using style dict
  set-style(stroke: (paint: red, thickness: 5pt))

  // draws a line with the global stroke
  line((0,0), (2,0))

  // blue line with a thickness of 5pt because dict update the style
  line((0,0), (2,2), stroke: (paint: blue)) // thickness is still 5pt

  // a yellow line with a thickness of 1pt because other values override
  // the style
  line((0,0), (0,2), stroke: yellow)

  line((0,0), (0,2), stroke: blue, thickness: 2pt)

  line((1,1), (3,2)) // using dict (red,5pt)

})


#cetz.canvas({
  import cetz.draw: *

  // Global fill and stroke
  set-style(
    fill: green,
    stroke: (thickness: 5pt),
    // Stroke and fill for only rectangles
    rect: (stroke: (dash: "dashed"), fill: blue),
  )

  rect((0,0), (1,1))
  
  circle((2.5, 0.5))
  
  rect((4, 0), (5, 1), stroke: (thickness: 1pt))
})


/*
#canvas(length: 1cm, {
  plot.plot(size: (8, 6),
    x-tick-step: none,
    x-ticks: ((-calc.pi, $-pi$), (0, $0$), (calc.pi, $pi$)),
    y-tick-step: 1,
    {
      plot.add(
        style: plot.palette.blue,
        domain: (-calc.pi, calc.pi), x => calc.sin(x * 1rad))
      plot.add(
        hypograph: true,
        style: plot.palette.blue,
        domain: (-calc.pi, calc.pi), x => calc.cos(x * 1rad))
      plot.add(
        hypograph: true,
        style: plot.palette.blue,
        domain: (-calc.pi, calc.pi), x => calc.cos((x + calc.pi) * 1rad))
    })
})
*/