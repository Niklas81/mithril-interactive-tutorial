# M.I.T. - Lesson 3 - Passing Data to the View

m = require "mithril"

# App is composed of 4 components.
# First we must require the components
# and namespace them (set them to unique variables).

Logo = require "./components/Logo.coffee"
Header = require "./components/Header.coffee"
Footer = require "./components/Footer.coffee"

# Our app requires a lot of good old HTML,
# so we move it into it's own file: src/assets/lesson3.html
# and require it here. Browserify, with the help of the stringify transform,
# will include it in bundle.js. If your app is not text-heavy
# you should not need this extra step.
# There are other ways to include large amounts of markup that we'll
# cover later.

html = require "./assets/lesson3.html"
Content = {
  view: () ->

#### Using m.trust() like this can be a security risk!
#### See the Mithril docs on m.trust() for more info.

    return m(".content", m.trust(html))
}

App = {

# The controller returns an object that will be the first parameter
# to the view (ctrl).

  controller: () ->
    return {
      displayLogo: true
    }

# Mithril automatically inserts the ctrl object.

  view: (ctrl) -> 
    return m(".page", [

# to print or not to print
      if ctrl.displayLogo then m.component(Logo) else "",

# m.component() takes an object as a second argument. It is passed to the
# Header component. See Header.coffee
      
      m.component(Header, {title: "Lesson 3", subtitle: "Passing Data to the View"}),
      Content,
      Footer
    ])
}

m.mount(document.body, App)
