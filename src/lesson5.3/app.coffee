# Lesson 5.3 - The View-Model

m = require "mithril"

Logo = require "../components/Logo.coffee"
Header = require "../components/Header.coffee"
Todo = require "./Todo5.3.coffee"
html = require "./lesson5.3.html"
Footer = require "../components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [

      m.component(Logo),

      m.component(Header, {
        title: "Lesson 5.3",
        subtitle: "The View-Model"
      }),

      m(".lesson", m.trust(html)),

      m.component(Todo),

      m.component(Footer, {
        preview: "Summary",
        nextLesson: "5.4 - App Structure",
        nextUrl: "/lesson5.4",
        prevUrl: "/lesson5.2"
      })

    ])
}

m.mount(document.body, App)
