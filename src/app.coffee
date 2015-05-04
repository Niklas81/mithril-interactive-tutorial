# This is the entry point into our app.
# A component need only be an object with a view function.
# Page qualifies as a component.
# The Page component will fill up the entire body of our app.

Page = {
  view: ()->
    return m(".page", [
      m("h1.title", "Lesson 1"),
      m("h2.subtitle", "Hello World"),
      m(".container", [
        m("p", "In DevTools, open src/app.coffee."),
        m("p", "app.coffee is the file that produced
          the web page you are reading now. It is commented with
          information to help you understand how Mithril works."),
        m("h3", "Components"),
        m("h4", "The building blocks of your app.")
        m("p", "In the code editor of DevTools,
          notice the object called \'Page\'. It\'s a component.
          The header and footer can be components.
          Each widget in a sidebar can be a component.
          A menu can be a component made up of links
          that are themselves individual components.
          The only requirements for a component are that it be an object and
          have one property called \'view\'. The value of view
          must be a function that returns a Mithril template.
          The Page object is the only component on this page and it contains
          only one parameter named \'view\'."),
        m("h3", "The View"),
        m("h4", "The view produces what finally appears in the browser window.
          The view template consists of calls to the m() function.")
        m("p", "The first parameter of the m() function
          designates an HTML tag such as \'h1\' or \'p\.'
          If CSS classes or id's are found without an HTML tag,
          Mithril converts the parameter into a \'div\' tag and appends the class or id.
          The .page class is an example of this.
          Compare the first line of the view function
          to the resulting HTML in the Elements panel.
          Look for <div class=\"page\">."),
        m("p", "The last parameter of the m() function
          is the inner part of the HTML tag.
          As with HTML, this can be text or more HTML.
          In Mithril, more HTML means more m() calls. When the tag
          needs to contain more than one string or one call to m(),
          the parameter must be an array with any combination of those things.
          In app.coffee, (div).page and (div).container and the unordered list
          \"ul\" each contain arrays."),
        m("hr"),
        m("ul", [
          m("li", "Read the comments in app.coffee."),
          m("li", "Study the code. It should all make sense to you."),
          m("li", "Notice that m(\"hr\") and m(\"br\") require no further parameters."),
        ]),
        m("hr"),
        m("h2.title", "Next Lesson: Enhancing the View"),
        m("li", "In the terminal, stop the tutorial with CTRL-c or COMMAND-c."),
        m("li", "Load the next lesson with:"),        
        m("code", "$ git co CJS-Lesson2"),
        m("li", "Restart the tutorial with:"),        
        m("code", "$ npm start tutorial")
      ])
    ])
}

# We mount (inject) Page into to the body tag of the document.
# Anything that might have been there before will be replaced.

m.mount(document.body, Page)

