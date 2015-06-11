m = require "mithril"

Menu = require "./Menu.coffee"

model = {
  preview: "What's next",
  title: "Next Lesson: ",
  nextLesson: "The one after this",
  nextUrl: "/lesson5"
}

module.exports = {

  view: (ctrl, args) ->
    preview = if args and args.preview then args.preview else model.preview
    title = if args and args.title then args.title else model.title
    nextLesson = if args and args.nextLesson then args.nextLesson else model.nextLesson
    nextUrl = if args and args.nextUrl then args.nextUrl else model.nextUrl
  
    return m(".footer", [
      m(".reminder", "Read Comments"),
      m(".reminder", "Close editor tabs"),
      m("p.preview", preview),
      if args.prevUrl then m("a.rev", {href: args.prevUrl}, "") else m(""),
      m("h2.title", title + nextLesson),
      m("a.fwd", {href: args.nextUrl}, ""),

      m("ul.setup", [
      
      ]),
      m.component(Menu)
    ])
}

# We've embedded a menu component inside the Footer
