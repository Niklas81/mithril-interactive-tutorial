# Lesson 5.1 - The View

m = require "mithril"

Logo = require "../components/Logo.coffee"
Header = require "../components/Header.coffee"
Todo = require "./Todo5.1.coffee"
html = require "./lesson5.1.html"
Footer = require "../components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [
      
      m.component(Logo),
      
      m.component(Header, {
        title: "Lesson 5.1",
        subtitle: "The View"
      }),
      
      m(".lesson", m.trust(html)),
      
      m.component(Todo),

      m.component(Footer, {
        preview: "Before we can add a task we need a place to store
          the data. In earlier lessons we used the model as a source
          for our data. Now we are going to use it for storage.",
        nextLesson: "5.2 - The Model",
        nextUrl: "/lesson5.2",
        prevUrl: "/"
      })
      
    ])
}

m.mount(document.body, App)
