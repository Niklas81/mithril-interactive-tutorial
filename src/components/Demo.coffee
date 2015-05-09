m = require "mithril"

# This code is nearly identical to the inline script
# of the demo on the Mithril home page.

#model
Page =
  list: ->
    return m.request({ method: "GET", url: "./assets/pages.json" })

#component
Demo =
  controller: ->

# The return value of Pages.list()
# will be a promise AND an m.prop function
    
    pages = Page.list()
    
    return {
      pages: pages,
      rotate: ->
        pages().push pages().shift()
    }

# This component is injected into the DOM after the app
# has been fully rendered to the screen.
# When Demo is mounted, the AJAX call has not completed
# so we render 'null' to the page.
# When m.request completes, it causes a redraw,
# which in turn calls the view function
# which gets a value from ctrl.pages()
# and prints out the list of pages.

  view: (ctrl)->
    return m(".example", [

      if ctrl.pages()
        ctrl.pages().map((page)->
          return m("a", { href: page.url }, page.title))
      else null,
      
      m("button", { onclick: ctrl.rotate }, "Rotate links")
    ])


#initialize
m.mount(document.getElementById("example"), Demo)

