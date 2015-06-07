# Lesson 5 - Getting Started

m = require "mithril"


App = {}

App.model = {
  
  lessons: (data)->
    @num = m.prop(data.num)
    @steps = m.prop(data.steps)
    @mitURL = m.prop(data.mitURL)

  data: m.request(method: "GET", url: "assets/lessons.json", type: @lessons)
}
#dat = App.model.data.then (d)->
#  console.log(d)

App.vm = (->
  vm = {}
  vm.init = (num)->
    App.model.data.then (data)->
      console.log(data)
      for lesson in data
        if lesson.num is num
          console.log(lesson.num)
          vm.Logo = require "./components/Logo.coffee"
          vm.Header = require "./components/Header.coffee"
          vm.Content = require "./components/Content.coffee"
          vm.Footer = require "./components/Footer.coffee"
  return vm
)()
#console.log(App.vm)

Page = {}


Page.controller = (args)->
  console.log('ctrl')
  App.vm.init(args.num)
#  App.vm.data.then((d)-> console.log(d))



Page.view = (ctrl, args)->
    return m(".page", [

      m.component(App.vm.Logo, {
          mitURL: "https://github.com/pelonpelon/mithril-interactive-tutorial/tree/cs-lesson5"
      }),

      m.component(App.vm.Header, {
        title: "Lesson 6",
        subtitle: "A Single Page Application",
        intro: "In previous lessons we moved page-to-page within
        the tutorial application in the standard way:
        by clicking on links which caused the browser to fully refresh
        loading a new URI. This lesson is comprised of several pages, yet
        it's self contained, requiring no new requests from the server.
        However, the browser location bar will change with each
        aparent page change. Pages can be linked to and bookmarked, while
        the back button will work as expected."
      }),

      m.component(App.vm.Content, {
        lessonNum: "6"
      }),

      m.component(App.vm.Footer, {
        preview: "preview",
        title: "Next Lesson: ",
        nextLesson: "6.1 - m.route",
      })

    ])



m.route(document.body, '/', {
  '/': m.component(Page, {num: "6"})
})