# Lesson 5 - Getting Started

m = require "mithril"

Logo = require "./components/Logo.coffee"
Header = require "./components/Header.coffee"
Todo = require "./Todo5.coffee"
Content = require "./lesson5.html"
Footer = require "./components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [

      Logo,

      m.component(Header, {
        title: "Lesson 5",
        subtitle: "A Todo List Component"
      }),

      m(".lesson", m.trust(Content)),

      Todo,

      m.component(Footer, {
        preview: "We'll begin by creating a prototype of our component. Don't
        forget to close all open files in the editor to avoid confusing them
        with the next step. [right-click on a file tab to close all]",
        title: "Next Lesson: ",
        nextLesson: "5.1 - The View",
        nextUrl: "/lesson5.1/",
        prevUrl: null
      })

    ])
}

m.mount(document.body, App)

