# Lesson 5.1 - The View

m = require "mithril"

#Namespace
todo = {}

todo.view = ->
    m(".todo",
    [
      m("h4.title", "My Todo List"),
      m("input")
      m("button", "Add")
      m("table", [
        m("tr", [
          m("td",

          # HTML attributes belong in brackets next to the tag

          [
            m("input[type=checkbox]")
          ])
          m("td", {

          # Don't add CSS unless it's essential to the functionality
          # of your component:

              style: {fontFamily: "fantasy"}
              
          },
          "task description")
        ])
      ])
    ])

module.exports = todo
