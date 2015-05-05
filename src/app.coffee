# Page is a not component although it is an object
# with a view. A component view cannot return an Array.
# It must return a virtual element: the result of a call to m().

# m.component() can be called anywhere m() can.
# We want to be able to customize the header and footer,
# but we want the logo to remain the same.
# For now, we don't make a component out of the logo,
# we hard code it into Page.

Page = {
  view: () ->
    return [
      m.component(Logo), 
      m(".container", [
        m.component(Header),
        m.component(Content),
        m.component(Footer)
      ])
    ]
}

Logo = {
  view: () ->

    # This anchor tag includes the href attribute inside square brackets
        
    return m("a.mithril[href=http://mithril.js.org]",
      m(".logo", [
        m("span", "○"), 
        "Mithril"
      ])
    )
}

Header = {
  view: () ->

# In the second argument to m(), the object contains the attribute "title".
# In the browser window this results in:
# <div class="header" title="This is the header">...</div>
# The third argument, an array, contains everything that ... represents,
# including nested strings and calls to m().   

    return m(".header", { title: "This is the header" },[
      m("h1.title", "Lesson 2"),
      m("h2.subtitle", "Enhancing the View")
    ])
}

Content = {
  view: () ->
    return m(".content", [
      m("p", "what you are about to read... "),
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
      m("p", m.trust("HTML attributes can be appended to the tag
        inside square brackets.")),
      m(".dothis", "See how the href attribute is appended to the anchor tag
        in the logo. Find the resulting HTML under the Elements tab."),
      m("p", m.trust("<br>There is an alternative that, in addition to
        accepting HTML attributes, makes use of some
        special Mithril attributes as well. They'll be covered in later lessons.")),
      m("p", m.trust("The <code>m()</code> function optionally
        takes a second argument:
        an object that contains attributes that can affect
        the resulting HTML. In the Header component
        we've' used the HTML <strong>title</strong> attribute.<br>")),
      m(".dothis", m.trust("Hover over the word <strong>Lesson</strong>
        at the top of this page
        and a tool-tip should pop up. We'll learn about other types
        of attributes in later lessons. ")),
      m("h3", "m.trust()"),

# If for some reason you can't use m.trust() to insert
# tabs, spaces and line-endings, you can always try
# the CSS property "white-space:pre"

      m("p[style='white-space:pre']", "
        \ So far, we've only put strings in our views.\n
        Adding any kind of HTML results in raw HTML\n
        to be printed, verbatim:\n
        <h1>Hello World</h1>\n
        Mithril provides the m.trust() function,\n
        which allows for raw HTML to be coded into the view,\n
        yet it prints out what we expect.\n
        In the editor panel, notice the HTML code\n
        used in the first paragraph of the view.\n
        This would not be possible without m.trust().\n
        In the next lesson we'll learn to use variables\n 
        in our views. m.trust() doesn't understand variables.")
      m("hr"),
      m("h3", "Refactoring Components"),
      m("p", "In the next lesson, we will refactor our Page component,
        putting the nested components, Logo, Header, Content, and Footer,
        each in their own files. Notice in the code editor, we've
        already done some of the work by factoring out our components
        into separate objects on the page. "),
    ])
}

Footer = {
  view: () ->
    return m(".footer", [
      m("hr"),
      m("h2.title", "Next: Passing Data to the View"),
      m("ul.setup", [
        m("li", m.trust("In the terminal, stop the tutorial with
          <code>CTRL-c</code> or <code>COMMAND-c</code>.")),
        m("li", m.trust("Enter <code>$ git co CJS-Lesson3</code>.")),
        m("li", m.trust("Restart the tutorial with <code>$ npm run tutorial</code>"))
      ])
    ])
}


m.mount(document.body, Page)
