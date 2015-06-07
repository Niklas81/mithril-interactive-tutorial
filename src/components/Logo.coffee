m = require "mithril"

module.exports = {
  view: (ctrl, args) ->

    mitURL = if args and args.mitURL then args.mitURL
    else "https://github.com/pelonpelon/mithril-interactive-tutorial"
             
    return m(".logo", [

      m("a[href=" + mitURL + "]",
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


