m = require "mithril"

module.exports = {
  view: () ->
            
# Until now, we have always placed the "href" attribute in square
# brackets next to the "tag" attribute.
# But it can just as easily be a member of the attribute object.

    return m(".logo", [

      m("a[href=https://github.com/pelonpelon/mithril-interactive-tutorial/tree/cs-lesson4]",
        { target: "_blank" },
        m("span.mit", "M.I.T.")),

      m("a",
        
        { 
          href: "http://mithril.js.org",
          target: "_blank"
        }, 
        
        [
          m("span.icon", "○"), 
          m("span.mithril", "Mithril")
        ]

      )

    ])
}


