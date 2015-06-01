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

      Logo,

      m.component(Header, {
        title: "Lesson 5 - Step 3",
        subtitle: "The View-Model"
      }),

      m(".lesson", m.trust(html)),

      Todo,

      m.component(Footer, {
        preview: "In Lesson 5 we have learned to create a basic, but scalable
        component. Each part of Lesson 5 was a full app constructed of several
        components. We moved step-to-step by clicking on links and loading
        new pages. Next we will learn how to build a Single Page App (SPA) that
        loads once but redraws to give the illusion of separate pages.",
        title: "Next Lesson: ",
        nextLesson: "6 - Single Page App",
        nextUrl: "/lesson5.4",
        prevUrl: "/lesson5.2"
      })

    ])
}

m.mount(document.body, App)
