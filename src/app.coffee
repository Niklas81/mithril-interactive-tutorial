# M.I.T. - Lesson 2 -- Enhancing the View

m = require 'mithril'

# Components are self contained objects with, at minimum, a view.

App = {
  view: () ->

# This view is returning a virtual element <div class="page"></div> 
# with one child element: an array of components.

    return m(".page", [
      Logo, 
      Header,
      Content,
      Footer
    ])
}

# In the next lesson we'll put the following components
# each in their own file.

# Logo Component
Logo = {
  view: () ->

    # These anchor tags include the "href"" attribute inside square brackets.
    # Alternatively, The "href" could have been a member of the attributes
    # object. Notice the different "target" attributes.
             
    return m(".logo[href=http://mithril.js.org]", [
      m("a.mit
        [href=https://github.com/pelonpelon/mithril-interactive-tutorial/tree/cs-lesson2]
        [target=_blank]",
        "M.I.T."),
      m("a.mithril[href=http://mithril.js.org]", {target: "_blank"}, "Mithril"),
      m(".icon", "○")
    ])
}

# Header Component
Header = {
  view: () ->

# In the second argument to m(), the attribute object
# contains the property: title.
# In the browser DOM this results in:
# <div class="header" title="Wheat is an official CSS color name"> ... </div>
# The third argument, an array, contains everything that ... represents
# including strings, virtual elements: m(), and components.    

    return m(".header", {title: "Wheat is an official CSS color name"}, [
      m("h1.title", "Lesson 2"),
      m("h2.subtitle", "Enhancing the View")
    ])
}

# Content is a long and complicated view template. In the next lesson
# We'll move it to its own file, and "require" it back into app.coffee.

# Content Component
Content = {
  view: () ->
    return m(".content", [
      m("p", "Mithril view templates
        are not a limitation to the presentation layer but an enhancement.
        In this lesson we'll see that every aspect of HTML and CSS
        is available in the view, and in the next lesson we'll learn
        to move variable data in and out of the view."),
      
      m("h3", "First, a little style"),
      m(".dothis", "open src/index.html in DevTools"),
      m("p", m.trust("We've given our app a modern look by including
        the <a href='http://getbootstrap.com/' target='_blank'>Bootstrap</a>
        CSS library in the header tag of
        <code class='file'>index.html</code>.")),
      m("p", m.trust("At the top of this page, we try to duplicate
        the <strong>Mithril</strong> logo
        from the home page, which is not an image, but some fancy CSS.
        So we've added our own stylesheet to the header:
        <code class='file'>styles/main.styl</code>.
        We will learn how to add styles with javascript in a later lesson.")),
      m("a.docs-icon[href=http://mithril.js.org/mithril.html][target=_blank]"),
      
      m("h3", "View Template Attributes"),
      m(".dothis", "open src/app.coffee"),
      m("p", m.trust("Admittedly, the view templates in
        <code class='file'>app.coffee</code> are ugly and hard to read.
        The usual case is to build an app that is data driven with
        only intermittent text. This tutorial
        is much like a text-heavy website. There are several
        <a href=https://github.com/lhorie/mithril.js/wiki/Community-Projects#templating
        target=_about>alternative methods</a> for introducing text into
        your app. 
        We'll choose to inject raw HTML into our app in the next lesson.")),
      m("p", m.trust("The method <code>m(\"tag\", { attributes }, children)</code>
        produces virtual elements, which are later rendered to the
        browser as HTML. Standard HTML attributes can be appended to the tag
        inside square brackets:<br />
        <code>m(\"a[href=/home.html][title=Home Page]\", {}, \"Home\")
        </code> ")),
      m(".dothis", "See how the href attributes are appended to the anchor
        tags in the Logo component.
        Find the resulting HTML under the Elements tab."),
      m("p", m.trust("<code>m()</code> accepts a
        second argument called the attributes object whose properies are
        special Mithril attributes. We'll cover these in later lessons.
        HTML attributes can optionally be placed in this object.")),
      m(".dothis", { title: "You're hovering over me. Back off!" },
        m.trust("Hover over this block of text
          and a tool-tip should pop up. See how this is
          accomplished in the code.")),
      
      m("h3", "View Template Children"),
      m("p", m.trust("The last parameter of the <code>m()</code> function
        renders as children of the \"tag\" parameter. If there are
        multiple children they should be contained in an array.
        Children can be any combination of
        strings, <code>m()</code> calls, and components,
        nested as deeply as required.")),
      m("a.docs-icon
        [href=http://mithril.js.org/mithril.trust.html]
        [target=_blank]"),
      
      m("h3", "m.trust()"),

# If for some reason you can't use m.trust() to insert
# tabs, spaces and line-endings, you can always try
# the CSS style property "white-space:pre".
# It allows for [\n] [\t] and [\ ]

      m("p[style='white-space:pre']", [
        "So far, we've only put strings in our views.\n
        Raw HTML will be being printed verbatim:\n
        <h1>Hello World</h1>\n
        We've had to rely on a seprate call to ",
        m("code", "m()"),
        " every time we've needed\n
        a new HTML tag. Mithril provides the ",
        m("code", "m.trust()"),
        " helper method\n
        to allow for more familiar HTML coding.\n
        Everything in the argument to m.trust will be copied\n
        exacltly into the html code of the browser page."
      ]),

      m(".dothis", "In the Content component notice we use m.trust()
        wherever we require HTML tags within the text. It was not used
        in this section."),
      m("p", m.trust("<code>m.trust()</code> is only good
        for static HTML. In the next lesson
        we'll learn to use variables\n 
        in our views. m.trust doesn't understand variables.")),
      m("p.error", "Using m.trust makes your code vulnerable to attack.
        Malicious code can be injected
        into its argument. If there is the possiblity that
        an unknown third party
        will have access to your code, don't use m.trust.")
      m("hr"),
      
      m("h3", "Refactoring Components"),
      m("p", "In the next lesson, we will refactor App,
        putting the nested components, Logo, Header, Content, and Footer,
        each in their own files."),
      m(".dothis", m.trust("Notice in <code class=file>app.coffee</code>
        we've already done some of the work by factoring out our components
        into separate objects on the page.")),
      m(".dothis", [
        "Don't forget to read the comments."
      ])
    ])
}

# Footer Component
Footer = {
  view: () ->
    return m(".footer", [
      m("h2", "Next: Passing Data to the View"),
      m("ul", [
        m("li", m.trust("In the terminal, stop the tutorial with
          <code>CTRL-C</code> or <code>CMD-C</code>")),
        m("li", m.trust("If you edited the code, reset with: <code>git stash")),
        m("li", m.trust("Enter <code>git checkout cs-lesson3</code>")),
        m("li", m.trust("Restart the tutorial with 
          <code>npm run tutorial</code>"))
      ])
    ])
}

m.mount(document.body, App)
