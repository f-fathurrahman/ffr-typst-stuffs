= Introduction

This is an example document written in Typst

= A new section

This is a new section

== A subsection

This is a list
+ The climate
  - Temperature
  - Precipitation
+ The topography
+ The geology

List again:
- Some list
  + again
- Some list
  - List 2

Enumerate list:
+ One
  + One point one
+ Two
+ Three


= An example image

Ini adalah contoh gambar.

#image("images/kucing1.png", width: 20%)

Gambar dengan caption

#figure(
  image("images/kucing1.png", width: 70%),
  caption: [
    _Kucing_ adalah hewan yang lucu.
  ]
) <label-kucing1>

Teks ini merujuk ke gambar @label-kucing1.


= Test equations

An inline equation: $Q = rho A v + C$.

Display equation:

$ Q  = rho A v + C $

$ Q = rho A v + "time offset" $

$ 7.32 beta + sum_(i=0)^nabla Q_i / 2 $

$ 1/2 + 1/(32x) + 1/(Gamma alpha lambda) $

Inserting a column vector
$ v:= vec(x_1, x_2, x_3) $

$ v:= vec(delim: "[", x_1, x_2, x_3) $

Let $cal(H)$ be a Hilbert space of dimension $n$.

Some symbol:

$ a arrow b $

$ a arrow.squiggly b $