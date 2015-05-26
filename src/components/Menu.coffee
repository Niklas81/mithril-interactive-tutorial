m = require "mithril"

#model
Page =
  list: ->
    return m.request({ method: "GET", url: "/assets/pages.json" })

#component
Menu = {
  controller: ->

    pages = Page.list()
    
    return {
      pages: pages
    }

  view: (ctrl)->
    return m(".menu", [

      if ctrl.pages()
        ctrl.pages().map((page)->
          return m("a", { href: page.url }, page.title + ' — ' + page.subtitle))
      else null,
      
    ])
}

module.exports = Menu
