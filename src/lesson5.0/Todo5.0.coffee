# Lesson 5.0 - The View

m = require "mithril"

todo = {}

todo.view = ->
    m(".todo",
    [
      m("h4.title", "My Todo List"),
      m("input")
      m("button", "Add")
      m("table", [
        m("tr", [
          m("td", [
            m("input[type=checkbox]")
          ])
          m("td", "task description")
        ])
      ])
    ])

module.exports = todo
