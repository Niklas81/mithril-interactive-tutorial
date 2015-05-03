# This is the entry point into our app.
# Page will fill up the entire body of our app.
# Since a component need only be an object with a view function,
# Page qualifies as a component.

Page = {
  view: ()->
    return m(".page", [
      m("h1.title", "Mithril Interactive Tutorial"),
      m("h2.subtitle", "A step-by-step intoduction to the Mithril MVC framework"),
      m(".content", [
        m("h3.about", "About Mithril"),
        m("p", [
          "If you wish to know what Mithril is all about,
          why you should be using it, and where to find out more,
          everything you need is on the ",
          m("a[href=http://mithril.js.org]", "Mithril home page.")
        ]),
        m("p", [
          "This tutorial is located on Github. If you have not read the README file, ",
          m("a[href=https://github.com/pelonpelon/mithril_tutoral]", "go there now before continuing")
        ]),
        m("h3.requirements", "Requirements"),
        m("p",
          "This tutrial assumes that you are familiar with HTML and CSS,
          and have a working knowlege of javascript.
          You will need to use the Google Chrome browser
          and know how to open Chrome DevTools. The live editing aspect
          of this tutorial is not yet available in Firefox or Safari
          developer tools."
        ),
        m("h3.setup", "setup"),
        m("ul", [
          m("li", "Open DevTools."),
          m("li", "Move the DevTools window to the right of the browser window."),
          m("li", "Click on the Sources tab."),
          m("li", "Open DevTool\'s Settings, choose Workspace, then Add folder..."),
          m("li", "Find the src folder of this tutorial and click Select."),
          m("p", "You should now see the src folder at the bottom 
            of the Sources file browser. Open app.coffee inside the src folder.
            In the editor panel on the right, you should see the Mithril file that produces this page."
          )
        ]),
        m("p", "Let\'s check that everything is working.
          The title of this section should be capitalized.
          In the editor panel, change \"setup\" to \"Setup\" and save with CTRL-S or COMMAND-S.
          Soon the browser window should reflect the change."
        ),
        m("h2", "Next Step:"),
        m("p", m.trust("In your terminal, type CTRL-C to stop Browserfy.
          Then enter<br /><br />
          $ git co tutorial/coffee-jade-stylus/Lesson2<br /><br />
          Now restart the tutorial with<br /><br />
          $ npm run tutorial.<br /><br />
          A new browser tab should open up. You'll need to open
          DevTools again with CTRL-i or COMMAND-i. You may want to close the tab
          from the previous lesson to avoid confusion.")
        )
      ])
    ])
}

# We mount (inject) Page into to the body tag of the document.
# Anything that might have been there before will be replaced.

m.mount(document.body, Page)
