m = require "mithril"

module.exports = {
  view: (ctrl, args) ->
    
    title = if args and args.title
    then args.title
    else "A silly Lesson"
    
    subtitle = if args and args.subtitle
    then args.subtitle
    else "about silliness"

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

