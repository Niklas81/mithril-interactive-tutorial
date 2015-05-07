# Lesson 3 - Passing Data to the View

m = require "mithril"

# App is composed of 4 components.
# First we must require the components
# then namespace them (set them to unique variables).

Logo = require "./components/Logo.coffee"
Header = require "./components/Header.coffee"
Content = require "./components/Content.coffee"
Footer = require "./components/Footer.coffee"

App = {

# The controller returns an object that will be the first paarameter to the view.

  controller: () ->
    return {
      displayLogo: true
    }

 # Mithril automatically inserts the ctrl object

  view: (ctrl) -> 
    return m(".page", [

      # to print or not to print
      if ctrl.displayLogo then m.component(Logo) else "",
      m.component(Header, {title: "Lesson 3", subtitle: "Passing Data to the View"}),
      m.component(Content),
      m.component(Footer)
    ])
}

m.mount(document.body, App)
