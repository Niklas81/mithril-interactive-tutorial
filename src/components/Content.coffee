m = require "mithril"

Content = {}

Content.vm = (->
  vm = {}
  vm.init = ->
    vm.getContent = (page)->
      vm.content = m.request(method: "GET", url: page + ".html") 
    vm.page = m.prop("home")
  return vm
)()

Content.controller = (args)->
  Content.vm.init()

Content.view = (ctrl, args)->
  page = if args and args.page then args.page else model.page
  return Content.vm.getContent(page).then((content)->
    m( ".content", m.trust(content) )
  )



module.exports = Content



