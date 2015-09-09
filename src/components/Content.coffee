m = require "mithril"



Content = {}

Content.getContent = (page)->
  console.log 'getting content'
  return m.request
    method: "GET"
    url: "assets/lesson" + page + ".html"
    deserialize: (html)-> html

Content.page = m.prop("home")

Content.controller = (args)->
  console.log 'controller'

Content.view = (ctrl, args)->
  page = if args and args.num then args.num else Content.page()
  return m ".content",
    Content.getContent(page)
      .then (content)->
        console.log 'content', content
        m.trust content 



module.exports = Content



