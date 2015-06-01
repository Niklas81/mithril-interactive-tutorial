# Lesson 5 - Getting Started

m = require "mithril"

Logo = require "../components/Logo.coffee"
Header = require "../components/Header.coffee"
Todo = require "./Todo5.0.coffee"
html = require "./lesson5.0.html"
Footer = require "../components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [
      
      m.component(Logo),
      
      m.component(Header, {
        title: "lesson 5 - Step 0",
        subtitle: "The View"
      }),
      
      m(".lesson", m.trust(html)),
      
      m.component(Todo),

      m.component(Footer, {
        preview: "Before we can add a task we need a place to store
          the data. So far, we've used the model only as a source
          for our data. Now we are going to use it for storage.",
        nextLesson: "5.1 - The Model",
        nextUrl: "/lesson5.1",
        prevUrl: "/"
      })
      
    ])
}

m.mount(document.body, App)
