// In Typst, templates are functions in which you can wrap your whole document


// a function: convert its argument term to ✨ #term ✨
//#let amazed(term) = box[✨ #term ✨]
// We also put the whole thing in a box so that the term we are amazed by
// cannot be separated from its sparkles by a line break.

#let amazed(term, color: blue) = {
  text(color, box[✨ #term ✨])
}

You are #amazed[beautiful]!

You are #amazed[beautiful]!
I am #amazed(color: purple)[amazed]!

// using default color
You are #amazed[beautiful]!

// using a specified color
I am #amazed(color: purple)[amazed]!

// But wrapping a whole document in a giant function call would be cumbersome!
// Instead, we can use an "everything" show rule to achieve the same with cleaner code.

#show: amazed
I choose to focus on the good in my life and let go of any
negative thoughts or beliefs. In fact, I am amazing!. Again amazing.

