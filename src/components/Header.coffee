m = require "mithril"

# The view takes 2 arguments. The first is from the return value
# of the controller. This happens automatically.
# The second argument comes from
# m.component(Header, {args}) in app.coffee

module.exports = {
  view: (ctrl, args) ->
    
# set our title and subtitle from 'args' or set a default.

    title = if args and args.title then args.title else "A silly Lesson"
    subtitle = if args and args.subtitle then args.subtitle else "about silliness"

# Like 'title' and 'href', style can be placed in the attributes object
# The style object is just javascript so camelCasing is required.

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

