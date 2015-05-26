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

      m.component(Logo),

      m.component(Header, {
        title: "Lesson 5.2",
        subtitle: "The Controller"
      }),

      m(".lesson", m.trust(html)),

      m.component(Todo),

      m.component(Footer, {
        preview: "The Controller should connect the Model with the View
        but shouldn't know anything about the inner workings of either. Our
        controller is too tightly coupled with the the View and Model, so next we
        factor out our controller logic to the companion to our data model: the
        view-model.",
        nextLesson: "5.3 - The View-Model",
        nextUrl: "/lesson5.3"
        prevUrl: "/lesson5.1"
      })

    ])
}

m.mount(document.body, App)
