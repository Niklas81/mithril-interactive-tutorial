# Lesson 6 - Single Page Application

m = require "mithril"

Logo = require "./components/Logo.coffee"
Header = require "./components/Header.coffee"
Nav = require "./components/Nav.coffee"
Content = require "./components/Content.coffee"
Footer = require "./components/Footer.coffee"

App = {}

App.model = {

  lesson: (data)->
    @num = m.prop(data.num)
    @mitUrl = m.prop(data.mitURL)
    @title = m.prop(data.title)
    @subtitle = m.prop(data.subtitle)
    @intro = m.prop(data.intro)
    @content = m.prop(data.content)
    @preview = m.prop(data.preview)

  lessonDB: m.request(method: "GET", url: "assets/lessons.json", type: @lesson)
}

App.vm = (->
  vm = {}
  vm.init = ->
    App.model.lessonDB.then (db)->
      App.vm.getLesson = (num)->
        for lesson in db
          if lesson.num is num
            return lesson
  return vm
)()

App.controller = (args)->
  console.log 'app ctrl'
  App.vm.init()

App.view = (ctrl, args)->
  return [
    Logo,
    Header,
    args.Home,
    m "div", "App"
    m "div", args
  ]

Home = {
  view: (ctrl, args)->
    console.log 'App:', App
    console.log 'Home view'

    lesson = App.vm.getLesson "6.1"
    console.log 'lesson', lesson

    return m ".page", [

      # m.component Logo,
          # mitUrl: lesson.mitUrl

      # m.component Header,
        # title: lesson.title
        # subtitle: lesson.subtitle
        # intro: "In previous lessons we moved page-to-page within
        # the tutorial application in the standard way:
        # by clicking on links which caused the browser to fully refresh
        # loading a new URI. This lesson is comprised of several pages, yet
        # it's self contained, requiring no new requests from the server.
        # However, the browser location bar will change with each
        # aparent page change. Pages can be linked to and bookmarked, while
        # the back button will work as expected."

      # m.component Content,
        # num: lesson.num

      # m.component Footer,
        # preview: lesson.preview

    ]
}


m.route document.body, '/',

  '/'  : m.component App, Home
  # '/lesson6.1': m.component App, Page1
  # '/lesson6.2': m.component App, Page2
  # '/lesson6.3': m.component App, Page3
  # '/lesson6.4': m.component App, Page4
  # '/lesson6.5': m.component App, Page5
