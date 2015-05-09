m = require "mithril"

Menu = require "../components/Menu.coffee"

model = {
  title: "Next Lesson: ",
  nextLesson: "The one after this",
  gitBranch: "master"
}

module.exports = {

  view: (ctrl, args) ->
    title = if args and args.title then args.title else model.title
    nextLesson = if args and args.nextLesson then args.nextLesson else model.nextLesson
  
    return m(".footer", [
      m("h2.title", title + nextLesson),
      m("ul.setup", [
      
      ]),
      m.component(Menu)
    ])
}



