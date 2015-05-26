# Lesson 5 - Getting Started

m = require "mithril"

Logo = require "./components/Logo.coffee"
Header = require "./components/Header.coffee"
Todo = require "./Todo5.coffee"
html = require "./lesson5.html"
Footer = require "./components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [

      m.component(Logo),

      m.component(Header, {
        title: "Lesson 5",
        subtitle: "A Todo App"
      }),

      m(".lesson", m.trust(html)),

      m.component(Todo),

      m.component(Footer, {
        preview: "We'll begin by creating a prototype of our app.",
        nextLesson: "5.0 - The View",
        nextUrl: "/lesson5.0/",
        prevUrl: null
      })

    ])
}

m.mount(document.body, App)

