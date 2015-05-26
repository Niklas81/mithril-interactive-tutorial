# Lesson 5.2 - The Model

m = require "mithril"

todo = {}

# The Model provides these two classes.
# Instances of these classes will store "description" data and "done" state.

todo.Todo = (data) ->
  @description = m.prop(data.description)
  @done = m.prop(false)
  return

todo.TodoList = Array


# The Controller gets called only once when the component is instantiated.

todo.controller = ->

  # Lets collect properties and methods in an object that we'll return

  ctrl = {}

  # This is our chance to create the TodoList.
  # todo.Todo and todo.TodoList are javascript constructors.
  # Thus, we can use the new keyword to create an instance.

  ctrl.list = new todo.TodoList()

  # We need a place to store the description after it's been entered into the View
  # but before it's been added to the Model. This is temporary storage, unrelated to
  # todo.Todo.description

  # Set the intial descrtiption to an empty string

  ctrl.description=  m.prop("")


  # This is how we get View input into the Model

  ctrl.add = ->
    if ctrl.description()
      ctrl.list.push(
        new todo.Todo( { description: ctrl.description() } )
      )
      ctrl.description("")

  return ctrl

# The first argument to the View is the object returned by the Controller.
# This is done automatically by Mithril

todo.view = (c)->
    m(".todo",
    [
      m("h4.title", "My Todo List"),
      m("input",

# Our input tag defines two attributes: "onchange" and "value".

# "onchange" calls the Mithril function m.withAttr
# whose first parameter is the value of an HTML attribute found on the current element.
# In our case, the input tag's attribute is "value" - the string from the input text field.

# m.withAttr grabs the current input value on screen and calls c.description()
# with the value, to store it temporarily.

# We've defined c.description() in the controller. It pushes a new Todo on the TodoList array.
# The new Todo is instantiated with its description set to the c.description() temporary value.

# When the Add button is clicked Mithril redraws parts of the DOM and the input string is lost.
# We preserve that string in the input tag's "value" attribute.

        onchange: m.withAttr("value", c.description)
        value: c.description()

      )
      m("button", { onclick: c.add }, "Add")
      m("table", [

# Most components and most apps are just series of lists.
# A common idiom in Mithril Views is to map over an array
# creating m("tag")'s along the way.

        c.list.map( (task, index) ->
          m("tr", [
            m("td", [
              m("input[type=checkbox]",
                onclick: m.withAttr("checked", task.done)
                checked: task.done()
              )
            ])
            m("td", { style: { textDecoration: (if task.done() then "line-through" else "none") } }, 
              task.description()
            )
          ])
        )
      ])
    ])

module.exports = todo
