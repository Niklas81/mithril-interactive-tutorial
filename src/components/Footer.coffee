# M.I.T. - Lesson 3 - Passing Data to the View

m = require "mithril"

# This model is only supplying data.
# In the next lesson we will see a model with
# functions that allow access to the data.

model = {
  title: "Next Lesson: The Controller",
  lesson: "cs-lesson4"
}

# We access the model directly in the view, here.
# Later we'll let the controller call the data access functions in the model
# and pass the data to the view.

module.exports = {
  controller: ->
  view: ->
    return m(".footer", [
      m(".preview",
        "In the next lesson we'll see MVC in action. We'll learn how to control
        the flow of data through our app: how to retrieve it from the server,
        display it on the screen, and receive input from the user."
      ),
      m("h2", model.title),
      m("ul", [
        m("li", m.trust("In the terminal, stop the tutorial with
          <code>CTRL-C</code> or <code>CMD-C</code>.")),
        m("li", m.trust("Reset: <code>git stash</code>.")),
        m("li", m.trust("Change Lesson: <code>git checkout " + model.lesson + "</code>.")),
        m("li", m.trust("Restart the tutorial: <code>npm run tutorial</code>"))
      ])
    ])
}



