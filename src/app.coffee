# M.I.T. - Mithril Interactive Tutorial - Introduction
#
# This file is the entry point into our app.
# The App will fill up the entire body tag.

m = require "mithril"

# We add Mithril to the global scope so that you can type 'm.'
# in the console and experiment with the Mithril API.
# It has nothing to do with the functioning of the app and can be deleted.
# Open the console (ESC) and try it out.
window.m = m

App = {
  view: ()->
    return m(".page", [

      m(".logo[href=http://mithril.js.org]", [
        m("a.mit[href=https://github.com/pelonpelon/mithril-interactive-tutorial][target=_blank]", "M.I.T."),
        m("a.mithril[href=http://mithril.js.org][target=_blank]", "Mithril"),
        m(".icon", "○")
      ]),
      m(".header", [
        m("h1.title", "Mithril Interactive Tutorial"),
        m("h2.subtitle", "Introduction"),
      ]),

      m(".content", [
        m("h3.about", "About Mithril"),
        m("p", [
          m("a.docs-icon[href=http://mithril.js.org][target=_blank]"),
          "If you wish to know what Mithril is all about,
          why you should be using it, and where to get help,
          everything you need is on the Mithril Home Page. Don't ignore the ",
          m("a[href=https://github.com/lhorie/mithril.js/wiki][target=_blank]", "wiki"),
          ", there\'s a lot of community wisdom there."
        ]),
        m("p", [
          "This tutorial is located on Github.
          If you have not read the README file, ",
          m("a[href=https://github.com/pelonpelon/mithril_tutorial]",
            "go there now before continuing.")
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
          m("p", "You eventually want your window to look like the image below. The
          tutorial is only 480px wide, so stretch
          the DevTools window to get the best view of the editor.
          The ESC key toggles the console. Other shortcuts are found in Settings."),
          m("p", m("img[src=assets/MIT-full_page-400.png]")),
          m("li", "Open the Sources tab."),
          m("p.mit-panels", m("img[src=assets/MIT-panels.png]")),
          m("li", m("p", [
               "Open DevTool\'s Settings: ",
                m("img[src=assets/MIT-settings.png]")
              ])
          ),
          m("li", "Workspace -> Add folder..."),
          m("li", "Find the src folder of this tutorial, Select, and close Settings.")
        ]),
        m("p", [
          "You should now see the src folder at the bottom 
          of the Sources file browser in DevTools.
          Open ",
          m("code.file", "app.coffee"),
          " inside the src folder.
          In the editor panel on the right,
          you will see the Mithril file that produces this page. Although
          it contains perfectly good Mithril code, your apps will look
          quite different."
        ]),
        m("p", [
          "Every lesson in this tutorial contains an assets folder
          for images, static HTML, and data files, as well as a styles folder for
          CSS. The ",
          m("code.file", "index.html"),
          " file loads JS and CSS. The ",
          m("code.file", "app.coffee"),
          " file requires other script files and contains its own code. The src
          directory constitutes a fully functioning Mithril app. It could be used
          as a boilerplate for creating your own basic app. But don't do that.
          Not yet." 
        ]),
        m("hr"),
        m("p", "Let\'s check that everything is working.
          The title of the next section should be capitalized.
          In the editor tab labeled \"app.coffee\", change \"key\" to \"Key\".
          With the blinking cursor still in the editor,
          save with CTRL-S or CMD-S.
          The changes are saved to disk and
          soon the browser window should reflect the change."
        ),

        m("h3.key", "key"),
        m("ul", [
          m("li", [
            m(".dothis", "Indicates something in the code you should
            be paying attention to."),
          ]),
          m("li", [
            m("a.docs-icon"),
            m("span", "Links to the official documentation")
          ]),
          m("li", [
            m("span", "Links to isolated examples"),
            m("a.ex"),
            m("span", "of basic Mithril concepts")
          ]),
          m("li", [
            m("span.error", "Common developer errors"),
          ])
        ])
        ])
        
      m(".footer", [
        m("h2", "Next Steps:"),
        m("ul", [
          m("li", [
            m("p", [
              "Read the comments in ",
              m("code.file", "src/index.html"),
              " and ",
              m("code.file", "src/app.coffee"),
              ". In each lesson the comments change,
              so don't miss the opportunity to read these now.
              The comments are an integral part of the tutorial.
              They contain important information."
            ]),
            m("h4.error", "Close all open file tabs in the editor at the end of each lesson,
              to avoid mistaking files from the previous lesson.")
          ]),
          m("li", m("p", "In your terminal,
            type CTRL-C to stop the tutorial.")),
          m("li", [
            "Reset this introduction to its original state:",
            m("p", m("code", "$ git stash"))
          ]),
          m("li", [
            "Load the first lesson by entering:",
            m("p", m("code", "$ git co cs-lesson1"))
          ]),
          m("li", [
            "Restart the tutorial by entering:",
            m("p", m("code", "$ npm run tutorial"))
          ])
        ])
      ])
    ])
}

# We mount (inject) App into the body tag of the document.
# Anything that might have been there before will be replaced.

m.mount(document.body, App)

