# Lesson 5.1 - The View

m = require "mithril"

#Namespace
todo = {}

todo.view = ->
    m ".todo",
    [
      m "h4.title", "My Todo List"
      m "input"
      m "button", "Add" 
      m "table", [
        m "tr", [

          m "td"
            m "input[type=checkbox]"

          m "td", {

              style: { fontFamily: "fantasy" }
              
          }, "task description"
          
        ]
      ]
    ]

module.exports = todo
