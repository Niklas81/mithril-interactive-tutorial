m = require "mithril"

# This model is only supplying data.
# In the next lesson we will see a model with
# data transforming functions.

model = {
  title: "Next Lesson: The Controller",
  lesson: "cs-lesson4"
}

# We access the model directly in the view, here.
# Later we'll let the controller call the data manipulating functions
# and pass the newly transfomred data to the view.

module.exports = {
  controller: ->
  view: ->
    return m(".footer", [
      m("hr"),
      m("h2", model.title),
      m("ul", [
        m("li", m.trust("In the terminal, stop the tutorial with
          <code>CTRL-C</code> or <code>CMD-C</code>.")),
        m("li", m.trust("Reset: <code>$ git stash</code>.")),
        m("li", m.trust("Change Lesson: <code>$ git co " + model.lesson + "</code>.")),
        m("li", m.trust("Restart the tutorial: <code>$ npm run tutorial</code>"))
      ])
    ])
}



