# Lesson 5 - Getting Started

m = require "mithril"

Logo = require "./components/Logo.coffee"
Header = require "./components/Header.coffee"
Content = require "./components/Content.coffee"
Footer = require "./components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [
      
      m.component(Logo),
      
      m.component(Header, {
        title: "Lesson 5",
        subtitle: "A Todo App"
      }),
      
      m.component(Content, { content: "lesson5.html" }),
      
      m.component(Footer, {
          nextLesson: "???"
      })
      
    ])
}

m.mount(document.body, App)
