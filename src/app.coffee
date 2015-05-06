# This is the entry point into our app.

App = {
  view: ()->
    
# The style attribute will be explained in the next lesson.

    return m(".page", { style: {maxWidth: '480px', margin: '0 auto'} }, [

# Compare this template fragment to the resulting div.header
# in the Elements pane.
    
      m(".header", [
        m("h1.title", "Lesson 1"),
        m("h2.subtitle", "Hello World")
      ]),


      m(".content", [
        m("strong", "☞ In DevTools, open src/app.coffee."),
        m("p", "app.coffee is the file that produced
          the web page you are reading now. It's scattered with comments
          to help you understand how Mithril works."),
        m("h3", "The App"),
        m("p", "In the code editor of DevTools,
          notice the object called \'App\'. Its only attribute is 'view',
          the value of which is a function. That function returns
          a template describing what we want
          to display on screen. Mithril interprets the template and inserts
          the resulting HTML into the page"),

        m("h3", "The View"),
        m("p", "The view produces what finally appears in the browser window.
          The view template consists of calls to the m() function.
          The first parameter of the m() function
          designates an HTML tag such as \'h1\' or \'p\.' An id or any number
          of classes can be appended to the tag with the usual [.] and [#]
          notation. If CSS classes or id's are found without an HTML tag,
          Mithril converts the parameter into a \'div\' tag
          and appends the class or id."),
        m("strong", "☞ The .page class is an example of Mithril
          automatically inserting a missing tag.
          Compare the first line of the view function
          to the resulting HTML in the Elements panel.
          Look for <div class=\"page\">"),
        m("p", "The last parameter of the m() function
          is the inner part of the HTML tag.
          As with HTML, this can be text or more HTML.
          In Mithril, more HTML means more m() calls. When the tag
          needs to contain more than one string or one call to m(),
          the parameter must be an array with any combination of both."),
 
        m("h3", "Mounting Your App"),
        m("p", "Our simple app is nothing more that a view which Mithril
          converts into HTML and inserts into the page with a call to the mount()
          function:"),
        m("code", "m.mount(element, app)"),
        m("p", "at the bottom
          of the file. The first parameter is the element we wish to use
          to mount the app, (in our case: document.body). The second parameter
          is the app we wish to insert: (App)."),
            
        m("h3", "Components - The building blocks of your app"),
        m("p", "In the code, the view is divided into header, content and footer
          sections. In the next lesson we'll see how these can be factored out
          into separate entities called components, which can exist on thier own.
          Almost any part of an app can be refactored into its own component.
          A widget in a sidebar can be a component. A search box can be a
          component. A menu can be a component made up of links
          that are themselves, individual components.
          The only requirements for a component are that it be an object and
          have one property called \'view\'. The value of view
          must be a function that returns a Mithril template
          (not an array !!). "),
        m("hr"),
        m("ul", [
          m("li", "Read the comments in index.jade."),
          m("li", "Read the comments in app.coffee."),
          m("li", "Study the code. It should all make sense to you."),
          m("li", "Notice that m(\"hr\") and m(\"br\") 
            require no further parameters."),
        ]),
        m("hr"),


        m(".footer", [
          m("h2.title", "Next Lesson: Enhancing the View"),
          m("li", "In the terminal, stop the tutorial with 
            CTRL-C or CMD-C."),
          m("li", "Load the next lesson with:"),        
          m("code", "$ git co CJS-Lesson2"),
          m("li", "Restart the tutorial with:"),        
          m("code", "$ npm run tutorial")
        ])
      ])
    ])
}

# We mount (inject) Page into to the body tag of the document.
# Anything that might have been there before will be replaced.

m.mount(document.body, App)

