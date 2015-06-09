# M.I.T. - Lesson 3 - Passing Data to the View

m = require "mithril"

# The view takes 2 arguments. The first is from the return value
# of the controller (ctrl). This happens automatically.
# The second argument comes from
# m.component(Header, {args}) in app.coffee

module.exports = {
  view: (ctrl, args) ->
    
# Set our title and subtitle from 'args' or set a default.
# This is how we are able to everride defaults.

    title = if args and args.title
    then args.title
    else "A silly Lesson"
    
    subtitle = if args and args.subtitle
    then args.subtitle
    else "about silliness"

# Style can be placed in the attributes object.
# The style object is just javascript so camelCasing is required.
# Hover over the header to see the "title" tooltip.

    return m(".header",
      
      {
        title: "Hello from Header.coffee",
        style: {
          backgroundColor: "wheat",
          color: "black"
        }
      },

      [
        m("h1.title", title ),
        m("h2.subtitle", subtitle)
      ]
    )
}


# m("tag", {attributes}, [children])