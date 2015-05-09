# Lesson 5 - Model, View, Controller

m = require "mithril"

Logo = require "./components/Logo.coffee"
Header = require "./components/Header.coffee"
Content = require "./components/Content.coffee"
Footer = require "./components/Footer.coffee"

App = {

  view: (ctrl) ->
    showDemo = (el, isInitialized, context)->
      if not isInitialized then require "./components/Demo.coffee"

# In the attributes object below, there is a special Mithril attribute
# called config. Its value is the showDemo function from above.
# config allows us to do work "after" the app is fully loaded.
# Its function manipulates the real DOM.
# We'll learn more about config in a later lesson. 

    return m(".page", {config: showDemo}, [
      
      m.component(Logo),
      
      m.component(Header, {
        title: "Lesson 5",
        subtitle: "Routes"
      }),
      
      m.component(Content),
      
      m.component(Footer, {
        nextLesson: "???",
        gitBranch: "CJS-Lesson5"
      })
    ])
}

m.mount(document.body, App)


