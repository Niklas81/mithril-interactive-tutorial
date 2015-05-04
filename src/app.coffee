# Mithril Interactive Tutorial - Introduction
#
# This is the entry point into our app.
# Page will fill up the entire body of the app.
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
          "This tutorial is located on Github.
          If you have not read the README file, ",
          m("a[href=https://github.com/pelonpelon/mithril_tutoral]",
            "go there now before continuing")
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
          m("li", [
            "Open DevTools:",
            m("p", "linux: ⌃⌥–i"),
            m("p", "osx: ⌘⌥–i")
          ]),
          m("li", "Move the DevTools window to the right of the browser window
            by clicking the window icon in the upper right toolbar. "),
          m("p", m("img[src=assets/MIT-toolbar.png]")),
          m("li", "Open the Sources tab."),
          m("p", m("img[src=assets/MIT-panels.png]")),
          m("li", m("p", [
               "Open DevTool\'s Settings: ",
                m("img[src=assets/MIT-settings.png]")
              ])
          ),
          m("li", "Workspace -> Add folder..."),
          m("li", "Find the src folder of this tutorial and click Select."),
          m("br"),
          m("img[src=assets/MIT-full_page-400.png]"),
          m("p", "You should now see the src folder at the bottom 
            of the Sources file browser in DevTools.
            Open app.coffee inside the src folder.
            In the editor panel on the right,
            you should see the Mithril file that produces this page."
          )
        ]),
        m("hr"),

        m("p", "Let\'s check that everything is working.
          The title of the next section should be capitalized.
          In the editor panel, change \"next\" to \"Next\"
          and \"steps\" to \"Steps\".
          Save with CTRL-S or COMMAND-S.
          The changes are saved to disk and
          soon the browser window should reflect the change."
        ),

        m("h2", "next steps:"),
        m("ul", [
          m("li", m("p", "In your terminal, type CTRL-C to stop the tutorial.")),
          m("li", [
            "Load the first lesson by entering:",
            m("p", m("code", "$ git co CJS-Lesson1"))
          ]),
          m("li", [
            "Restart the tutorial by entering:",
            m("p", m("code", "$ npm run tutorial"))
          ])
        ])
      ])
    ])
}

# We mount (inject) Page into to the body tag of the document.
# Anything that might have been there before will be replaced.

m.mount(document.body, Page)

