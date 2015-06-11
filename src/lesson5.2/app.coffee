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

      m.component(Logo, {lesson: "cs-lesson5"}),

      m.component(Header, {
        title: "Lesson 5.2",
        subtitle: "The Model"
      }),

      m(".lesson", m.trust(html)),

      m.component(Todo),

      m.component(Footer, {

        preview: "We need a way to connect the Model data with our View. We'll use a Controller
        to funnel input and output between them and optionally manipulate the data as it passes through.",
        
        nextLesson: "5.3 - The Controller",
        nextUrl: "/lesson5.3"
        prevUrl: "/lesson5.1"
      })

    ])
}

m.mount(document.body, App)
