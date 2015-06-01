# Lesson 5.3 - The View-Model

m = require "mithril"

#Namespace
todo = {}

#Data Model
todo.Todo = (data) ->
  @description = m.prop(data.description)
  @done = m.prop(false)
  return

#Data Model
todo.TodoList = Array

# We've moved the functionality of the controller into a view-model
# • create a Todo
# • store a description in the Todo
# • add the Todo to the TodoList
# • clear the input text box

# todo.vm will be an IIFE: Immediatly Invoked Function Expression.
# It returns an object with only one method: an init function.
# The init function (when called later) will populate the object (vm)
# with data storage (list, description) and functionality (add).
 
#View-Model 
todo.vm = (->
  
  # the view-model starts out empty, we'll add only one function (init)
  
  vm = {}

  # the init function (when called)
  # adds properties and methods to the view-model
  
  vm.init = ->

    # a running list of todos
    vm.list = new todo.TodoList()

    # a temporary slot to store the name of a new todo before it is created
    vm.description = m.prop("")

    vm.add = ->
      if vm.description()

        #add the Todo to the TodoList
        vm.list.push new todo.Todo(description: vm.description())
      
        #clear the input for the next entry
        vm.description ""

# todo.vm is called immediately after it is defined (IIFE)
# and it returns the vm object with one method: init
  vm
)()

# The controller defines what part of the model is relevant for the current page.
# In our case, there's only the view-model that handles everything.

todo.controller = ->
  # The view-model object finally gets populated with data and functionality.
  # This is all the controller does: initialize the view-model.
  # It doesn't pass anyting to the view.

  todo.vm.init()

todo.view = ->
  m ".todo", [
    m "h4.title", "My Todo List"
    m "input",

      # The view accesses the view-model directly (todo.vm)
      # No need for the controller

      # set the description in the data model
      onchange: m.withAttr("value", todo.vm.description)

      # set the description of the todo on screen (input:value)
      value: todo.vm.description()

    m "button",
      
      # add the Todo to the TodoList
      # also clear the input for the next entry
      onclick: todo.vm.add,
      
      "Add"
    
    m "table", [
      todo.vm.list.map (task, index) ->
        m "tr", [
          m "td", [
            m "input[type=checkbox]",

              # set "done" to the value of checked in the Todo model
              onclick: m.withAttr("checked", task.done)

              # set the checkbox on screen (input:checked) to true or false
              checked: task.done()
          ]
          m "td",
            style:
              textDecoration: (if task.done() then "line-through" else "none"),
            task.description()
        ]
    ]
  ]

module.exports = todo
