m = require "mithril"

html = require "../lesson.html"


module.exports = {
  view: () ->
    return m( ".content", m.trust(html) )
}



