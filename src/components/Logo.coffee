m = require "mithril"

# We've added a model to our Logo
# Now the M.I.T. link can be customized 

model = {
  baseUrl: "https://github.com/pelonpelon/mithril-interactive-tutorial/tree/",
  lesson: "cs-lesson1"
}

module.exports = {

  view: (ctrl, args) ->

    lesson = if args and args.lesson
    then args.lesson
    else model.lesson

    return m(".logo", [

      m("a",
        {
          href: model.baseUrl + lesson
          target: "_blank"
        },
        m("span.mit", "M.I.T.")),

      m("a[href=http://mithril.js.org]",
        { target: "_blank" }, 
        [
          m("span.icon", "○"), 
          m("span.mithril", "Mithril")
        ]
      )

    ])
}


