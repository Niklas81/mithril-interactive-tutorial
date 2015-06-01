# Lesson 5.2 - Getting Started

m = require "mithril"

Logo = require "../components/Logo.coffee"
Header = require "../components/Header.coffee"
Todo = require "./Todo5.2.coffee"
html = require "./lesson5.2.html"
Footer = require "../components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [

      Logo,

      m.component(Header, {
        title: "Lesson 5 - Step 2",
        subtitle: "The Controller"
      }),

      m(".lesson", m.trust(html)),

      Todo,

      m.component(Footer, {
        preview: "Our TodoList app is perfectly valid.
        If we are not interested in greater funtionality, component reuse,
        or component cross communication, we should stop here
        and move on to other parts of our app.
        But there are ways to enhance our TodoList and we'll discuss them
        in the next step of Lesson 5.",
        nextLesson: "5.3 - The View-Model",
        nextUrl: "/lesson5.3"
        prevUrl: "/lesson5.1"
      })

    ])
}

m.mount(document.body, App)
