# Lesson 4 - Model, View, Controller

m = require "mithril"

Logo = require "./components/Logo.coffee"
Header = require "./components/Header.coffee"
Content = require "./components/Content.coffee"
Footer = require "./components/Footer.coffee"

App = {

  view: (ctrl) ->

    # showDemo is a config function. We'll cover config in depth, later.
    # What you need to know now, is that showDemo is called 
    # after Mithril finishes drawing the screen.
     
    showDemo = (el, isInitialized, context)->
      if not isInitialized then require "./components/Demo.coffee"

    return m(".page", {config: showDemo}, [
      
      Logo,
      
# Both the Header and Footer components come with default values.
# By calling m.component with an "args" object
# we can override the defaults.
# Footer has a "title" attribute we've decided not to override.

      m.component(Header, {
        title: "Lesson 4",
        subtitle: "Model, View, Controller"
      }),
      
      Content,
      
      m.component(Footer, {
        nextLesson: "A Todo App",
        gitBranch: "cs-lesson5"
      })
    ])
}

m.mount(document.body, App)


