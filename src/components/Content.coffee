m = require "mithril"

Content = {}

Content.model = {
  lessonNum: m.prop("0")
  content: m.request(method: "GET", url: "lesson" + Content.model.lessonNum() + ".html") 
}

Content.vm = (->
  vm = {}
  vm.init = ->
    model.content.then (content)->
      vm.html = content
  return vm
)()

module.exports = {
  
  controller: (args)->
    Content.vm.init()

  view: (ctrl, args)->
    html = if args and args.html then args.html else model.html
    lessonNum = if args and args.lessonNum then args.lessonNum else model.lessonNum

    return m( ".content", m.trust(Content.vm.html) )
}

#### WARNING: Using m.trust() is risky. If the html above contains
#### malicious <script> tags, they will run with full permissions.



