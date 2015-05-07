m = require "mithril"

module.exports = {
  view: () ->

    # These anchor tags include the "href"" attribute inside square brackets.
    # Alternatively, The "href" could have been a member of the attributes
    # object, as "target" is here.
             
    return m(".logo", [

      m("a[href=https://github.com/pelonpelon/mithril-interactive-tutorial]",
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


