# Step 5.2 - The Model

m = require "mithril"

# Namespace
todo = {}

# The Todo List is a self contained component.
# Its data is not needed by the app anywhere outside the component,
# so we internalize the Model by attaching it to our todo namespace.
# Model classes: todo.Todo and todo.TodoList

# The Todo class has two properties which we'll
# define as getter/setters (m.prop) so we can store data
# and access it throughout the component.

####### Model #######
todo.Todo = (data) ->
  @description = m.prop(data.description)
  @done = m.prop(false)

todo.TodoList = Array
######################

# The Model gives us a place to store our data (description)
# and state (done).
# The View displays the state of that data on the screen.
# But we need a way to connect the Model to the View.
# In the next lesson we learn about the Controller which will
# bridge that gap.

todo.view = ->
    m ".todo",
    [
      m "h4.title", "My Todo List"
      m "input"
      m "button", "Add" 
      m "table", [
        m "tr", [
          m "td", [
            m "input[type=checkbox]" 
          ]
          m "td", "task description" 
        ] 
      ] 
    ] 

module.exports = todo
