# M.I.T. - Lesson 3 - Passing Data to the View

m = require "mithril"

module.exports = {
  view: () ->
             
    return m(".logo", [

      m("a[href=https://github.com/pelonpelon/mithril-interactive-tutorial/tree/cs-lesson3]",
        { target: "_blank" },
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


