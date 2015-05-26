m = require "mithril"

todo = {}

todo.view = ->
    m(".todo", {
      style: {
        backgroundColor: "lightblue";
        padding: "5px";
        width: "50%";  
      }    
    },
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
