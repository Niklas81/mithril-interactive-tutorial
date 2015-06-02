# Lesson 5.3 - The Model

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
# It can function like a class contructor

todo.controller = ->

  # Lets collect properties and methods in an object that
  # the controller function will return

  ctrl = {}

  # This is our chance to create the TodoList.
  # todo.Todo and todo.TodoList are javascript constructors.
  # Thus, we can use the new keyword to create an instance.

  ctrl.list = new todo.TodoList()

  # We need a place to store the description after it's been input into the View
  # but before it's been added to the Model. This is temporary storage,
  # unrelated to todo.Todo.description.
  # First, we intialialize our temporary description with an empty string.

  ctrl.description=  m.prop("")


# add View input to the Model:
# Create a new Todo with a description and push it onto the TodoList.  

  ctrl.add = ->
    if ctrl.description()
      ctrl.list.push(
        new todo.Todo( { description: ctrl.description() } )
      )
      ctrl.description("")
  return ctrl

# The first argument to the view is the object returned by the controller.
# This is done automatically by Mithril.

todo.view = (ctrl)->

    m(".todo",
    [
      m("h4.title", "My Todo List"),
      m("input",

# Our input tag defines two attributes: "onchange" and "value".

        onchange: m.withAttr("value", ctrl.description)
        value: ctrl.description()
      )

# "onchange" calls the Mithril function m.withAttr()
# whose first parameter is the value of an HTML attribute found
# on the current element.
# In our case, the input tag's attribute is "value" - the string
# from the input text field.

# m.withAttr grabs the current input value on screen
# and sets ctrl.description() with the value, to store it temporarily.

# When the Add button is clicked Mithril redraws parts of the DOM
# and the input string is lost.
# So, we preserve that string in the input tag's "value" attribute.



      m("button", { onclick: ctrl.add }, "Add")
      m("table", [

# Most components and most apps are just series of lists.
# A common idiom in Mithril views is to map over an array
# creating m("tag")'s along the way.

        ctrl.list.map( (task, index) ->
          m("tr", [
            m("td", [
              m("input[type=checkbox]",
                onclick: m.withAttr("checked", task.done)
                checked: task.done()
              )
            ])
            m("td", {

              # Draw a line through "done" tasks.
              # Remember that CSS properties (keys) must be in camelCase.
              # Values are strings of normal CSS with dashes.
              # Add CSS only when required for the functionality of the component.

                style: { textDecoration: (if task.done() then "line-through" else "none") }
              }, 
              task.description()
            )
          ])
        )
      ])
    ])

module.exports = todo
