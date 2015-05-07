# Mithril can be loaded with a script tag in the header of the page,
# or we can include it with "require".

m = require 'mithril'

# Components are self contained objects with a view.

#### It's a common error to create a component whose view
#### returns an array of virtual elements.
#### The view property of a component must return a virtual element,
#### the result of a call to m().

# m.component() can be called anywhere m() can.

App = {
  view: () ->

# This view is returning a virtual element with one child element:
# an array of components.

    return m(".page", [
      m.component(Logo), 
      m.component(Header),
      m.component(Content),
      m.component(Footer)
    ])
}

Logo = {
  view: () ->

    # These anchor tags include the "href"" attribute inside square brackets.
    # Alternatively, The "href" could have been a member of the attributes
    # object, as "target" is here.
             
    return m(".logo", [
      m("a[href=https://github.com/pelonpelon/mithril-interactive-tutorial]",
        { target: "_blank" },
        m("span.mit", "M.I.T.")
      ),

      m("a[href=http://mithril.js.org]",
        { target: "_blank" }, 
        [
          m("span.icon", "○"), 
          m("span.mithril", "Mithril")
        ]
      )
    ])
}

Header = {
  view: () ->

# In the second argument to m(), the object contains the attribute "title".
# In the browser window this results in:
# <div class="header" title="Wheat is an official CSS color name">...</div>
# The third argument, an array, contains everything that ... represents,
# including nested strings, virtual elements: m(),
# and other components: m.component().    

    return m(".header", { title: "Wheat is an official CSS color name" },[
      m("h1.title", "Lesson 2"),
      m("h2.subtitle", "Enhancing the View")
    ])
}

# Content is a long and complicated view template. In the next lesson
# We'll move it to its own file, and "require" it back into app.coffee.

Content = {
  view: () ->
    return m(".content", [
      m("p", "So far our app has looked very 1990s. Mithril view templates
        are not a limitation to the presentation layer but an enhancement.
        In this lesson we'll see that every aspect of HTML and CSS
        is available in the view, and in the next lesson we'll learn
        to move variable data in and out of the view."),
      m("h3", "First, a little style"),
      m(".dothis", "open src/index.jade in DevTools"),
      m("p", m.trust("We've given our app a modern look by adding a link to
        the <a href='http://getbootstrap.com/' target='_blank'>Bootstrap</a>
        CSS library in the header tag of
        <code class='file'>src/index.jade</code>.")),
      m("p", m.trust("At the top of this page, we try to duplicate
        the <strong>Mithril</strong> logo
        from the home page, which is not an image, but some fancy CSS.
        So we've added our own stylesheet to the header:
        <code class='file'>src/styles/main.styl</code>.
        We will learn how to add styles with javascript in a later lesson.")),
      m("a.docs-icon", {href:"http://mithril.js.org/mithril.html", target:"_blank"}),
      m("h3", "View Template Attributes"),
      m(".dothis", "open src/app.coffee"),
      m("p", m.trust("The method <code>m(\"tag\", { attributes }, children)</code>
        produces virtual elements, which are later rendered to the
        browser as HTML. Standard HTML attributes can be appended to the tag
        inside square brackets:<br />
        <code>m(\"a[href=http://mithril.js.org]\", {}, \"Mithril Home Page\")
        </code> ")),
      m(".dothis", "See how the href attributes are appended to the anchor
        tags in the logo. Find the resulting HTML under the Elements tab."),
      m("p", m.trust("Alternatively, HTML attributes can be added to the 
        attributes object. In our code, the attributes object in the
        Header component view has an HTML <strong>title</strong> attribute.
        There are some special Mithril attributes
        that can be used in the attributes object, as well.
        We'll cover these later.")),
      m(".dothis", m.trust("Hover over the wheat colored header
        at the top of this page and a tool-tip should pop up. See how this is
        accomplished in the code.")),
      m("h3", "View Template Children"),
      m("p", m.trust("The last parameter of the <code>m()</code> method,
        children of the \"tag\" parameter, can be any combination of nested
        strings and calls to <code>m.component()</code> and <code>m()</code>.")),
      m("a.docs-icon", {href:"http://mithril.js.org/mithril.trust.html", target:"_blank"}),
      m("h3", "m.trust()"),

# If for some reason you can't use m.trust() to insert
# tabs, spaces and line-endings, you can always try
# the CSS style property "white-space:pre".
# It allows for [\n] [\t] and [\ ]

      m("p[style='white-space:pre']", "
        \ So far, we've only put strings in our views.\n
        Adding any kind of HTML results in raw HTML\n
        to be printed, verbatim:\n
        <h1>Hello World</h1>\n
        We've had to rely on a seprate call to m() every time we've needed\n
        a new HTML tag. Mithril provides the m.trust() helper method\n
        to allow for more familiar HTML coding."),
      m("strong", "☞ In the editor panel, notice we use m.trust()
        wherever we require HTML tags within the text. We do not use it in
        this section. "),
      m("br"),
      m("br"),      
      m("p", "In the next lesson we'll learn to use variables\n 
        in our views. m.trust() doesn't understand variables.")
      m("hr"),
      m("h3", "Refactoring Components"),
      m("p", "In the next lesson, we will refactor App,
        putting the nested components, Logo, Header, Content, and Footer,
        each in their own files."),
      m(".dothis", m.trust("Notice in the code editor, we've
        already done some of the work by factoring out our components
        into separate objects on the page. ")),
    ])
}

Footer = {
  view: () ->
    return m(".footer", [
      m("h2.title", "Next: Passing Data to the View"),
      m("ul.setup", [
        m("li", m.trust("In the terminal, stop the tutorial with
          <code>CTRL-C</code> or <code>CMD-C</code>")),
        m("li", m.trust("Enter <code>$ git co CJS-Lesson3</code>")),
        m("li", m.trust("Restart the tutorial with 
          <code>$ npm run tutorial</code>"))
      ])
    ])
}

m.mount(document.body, App)
