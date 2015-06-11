# Lesson 5.4 - The View-Model

m = require "mithril"

Logo = require "../components/Logo.coffee"
Header = require "../components/Header.coffee"
Todo = require "./Todo5.4.coffee"
html = require "./lesson5.4.html"
Footer = require "../components/Footer.coffee"

App = {

  view: () ->
    return m(".page", [

      Logo,

      m.component(Header, {
        title: "Lesson 5.4",
        subtitle: "The View-Model"
      }),

      m(".lesson", m.trust(html)),

      Todo,

      m.component(Footer, {
        preview: "In Lesson 5 we have learned to create a basic
        component. Each page of Lesson 5 is a full app constructed with
        several nested
        components. We moved step-to-step by clicking on links and loading
        new pages. Next we will learn how to build a Single Page App (SPA)
        that loads once but can instantly redraw the screen
        to give the illusion of separate pages.",
        title: "Next Lesson: ",
        nextLesson: "6 - Single Page App",
        nextUrl: "/lesson6",
        prevUrl: "/lesson5.3"
      })

    ])
}

m.mount(document.body, App)
