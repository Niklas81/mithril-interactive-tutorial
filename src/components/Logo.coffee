m = require "mithril"

module.exports = {
  view: () ->
    return m("a.mithril[href=http://mithril.js.org]", [
      m(".logo", [
        m("span", "○"),
        "Mithril"
      ]),
    ])
}

