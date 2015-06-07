# M.I.T - Lesson 1 - Hello World

# We could add Mithril to our app with a link tag in the header
# of index.html, but here we've chosen to include it in build/bundle.js
# with the "require" statement which is handled by browserfy.

m = require "mithril"

# This is the entry point into our app.

App = {
  view: ->

# It's a common mistake to forget that templates must be
# in a return statement.
# The children of <div class="page></div> are members of an array.

    return m(".page", [

# Only HTML attributes are allowed in brackets immediately after
# the tag parameter.
# Notice there is no comma between pairs of brackets -- [][][] etc

      m(".logo", [
        m("a.mit        
          [href=https://github.com/pelonpelon/mithril-interactive-tutorial/tree/cs-lesson1]
          [target=_blank]",
          "M.I.T."
        ),
        m(".icon", "○"),
        m("a.mithril[href=http://mithril.js.org][target=blank]", "Mithril")
      ]),
 
# Compare this template fragment to the resulting <div class=header...
# in the Elements panel.
      
      m(".header", [
        m("h1.title", "Lesson 1"),
        m("h2.subtitle", "Hello World")
      ]),

      m(".content", [
        m(".dothis", "In DevTools, open src/app.coffee."),
        m("p", [
          m("code.file", "app.coffee"),
          " is the file that produced the web page you are reading now."
        ]),
        m("h3", "The App"),
        m("p", "In the code editor of DevTools,
          notice the object called \'App\'. It's a Mithril component, and its
          only property is 'view', the value of which is a function."),

        m("h3", "The View"),
        m("p", "The view produces what finally appears in the browser window.
          The view template consists of calls to the ",
          m("code", "m()"),
          " method, which
          produces a virtual DOM element. Once all virtual DOM elements
          are assembled, they are injected into the browser DOM (the web page).
          The first parameter of the "
          m("code", "m()"),
          " function designates an HTML tag such as \"h1\" or \"p\". An id or
          any number of classes can be appended to the tag with
          the usual [#] and [.] notation."),
        m("code", "m(\"div#container.nobkg.darktheme\")"),
        m("p", "If CSS classes or id's are found
          without an HTML tag, Mithril converts the parameter into a
          \'div\' tag and appends classes or id."),
        m("code", "m(\".page\") === <div class=\"page\"></div>"),
        m(".dothis", "The .page class in app.coffee
          is an example of Mithril
          automatically inserting a missing tag.
          Compare the first line of the view function
          to the resulting HTML in the Elements panel.
          Look for <div class=\"page\">."),
        m("p", [
          "The last parameter of the ",
          m("code", "m()"),
          " function is the inner part of the HTML tag (its children).
          As with HTML, this can be text or more HTML.
          In Mithril, more HTML means more m() calls or components. When the tag
          needs to contain more than one string or one call to ",
          m("code", "m()"),
          " the parameter must be an array with any combination of both."
        ]),
        m(".dothis", "In the second parameter to m(), notice the use of arrays
        containing simple strings and calls to m()."),
 
        m("h3", "Mounting Your App"),
        m("p", [
          "Our simple app is nothing more than a view which Mithril
          converts into HTML and inserts into the page
          with a call to the ",
          m("code", "m.mount()"),
          " method on the last line of the file."
        ]),
        m("code", "m.mount(DOM element, component)"),
        m("p", "The first parameter is the
          element we wish to use to mount the app,
          (in our case: document.body). The second parameter
          is the component we wish to place there: App."),
            
        m("h3", "Components - The building blocks of your app"),
        m("p", [
          "In the code, the view is divided into logo, header, content and
          footer sections. Take a look at the app in this example
          without all the comments: ",
          m("a.ex[href=http://jsbin.com/pawika/2/edit?js,output][target=_blank]"),
          " In the next lesson we'll see how these can be
          factored out into separate components, which can
          exist independently."
        ]),
        m("p", "Almost any part of an app can be refactored
          into its own component. A widget in a sidebar can be a component.
          A search box can be a component. A menu can be a component made up
          of links that are themselves, individual components."),
        m("p", [
          "The only requirements for a component are that it be an
          object and have one property called \'view\'. The value of view
          must be a function that returns a Mithril template, ",
          m("span.error", "not an array."),
          " However, App is considered a top-level component. It
          stands alone and will never be part of another component. It
          uniquely may return an array in its view, as we shall see in
          the next lesson. It's possible to have more than one top-level
          component on a page."
        ]),
        m("hr"),
        m("ul", [
          m("li", [
            "Read the comments in ",
            m("code.file", "app.coffee.")
          ]),
          m("li", "Study the code. It should all make sense to you."),
          m("li", [
            "Notice that ",
            m("code", "m(\"hr\")"),
            " and ",
            m("code", "m(\"br\")"), 
            " require no further parameters."
          ]),
        ]),
        m("hr"),


        m(".footer", [
          m("h3", "Next Lesson: Enhancing the View"),
          m("ul", [
            m("li", "In the terminal, stop the tutorial with CTRL-C or CMD-C."),
            m("li", "If you've edited any files, reset the lesson with:"),        
            m("code", "$ git stash"),
            m("li", "Load the next lesson with:"),        
            m("code", "$ git co cs-lesson2"),
            m("li", "Restart the tutorial with:"),
            m("code", "$ npm run tutorial")
          ])
        ])
      ])
    ])
}

# We mount (inject) App into to the body tag of the document.
# Anything that might have been there before will be replaced.

m.mount(document.body, App)

