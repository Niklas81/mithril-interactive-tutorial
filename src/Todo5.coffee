# Lesson 5 - A Todo App

# THIS IS THE FINISHED TODO LIST COMPONENT
# YOU DO NOT NEED TO UNDERSTAND EVERY DETAIL 
# THE FOLLOWING PAGES OF THE TUTORIAL WILL BUILD TO THIS POINT

m = require "mithril"

#this application only has one component: todo
todo = {}

#for simplicity, we use this component to namespace the model classes

#the Todo class has two properties
#data will come from user input
todo.Todo = (data) ->
  @description = m.prop(data.description)
  @done = m.prop(false)
  return

#the TodoList class is a list of accumulated Todos
todo.TodoList = Array

#the view-model is where the view gets access to the data.
#It tracks a running list of todos,
#stores a description for new todos before they are created
#and allows the view to add new todos.
#It clears the input after adding a todo to the list
todo.vm = do ->
  vm = {}
  vm.init = ->
    
    #a running list of todos
    vm.list = new todo.TodoList()
    
    #a slot to store the name of a new todo before it is created
    vm.description = m.prop("")
    
    #adds a todo to the list, and clears the description field for user convenience
    vm.add = ->
      if vm.description()
        vm.list.push new todo.Todo(description: vm.description())
        vm.description ""
      return

  return vm

#the controller defines what part of the model is relevant for the current page
#in our case, there's only one view-model that handles everything
todo.controller = ->
  todo.vm.init()
  return


#here's the view
todo.view = ->
  m(".todo", [
    m("input",
      onchange: m.withAttr("value", todo.vm.description)
      value: todo.vm.description()
    )
    m("button",
      onclick: todo.vm.add
    , "Add")
    m("table", [todo.vm.list.map((task, index) ->
      m "tr", [
        m("td", [m("input[type=checkbox]",
          onclick: m.withAttr("checked", task.done)
          checked: task.done()
        )])
        m("td",
          style:
            textDecoration: (if task.done() then "line-through" else "none")
        , task.description())
      ]
    )])
    m("div",
      {
        style: {
          float: "right"
        }
      },
       m("a.ex[href=http://jsbin.com/zohebo/6/edit?js,output][target=_blank]"))
  ])

module.exports = { controller: todo.controller, view: todo.view }

