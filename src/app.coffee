# Page is a component containing nested components.
# m.component() can be called anywhere m() can.
# We want to be able to customize the header and footer,
# but we want the logo to remain the same.
# So we don't make a component out of the logo, we hard code it into Page.

Page = {
  view: () ->
    return [ m(".logo", [m("span", "○"), "Mithril"]),
      m(".container", [
        m.component(Header),
        m.component(Content),
        m.component(Footer)
      ])
    ]
}

# In the second argument to m(), the object contains the attribute "title".
# This is the equivalent to:
# <div class="header" title="This is the header">...</div>
# The third argument, an array, contains everything that ... represents.  

Header = {
  view: () ->
    return m(".header", { title: "This is the header" },[
      m("h1.title", "Lesson 2"),
      m("h2.subtitle", "Enhancing the View")
    ])
}

Content = {
  view: () ->
    return m(".content", [
      m("h3", "First, a little style"),
      m("p", m.trust("We've given our app a modern look by adding a link to the
        <a href='http://getbootstrap.com/'>Bootstrap</a> CSS library
        in the header tag of <code>index.jade</code>.
        At the top of this page, we try to duplicate
        the <strong>Mithril</strong> logo
        from the home page, which is not an image, but some fancy CSS.
        So we've added a second link to our own styles:
        <code>styles/main.styl</code>.
        We will learn how to add styles with javascript in a later lesson.")),
      m("h3", "View Template Attributes"),
      m("p", m.trust("The <code>m()</code> function optionally
        takes a second argument:
        an object that contains attributes that can affect
        the resulting HTML. In the Header component
        we use the HTML <strong>title</strong> attribute.
        Hover over the word <strong>Lesson</strong> at the top of this page
        and a tool-tip should pop up. We'll learn about other types
        of attributes in later lessons. ")),
      m("h3", "m.trust()"),
      m("p", "So far, we've only put strings in our views. Adding any kind of
        HTML results in raw HTML to be printed, verbatim:
        <h1>Hello World</h1>.
        Mithril provides the m.trust() function,
        which allows for raw HTML to be coded into the view,
        yet it prints out
        as we expect. In the editor panel, notice the HTML code
        used in the first paragraph of the view.
        This would not be possible without m.trust().
        In the next lesson we'll learn to use variables 
        in our views. m.trust() doesn't understand variables.")
      m("hr"),
      m("h3", "Refactoring Components"),
      m("p", "In the next lesson, we will refactor our Page component,
        putting the nested components, Header, Content, and Footer,
        each in their own files. Notice in the code editor, we've
        already done some of the work by factoring out each component
        into separate objects on the page. "),
    ])
}

Footer = {
  view: () ->
    return m(".footer", [
      m("hr"),
      m("h2.title", "Next Lesson: The Controller"),
      m("ul.setup", [
        m("li", m.trust("In the terminal, stop the tutorial with
          <code>CTRL-c</code> or <code>COMMAND-c</code>.")),
        m("li", m.trust("Enter <code>$ git co CJS-Lesson3</code>.")),
        m("li", m.trust("Restart the tutorial with <code>$ npm run tutorial</code>"))
      ])
    ])
}


m.mount(document.body, Page)
