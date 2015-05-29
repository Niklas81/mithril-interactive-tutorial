# M.I.T. - Mithril Interactive Tutorial - Introduction
#
# This is the entry point into our app.
# The App will fill up the entire body tag.

m = require "mithril"

App = {
  view: ()->
    return m(".page", [

      m(".header", [
        m("h1.title", "Mithril Interactive Tutorial"),
        m("h2.subtitle", "Introduction"),
      ]),

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
          "This tutorial assumes that you are familiar with HTML and CSS,
          and have a working knowlege of javascript.
          You will need to use the Google Chrome browser
          and know how to open Chrome DevTools. The live editing aspect
          of this tutorial is not yet available in Firefox or Safari
          developer tools."
        ),
        m("h3.setup", "Setup"),
        m("ul", [
          m("li", [
            "Open DevTools:",
            m("p", "linux: ⌃⌥ + I"),
            m("p", "osx: ⌘⌥ + I")
          ]),
          m("li", "Embed the DevTools window to the right of the browser window
            by clicking/CTRL-clicking the window icon to the far right in the 
            DevTools toolbar."),
          m("p", m("img[src=assets/MIT-toolbar.png]")),
          m("p", "You eventually want your windows to look like this. Stretch
          the DevTools window wide to get the best view of the editor.
          The ESC key toggles the console. Other shortcuts are found in Settings."),
          m("p", m("img[src=assets/MIT-full_page-400.png]")),
          m("li", "Open the Sources tab."),
          m("p", m("img[src=assets/MIT-panels.png]")),
          m("li", m("p", [
               "Open DevTool\'s Settings: ",
                m("img[src=assets/MIT-settings.png]")
              ])
          ),
          m("li", "Workspace -> Add folder..."),
          m("li", "Find the src folder of this tutorial, Select, and close Settings."),
          m("br"),
          m("p", "You should now see the src folder at the bottom 
            of the Sources file browser to the left in DevTools.
            Open app.coffee inside the src folder.
            In the editor panel on the right,
            you should see the Mithril file that produces this page. Although
            it contains perfectly good Mithril code, your apps will look
            quite different."
          )
        ]),
        m("hr"),
        m("p", "Let\'s check that everything is working.
          The title of the next section should be capitalized.
          In the editor panel, change \"next\" to \"Next\"
          and \"steps\" to \"Steps\".
          With the blinking cursor still in the editor panel,
          save with CTRL-S or CMD-S.
          The changes are saved to disk and
          soon the browser window should reflect the change."
        ),
        
        m(".footer", [
          m("h2", "next steps:"),
          m("ul", [
            m("li", m("p", "Read the comments in src/index.index and
              src/app.coffee. In each lesson the comments change,
              so don't miss the opportunity to read these now.
              The comments are an integral part of the tutorial.
              They contain important information")),
            m("h4", "Close all open file tabs in the editor at the end of each lesson,
            to avoid mistaking files from the previous lesson."),
            m("li", m("p", "In your terminal,
              type CTRL-C to stop the tutorial.")),
            m("li", [
              "Load the first lesson by entering:",
              m("p", m("code", "$ git co cs-lesson1"))
            ]),
            m("li", [
              "Restart the tutorial by entering:",
              m("p", m("code", "$ npm run tutorial"))
            ])
          ])
        ]),
      ])
    ])
}

# We mount (inject) App into to the body tag of the document.
# Anything that might have been there before will be replaced.

m.mount(document.body, App)

