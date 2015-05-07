m = require "mithril"

# We saw in the pevious lesson
# the HTML title attribute in the
# attribute object, the second argument of m()
# m("tag", { attributes }, children)
# Mithril also offers a style attribute.
# Style is a key, its value is an object similar to CSS.
# We're working in javascript so keys must be in camelCase.

module.exports = {
  view: (ctrl, args) ->
    title = if args and args.title then args.title else "A silly Lesson"
    subtitle = if args and args.subtitle then args.subtitle else "about silliness"
    return m(".header", {
      style: {
        backgroundColor: "wheat",
        color: "black"
      }},
    [
      m("h1.title", title ),
      m("h2.subtitle", subtitle)
    ])
}

