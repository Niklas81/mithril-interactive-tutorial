m = require "mithril"

module.exports = {
  view: () ->
    return m(".footer", [
      m("hr"),
      m("h2.title", "Next Lesson: The Controller"),
      m("ul.setup", [
        m("li", m.trust("In the terminal, stop the tutorial with
          <code>CTRL-c</code> or <code>COMMAND-c</code>.")),
        m("li", m.trust("Enter <code>$ git co CJS-Lesson3</code>.")),
        m("li", m.trust("Restart the tutorial with <code>$ npm run tutorial</code>"))
      ])
    ])
}



