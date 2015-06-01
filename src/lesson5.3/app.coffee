# Lesson 5.3 - The Controller

m = require "mithril"

Logo = require "../components/Logo.coffee"
Header = require "../components/Header.coffee"
Todo = require "./Todo5.3.coffee"
html = require "./lesson5.3.html"
Footer = require "../components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [

      Logo,

      m.component(Header, {
        title: "Lesson 5.3",
        subtitle: "The Controller"
      }),

      m(".lesson", m.trust(html)),

      Todo,

      m.component(Footer, {
        preview: "Our TodoList component is perfectly valid.
        If we are not interested in greater funtionality, component reuse,
        or component cross communication, we should stop here
        and move on to other parts of our app.
        But there are ways to enhance our TodoList and we'll discuss them
        in Lesson 5.4",
        nextLesson: "5.4 - The View-Model",
        nextUrl: "/lesson5.4"
        prevUrl: "/lesson5.2"
      })

    ])
}

m.mount(document.body, App)
